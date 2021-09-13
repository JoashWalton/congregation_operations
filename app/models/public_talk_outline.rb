# Class for describing a public talk outline - the details surrounding an outline
#
# Attributes:
# * outline_name - string - title of the outline
# * outline_number - integer - number asigned to the outline
# * outline_note - branch summary of the outline's intent
# * outline_date - date outline was last updated
# * outline_time - time allocated for delivery
# * subheadings - array of talk subheadings
# * read_scriptures - array of scriptures expected to be read
# * file_location_url - local active storage location of outline
#
class PublicTalkOutline < ApplicationRecord
  has_and_belongs_to_many :public_speakers
  has_one_attached :talk_outline_pdf

  before_save :titleize_public_talk_title, :titleize_subheadings

  # Capitalizes all the words and replaces some characters to create a nicer looking title.
  def titleize_public_talk_title
    return unless outline_name.present?

    self.outline_name = outline_name.titleize
  end

  # Capitalizes all the words and replaces some characters to create a nicer looking subheading.
  def titleize_subheadings
    return unless subheadings.present?

    subheadings.map!(&:titleize)
  end
end
