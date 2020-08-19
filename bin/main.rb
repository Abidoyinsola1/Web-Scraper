# !/usr/bin/env ruby

require_relative '../lib/scraper-logic.rb'

wedding_ring = WeddingRing.new

puts wedding_ring.scrape
