# frozen_string_literal: true

# NOTE: delete publishers before souls, get foreign key constraint errors otherwise
Publisher.delete_all
Soul.delete_all
Congregation.delete_all

# Build one congregation for existing Kingdom Hall
load 'db/seeds/kingdom_hall_seeds.rb'
load 'db/seeds/soul_seeds.rb'
load 'db/seeds/publisher_seeds.rb'
