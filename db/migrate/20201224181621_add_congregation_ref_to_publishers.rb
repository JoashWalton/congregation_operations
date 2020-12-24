class AddCongregationRefToPublishers < ActiveRecord::Migration[6.1]
  def change
    add_reference :publishers, :congregation, null: false, foreign_key: true
  end
end
