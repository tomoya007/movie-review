class AddRateToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :rate, :float, null: false, default: 0
  end
end
