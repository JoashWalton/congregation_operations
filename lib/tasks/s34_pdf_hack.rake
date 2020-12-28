require 'pdf-reader'
require 'byebug'
require 'date'
require 'awesome_print'

@pt_title = ''
@pt_number = 0
@pt_date = ''

reader = PDF::Reader.new("/Users/jw/Downloads/S-34_E.pdf")

blank_pt_title_regex = /.*(?<Note to the speaker>)/
blank_pt_talk_number = /No[.]\s(.+)[-]E/
blank_date_string_regex = /[-]E\s(.+)TO/
blank_subheading_title_normal = /(?<!\S)(\W|\s)[A-Z]+\s[A-Z]+(?!\S)/
blank_subheading_title_quoted = /(?<!\S)\s{2}(\W|\s)[A-Z]+\s[A-Z]+(?!\S)/ # for outline number 11

QUOTED_SUBHEADING_OUTLINES = [11]
PUNCTUATION_ARRAY = ['?', '!']

# puts reader.pdf_version
# puts reader.info
# puts reader.metadata
# puts reader.page_count

reader.pages.each do |page|
  page_start_text = page.text[0..2]

  case page_start_text
  when '   '
    @pt_title = blank_pt_title_regex.match(page.text)[0].strip
  
    @pt_number = blank_pt_talk_number.match(page.text)[1].to_i
  
    date_string = blank_date_string_regex.match(page.text)[1].strip
    month = /(.+).{3}\z/.match(date_string)[1].to_i
    year = /(.{2})\z/.match(date_string)[1].to_i + 2000
    @pt_date = Date.new(year, month)
    
    talk_text = /Note to the speaker(.+)(?<[(]4>)/.match(page.text.gsub(/\n/," "))[0] # removes talk title
    
    if QUOTED_SUBHEADING_OUTLINES.include?(@pt_number)
      first_subheading_words = talk_text.match(blank_subheading_title_quoted)[0]
    else 
      first_subheading_words = talk_text.match(blank_subheading_title_normal)[0]
    end

    @pt_note = /Note to the speaker:(.+)#{first_subheading_words}/.match(talk_text)[1].strip.gsub('   ', ' ').gsub('  ', ' ') # remove three spaces, then remove two spaces
    
    unless PUNCTUATION_ARRAY.include?(@pt_note[-1])
      @pt_note.insert(-1, '.')
    end

    puts @pt_title
    puts @pt_number
    puts @pt_date
    puts @pt_note

  when 'No.'
    if /Watch Tower Bible and Tract Society of Pennsylvania/.match?(page.text) # one page outline 
      @pt_number = /No.\s(\d+)/.match(page.text)[1].to_i
      @pt_title = /\ANo[.]\s\d+\s+(.*)/.match(page.text)[1]
    
      if /S[-]34[-]E\sNo[.]\s(.+)/.match?(page.text)
        found_date = /S[-]34[-]E\sNo[.]\s(.+)/.match(page.text)[1]
        date_string = /#{@pt_number}(.+)/.match(found_date)[1]
        month = /(.+).{3}\z/.match(date_string)[1].to_i
        year = /(.{2})\z/.match(date_string)[1].to_i + 2000
        @pt_date = Date.new(year, month)
      else 
        next_page_found_date = /S[-]34[-]E\sNo[.]\s(.+)/.match(reader.page(page.number + 1).text)[1]
        date_string = /#{@pt_number}(.+)/.match(next_page_found_date)[1]
        month = /(.+).{3}\z/.match(date_string)[1].to_i
        year = /(.{2})\z/.match(date_string)[1].to_i + 2000
        @pt_date = Date.new(year, month)
      end

    puts @pt_title
    puts @pt_number
    puts @pt_date
    # puts @pt_note
  end
end