class CreatePublicSpeakersPublicTalkOutlinesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :public_speakers, :public_talk_outlines do |t|
      t.index :public_speaker_id
      t.index :public_talk_outline_id
    end
  end
end
