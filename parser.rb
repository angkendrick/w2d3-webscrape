require 'nokogiri'
require 'open-uri'
require_relative 'parser_engine'
require_relative 'post'

class Parser

  url = ARGV[0]

  #page = Nokogiri::HTML(open(url))
  raw_page = Nokogiri::HTML(open(url)) #scrape html page

  engine = Engine.new()
  post = engine.get_post_details(raw_page, url) #send raw_page for processing returns Post object

end