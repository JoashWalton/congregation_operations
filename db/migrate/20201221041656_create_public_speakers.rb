class CreatePublicSpeakers < ActiveRecord::Migration[6.1]
  def change
    create_table :public_speakers do |t|
      t.boolean :approved_for_outgoing_talks

      t.timestamps
    end
  end
end
