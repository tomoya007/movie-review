class Review < ApplicationRecord
  validates :raty, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true
  #このバリデーションがあることで、星の評価を1〜5段階で設定し、カラムに保存できるようになる

  belongs_to :user  #Review.userでコメントの所有者を取得
  belongs_to :movie  #Review.movieでそのコメントがされた投稿を取得
end
