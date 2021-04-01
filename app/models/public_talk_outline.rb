# Class for describing a public talk outline - the details surrounding an outline
#
# Attributes:
# * outline_name - string - title of the outline
# * outline_number - integer - number asigned to the outline
# * outline_note - branch summary of the outline's intent
# * outline_date - date outline was last updated
#
class PublicTalkOutline < ApplicationRecord
  has_and_belongs_to_many :public_speakers

  before_save :titleize_public_talk_title

  def titleize_public_talk_title
    return unless outline_name.present?

    self.outline_name = outline_name.titleize
  end
end
