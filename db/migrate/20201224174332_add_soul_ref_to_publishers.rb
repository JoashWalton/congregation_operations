class AddSoulRefToPublishers < ActiveRecord::Migration[6.1]
  def change
    add_reference :publishers, :soul, null: false, foreign_key: true
  end
end
