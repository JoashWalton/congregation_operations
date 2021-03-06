class CreateSouls < ActiveRecord::Migration[6.1]
  def change
    create_table :souls do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.date :birth_date
      t.date :death_date

      t.timestamps
    end
  end
end
