require 'colorize'

class Post

  def initialize(title, url, points, id)
    @title = title
    @url = url
    @points = points
    @item_id = id
  end

  def show_stats()
    puts ""
    puts "Title:    " + "#{@title}".blue
    puts "Url:      " + "#{@url}".blue
    puts "Points:   " + "#{@points.join("")}".blue
    puts "ID:       " + "#{get_number_from_id(@item_id)}".blue
    puts ""
  end

  def get_number_from_id(id_array) # cleans up item_id array and returns a string
    string = id_array.join("")
    return string.gsub(/[^\d]/, '')
  end

  def add_comment(comment_obj)
    #adds a comment
  end

end