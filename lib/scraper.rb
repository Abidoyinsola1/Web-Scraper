require 'mechanize'
require 'pry'
require 'byebug'


agent = Mechanize.new
page = agent.get('https://nigeriapropertycentre.com/for-sale')