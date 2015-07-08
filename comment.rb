require 'colorize'

class Comment

  def initialize(comments_array, users_array)
    @comments = comments_array
    @users = users_array
  end

  def show_comments()
    #returns all comments
    count = 1
    merged = merge_users_comments()
    merged.each do |x|
      puts "-- Comment #{count} --".red
      puts "User: " + x[0].green
      puts "Says: " + x[1].blue
      count += 1
    end
  end

  def merge_users_comments()
    @users.zip(@comments)
  end

end