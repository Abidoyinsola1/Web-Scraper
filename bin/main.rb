# !/usr/bin/env ruby

require_relative 'scraper-logic.rb'

# %w[description price rating]

wedding_ring = WeddingRing.new

puts wedding_ring.scrape