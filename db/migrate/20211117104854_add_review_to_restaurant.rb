class AddReviewToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_reference :restaurants, :review, null: false, foreign_key: true
  end
end
