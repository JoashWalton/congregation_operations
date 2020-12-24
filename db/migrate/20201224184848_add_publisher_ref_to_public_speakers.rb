class AddPublisherRefToPublicSpeakers < ActiveRecord::Migration[6.1]
  def change
    add_reference :public_speakers, :publisher, null: false, foreign_key: true
  end
end
