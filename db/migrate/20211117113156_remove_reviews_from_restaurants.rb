class RemoveReviewsFromRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_reference :restaurants, :review
  end
end
