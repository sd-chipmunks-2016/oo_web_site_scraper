require 'nokogiri'
require 'net/http'
require 'uri'

class Page
  attr_reader :url, :html_doc

  def initialize(url)
    @url = normalize_url(url)
    @html_doc = Nokogiri::HTML(html)
  end

  def goto
    `open #{url}`
  end

  def title
    html_doc.css('title').first.text
  end

  def all_links
    html_doc.css('a').map { |link| link_to_text(link) }
  end

  def link_to_text(link_tag)
    "#{link_tag.text}: #{link_tag['href']}"
  end

  private

  def html
    uri = URI(url)
    Net::HTTP.get(uri)
  end

  def normalize_url(url)
    url.start_with?("http") ? url : "http://#{url}"
  end
end