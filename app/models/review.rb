class Review < ApplicationRecord
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true
end
#このバリデーションがあることで、星の評価を1〜5段階で設定し、カラムに保存できるようになる