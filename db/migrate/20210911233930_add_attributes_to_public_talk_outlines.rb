class AddAttributesToPublicTalkOutlines < ActiveRecord::Migration[6.1]
  def change
    add_column :public_talk_outlines, :outline_time, :integer
    add_column :public_talk_outlines, :subheadings, :string, array: true, default: []
    add_column :public_talk_outlines, :read_scriptures, :string, array: true, default: []
    add_column :public_talk_outlines, :file_location_url, :string
  end
end
