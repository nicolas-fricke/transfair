class RenameDiscountPriceToSpecialPriceInJobs < ActiveRecord::Migration
  def change
    rename_column :jobs, :discount_price, :special_price
  end
end
