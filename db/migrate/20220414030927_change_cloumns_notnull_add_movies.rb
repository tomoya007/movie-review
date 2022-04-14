class ChangeCloumnsNotnullAddMovies < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, :title, :string, null: false
    change_column :movies, :image, :string, null: false
    change_column :movies, :released_year, :string, null: false
    change_column :movies, :country, :string, null: false
    change_column :movies, :screening_time, :string, null: false
    change_column :movies, :synposis, :string, null: false
  end
end


