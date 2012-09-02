class AddDiscountPriceAndSpotCheckRatingToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :discount_price, :float
    add_column :jobs, :rating_superviser, :integer
    rename_column :jobs, :rating, :rating_client
  end
end
