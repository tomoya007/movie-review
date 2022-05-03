class ChangeDataReleasedYearToMovies < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, :released_year, :integer
  end
end
