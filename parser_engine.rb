require 'nokogiri'
require_relative 'post'

class Engine

  def get_details(nokogiri_doc)
    post_title = nokogiri_doc.css("title")[0].text #get title
    number_of_comments = (nokogiri_doc.search('.comment > font:first-child').map { |font| font.inner_text}).length #get number of comments
    post_points = nokogiri_doc.search('.subtext > span:first-child').map { |span| span.inner_text} #get post points
    post_id = nokogiri_doc.search('.subtext > a:nth-child(3)').map {|link| link['href'] } #get post id

    puts post_title
    puts number_of_comments
    puts post_points
    puts post_id

  end

end