require 'httparty'
require 'nokogiri'

class WeddingRing
  attr_reader :wedding_rings, :url, :parsed_page

  def initialize
    @url = 'https://www.jumia.com.ng/womens-wedding-rings/'
    @wedding_rings = []
    @parsed_page = nil
  end

  def scrape()
    @parsed_page = parse_url(@url)
    @parsed_page.css('div.info').each do |ring|
      wedding_band = []
      description = ring.css('h3.name').text
      price = ring.css('div.prc').text
      rating = ring.css('div.rev').text
      wedding_band.push(description)
      wedding_band.push(price)
      wedding_band.push(rating)
      @wedding_rings.push(wedding_band)
    end
    @wedding_rings
  end

  private

  def parse_url(url)
    unparsed_page = HTTParty.get(url)
    Nokogiri::HTML(unparsed_page)
  end
end
