# frozen_string_literal: true

require 'yaml'

PUBLIC_TALK_OUTLINE_DETAILS_FILE = 'config/theocratic_data/public_talk_outlines_details.yml'

# PublicTalkOutline Attributes:
# id
# outline_name
# outline_number
# outline_note
# outline_date
# outline_time
# subheadings
# read_scriptures
# file_location_url

pto_details = YAML.safe_load(File.read(PUBLIC_TALK_OUTLINE_DETAILS_FILE))

pto_details.each do |detail|
  ap detail[0]
  PublicTalkOutline.new(
    outline_name: detail[1]['outline_name'],
    outline_number: detail[0],
    outline_note: detail[1]['outline_note'],
    outline_date: detail[1]['outline_date'].to_date,
    outline_time: detail[1]['outline_time'],
    subheadings: detail[1]['subheadings'],
    read_scriptures: detail[1]['read_scriptures'],
    file_location_url: detail[1]['file_location']
  ).save
end
