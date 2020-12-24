class AddPublisherRefToContactInformations < ActiveRecord::Migration[6.1]
  def change
    add_reference :contact_informations, :publisher, null: false, foreign_key: true
  end
end
