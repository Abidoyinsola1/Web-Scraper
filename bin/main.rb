# !/usr/bin/env ruby

require_relative '../lib/scraper_logic.rb'

puts 'Hello, Welcome here! There are varieties of rings for you'
puts 'First, can I know your name?'
first_name = gets.chomp.capitalize

puts "#{first_name}, here is the collection"

wedding_ring = WeddingRing.new

puts wedding_ring.scrape
