# Class for describing a public speaker - elder or ministerial servant who gives public talks
#
# Attributes:
# * approved_for_outgoing_talks - boolean - whether a speaker is approved by the local BoE
#
class PublicSpeaker < ApplicationRecord
  belongs_to :publisher
  has_and_belongs_to_many :public_talk_outlines
end
