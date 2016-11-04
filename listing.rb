class Listing
  attr_reader :title, :description, :location

  def initialize(title, description, location)
    @title = title
    @description = description
    @location = location
  end

  def display
    "Title: #{title}\n" +
    "Location: #{location}\n\n" +
    "Description:\n#{description}"
  end
end