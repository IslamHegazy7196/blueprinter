class AddReleaseDateToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :release_date, :date
  end
end
