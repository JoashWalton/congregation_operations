class CreatePublishers < ActiveRecord::Migration[6.1]
  def change
    create_table :publishers do |t|
      t.boolean :unbaptized
      t.date :unbaptized_date
      t.boolean :baptized
      t.date :baptism_date
      t.boolean :other_sheep
      t.boolean :anointed

      t.timestamps
    end
  end
end
