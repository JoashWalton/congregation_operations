class AddKingdomHallRefToCongregations < ActiveRecord::Migration[6.1]
  def change
    add_reference :congregations, :kingdom_hall, null: false, foreign_key: true
  end
end
