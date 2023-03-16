class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }

  mount_uploader :avatar, AvatarUploader
  has_one_attached :avatar

  # mount_uploader :image, ImageUploader
  # has_one_attached :image

  has_many :movielists, dependent: :destroy

  has_many :comments, dependent: :destroy
  has_many :movies, through: :comments

  has_many :likes, dependent: :destroy
  has_many :liked_comments, through: :likes, source: :comment

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
    feed_items.sort_by!{ |a| a["created_at"] }.reverse!
  end

  def self.search(term)
    User.where(['username LIKE ?', "%#{term}%"])
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

  def already_liked?(comment)
    self.likes.exists?(comment_id: comment)
  end

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.name = "ゲスト"
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
      # 例えば name を入力必須としているならば， user.name = "ゲスト" なども必要
    end
  end
end