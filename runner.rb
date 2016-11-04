require_relative 'listings_page'
require_relative 'listing_page'
require_relative 'listings'


listings = Listings.new
listings.load_from "http://sandiego.craigslist.org/search/sof"

listings.print_listings


# listings_page = ListingsPage.new "http://sandiego.craigslist.org/search/sof"

# # p listings_page.listing_links

# listing_page = ListingPage.new listings_page.listing_links.last

# puts "listing_page.title: #{(listing_page.title).to_s}"
# puts "listing_page.description: #{(listing_page.description).to_s}"
# puts "listing_page.location: #{(listing_page.location).to_s}"