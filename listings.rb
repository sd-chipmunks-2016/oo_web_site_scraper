require_relative 'listings_page'
require_relative 'listing_page'
require_relative 'listing'

class Listings
  attr_accessor :listings

  def initialize
    @listings = []
  end

  def load_from(url)
    page = ListingsPage.new(url)

    page.listing_links.each do |link|
      listing_page = ListingPage.new(link)
      self.listings << page_to_listing(listing_page)
    end
  end

  def print_listings
    listings.each do |listing|
      puts listing.display
    end
  end

  private

  def page_to_listing(listing_page)
    Listing.new(
      listing_page.title,
      listing_page.description,
      listing_page.location
    )
  end
end