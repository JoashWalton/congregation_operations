class CreatePublicTalkOutlines < ActiveRecord::Migration[6.1]
  def change
    create_table :public_talk_outlines do |t|
      t.string :outline_name
      t.integer :outline_number
      t.text :outline_note
      t.date :outline_date

      t.timestamps
    end
  end
end
