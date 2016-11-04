require_relative 'page'

class ListingsPage < Page
  def listing_links
    html_doc.css('a.result-title').map { |link| path_to_url link["href"] }
  end

  private

  def path_to_url(path)
    "http://sandiego.craigslist.org" + path
  end
end