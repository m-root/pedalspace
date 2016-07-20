class ChangeAvgRatingToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :avg_rating, :float
  end
end
