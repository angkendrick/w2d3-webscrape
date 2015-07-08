require 'nokogiri'
require 'open-uri'
require_relative 'parser_engine'

class Parser

  url = ARGV[0]

  #page = Nokogiri::HTML(open(url))
  raw_page = Nokogiri::HTML(open(url))

  engine = Engine.new()
  engine.get_details(raw_page)

end