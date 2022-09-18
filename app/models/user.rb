class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }

  mount_uploader :avatar, AvatarUploader
  has_one_attached :avatar
  
  has_many :reviews  #User.reviewsで、ユーザーの所有するコメントを取得できる

  has_many :relationships # 自分がフォローしているUserへの参照
  has_many :followings, through: :relationships, source: :follow
  has_many :reverses_of_relationship, class_name: 'Relationship', foreign_key: 'follow_id' # reverses_of_relationship は自分をフォローしているUserへの参照。１行目の逆 user.followingsというメソッドを用いると、自分がフォローしているUser達を取得することが可能になる。
  has_many :followers, through: :reverses_of_relationship, source: :user # reverses_of_relationship は自分をフォローしているUserへの参照。３行目の逆 user.followers によって、「自分をフォローしているUser達」を取得できます。

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
end
