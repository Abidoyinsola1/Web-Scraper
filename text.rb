require 'mechanize'
require 'pry'
require 'byebug'

agent = Mechanize.new
page = agent.get('https://nigeriapropertycentre.com/for-sale')

top_movies = agent.page.links.find { |link| link.text == 'Top Rated Movies' }

pp page