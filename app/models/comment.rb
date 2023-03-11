class Comment < ApplicationRecord
  # belongs_to :user
  # belongs_to :movie

  # has_many :likes, dependent: :destroy
  # has_many :liked_users, through: :likes, source: :user

  # validates :content, presence: true, length: { maximum: 250 }

  
  validates :raty, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true
  #このバリデーションがあることで、星の評価を1〜5段階で設定し、カラムに保存できるようになる
  belongs_to :user  
  belongs_to :movie
end
