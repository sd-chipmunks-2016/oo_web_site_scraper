class ListingPage < Page
  def title
    html_doc.css('#titletextonly').text
  end
  
  def description
    html_doc.css('#postingbody').text
  end

  def location
    html_doc.css('.postingtitletext small').text#.match(/\((.*)\)/)[1]
  end
end