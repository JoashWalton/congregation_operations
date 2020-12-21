class CreateKingdomHalls < ActiveRecord::Migration[6.1]
  def change
    create_table :kingdom_halls do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country

      t.timestamps
    end
  end
end
