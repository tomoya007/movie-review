class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }

  mount_uploader :avatar, AvatarUploader
  has_one_attached :avatar
  
  has_many :reviews  
  has_many :comments 

  has_many :movielists, dependent: :destroy

  has_many :relationships
  has_many :followings, through: :relationships, source: :follow
  has_many :reverses_of_relationship, class_name: 'Relationship', foreign_key: 'follow_id'
  has_many :followers, through: :reverses_of_relationship, source: :user

  def follow(other_user)
    unless self == other_user
      self.relationships.find_or_create_by(follow_id: other_user.id)
    end
  end

  def unfollow(other_user)
    relationship = self.relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship
  end

  def following?(other_user)
    self.followings.include?(other_user)
  end

  def feed
    following_ids = "SELECT followed_id FROM relationships
                    WHERE  follower_id = :user_id"
    movielists_ids = "SELECT movielist_id FROM movielists
                    WHERE user_id IN (#{following_ids}) OR user_id = :user_id"
    feed_items = []
    Comment.where("user_id IN (#{following_ids}) OR user_id = :user_id", user_id: id).each do |comment|
      feed_items << comment
    end
    ListMovie.where("movielist_id IN (#{movielists_ids})", user_id: id).each do |movie|
      feed_items << movie
    end
    # puts feed_items
    feed_items.sort_by!{ |a| a["created_at"] }.reverse!
  end

  def self.my_watched(other_user_list_id, current_user_id)
    current_user_movielist = User.find(current_user_id).movielists.find_by(listname: "watched")
    other_user_list = ListMovie.where(movielist_id: other_user_list_id)
    my_watched = Array.new
    other_user_list.each do |movie|
      if ListMovie.exists?(movielist_id: current_user_movielist.id, movie_id: movie.movie_id)
        my_watched << movie
      end
    end
    my_watched
  end

  # compare given user's given list with current user's watched list to get current user's unwatched list
  def self.my_unwatched(other_user_list_id, current_user_id)
    current_user_movielist = User.find(current_user_id).movielists.find_by(listname: "watched")
    other_user_list = ListMovie.where(movielist_id: other_user_list_id)
    my_unwatched = Array.new
    other_user_list.each do |movie|
      unless ListMovie.exists?(movielist_id: current_user_movielist.id, movie_id: movie.movie_id)
        my_unwatched << movie
      end
    end
    my_unwatched
  end
end