class CreateCongregations < ActiveRecord::Migration[6.1]
  def change
    create_table :congregations do |t|
      t.string :congregation_name
      t.string :congregation_number

      t.timestamps
    end
  end
end
