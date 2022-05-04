class ChangeDataScreeningTimeToMovies < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, :screening_time, :integer
    change_column :movies, :synposis, :text
    change_column :movies, :review , :text
  end
end
