# doc.search('.subtext > span:first-child').map { |span| span.inner_text} returns points
# doc.search('.subtext > a:nth-child(3)').map {|link| link['href'] } returns item id 
# doc.search('.title > a:first-child').map { |link| link.inner_text} []
# doc.search('.title > a:first-child').map { |link| link['href']} []
# doc.search('.comment > font:first-child').map { |font| font.inner_text} []

class Post

  def initialize()
    @title = ""
    @url = ""
    @points = 0
    @item_id = 0
  end

  def comments()
    #returns all comments 
  end

  def add_comment(comment_obj)
    #adds a comment
  end

end