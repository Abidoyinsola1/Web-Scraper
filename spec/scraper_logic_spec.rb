require '../lib/scraper_logic.rb'

describe WeddingRing do
  let(:wedding_ring) { WeddingRing.new }
  describe '#initialize' do
    it 'initialize url to string value' do
      expect(wedding_ring.url).to be_a(String)
    end
    it 'initialize wedding_band to an empty array' do
      expect(wedding_ring.wedding_rings).to eql([])
    end
  end
  describe '#scrape' do
    it 'assigns a value to parse_page' do
      wedding_ring.scrape
      expect(wedding_ring.parsed_page.nil?).to eql(false)
    end
  end
end
