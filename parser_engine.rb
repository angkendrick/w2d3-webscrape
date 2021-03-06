require 'nokogiri'
require_relative 'post'
require_relative 'comment'

class Engine

  def get_post_details(nokogiri_doc, page_url) #returns a Post Object
    post_title = nokogiri_doc.css("title")[0].text #get title
    post_points = nokogiri_doc.search('.subtext > span:first-child').map { |span| span.inner_text} #get post points
    post_id = nokogiri_doc.search('.subtext > a:nth-child(3)').map {|link| link['href'] } #get post id
    post_url = page_url

    return Post.new(post_title, post_url, post_points, post_id) #return new post object
  end

  def get_comment_details(nokogiri_doc, page_url) #returns a Comment Object
    comments = nokogiri_doc.search('.comment > font:first-child').map { |font| font.inner_text} #get comments
    users = nokogiri_doc.search('.comhead > a:first-child').map {|link| link.inner_text } #get users

    return Comment.new(comments, users) #returns a Comments object
  end



end