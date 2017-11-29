class RemoveReviewsFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :reviews, :text
  end
end
