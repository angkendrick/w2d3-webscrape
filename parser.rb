require 'nokogiri'
require 'open-uri'
require 'colorize'
require_relative 'parser_engine'
require_relative 'post'

class Parser

  url = ARGV[0]

  begin
    #page = Nokogiri::HTML(open(url))
    raw_page = Nokogiri::HTML(open(url)) #scrape html page
  rescue
    puts "failed to scrape using Nokogiri"
  end

  engine = Engine.new()
  @@post = engine.get_post_details(raw_page, url) #send raw_page for processing returns Post object
  @@comment = engine.get_comment_details(raw_page, url) #send raw_page for processing returns Comment object

  def self.main_menu
    quit = false
    while !quit
      puts 'Type "stats" / "comments" / "quit" to navigate'
      user = STDIN.gets.chomp().downcase

      case user
      when "stats"
        @@post.show_stats()
      when "comments"
        @@comment.show_comments()
      when "quit"
        quit = true
      else
        "Command not found!".red
      end

    end
  end

  main_menu() #run menu

end