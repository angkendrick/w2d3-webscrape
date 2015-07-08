
class Post

  def initialize(title, url, points, id, comments)
    @title = title
    @url = url
    @points = points
    @item_id = id
    @comments = comments
  end

  def show_comments()
    #returns all comments
    count = 1
    @comments.each do |x|
      puts "-- Comment #{count} --"
      puts x
      count += 1
    end
  end

  def show_stats()
    puts "Title:    #{@title}"
    puts "Url:      #{@url}"
    puts "Points:   #{@points.join("")}"
    puts "ID:       #{get_number_from_id(@item_id)}"
    puts "Comments: #{@comments.length}"
  end

  def get_number_from_id(id_array) # cleans up item_id array and returns a string
    string = id_array.join("")
    return string.gsub(/[^\d]/, '')
  end

  def add_comment(comment_obj)
    #adds a comment
  end

end