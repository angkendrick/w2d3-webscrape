class Comment

  def initialize(comments_array)
    @comments = comments_array
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

end