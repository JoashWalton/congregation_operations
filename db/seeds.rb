# frozen_string_literal: true

# NOTE: delete publishers before souls, get foreign key constraint errors otherwise
Publisher.delete_all
Soul.delete_all
Congregation.delete_all
KingdomHall.delete_all

# This block will automatically empty the database every time db:seed is run.
ActiveRecord::Base.connection.tables.each do |table|
  # Don't clear our migration history! Clear everything else.
  next unless table != 'schema_migrations'

  # http://stackoverflow.com/a/7758797
  ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{table} CASCADE;")
  # http://stackoverflow.com/questions/2097052/rails-way-to-reset-seed-on-id-field
  ActiveRecord::Base.connection.reset_pk_sequence! table
end

# Build one congregation for existing Kingdom Hall
# load 'db/seeds/kingdom_hall_seeds.rb'
# load 'db/seeds/soul_seeds.rb'
# load 'db/seeds/publisher_seeds.rb'
load 'db/seeds/public_talk_outlines.rb'
