class CreateMovielists < ActiveRecord::Migration[6.0]
  def change
    create_table :movielists do |t|
      t.string   :listname
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
