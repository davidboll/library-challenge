require 'yaml'

class Library

  attr_accessor :books

  def initialize
    @books = YAML::load_file(File.join(__dir__, 'data.yml'))
  end

  def list_books
    @books.each do |items|
      book = items[:item][:title]
      author = items[:item][:author]
      available = items[:available]
      return_date = items[:return_date]

      #Checks parameter "available"
      if items[:available] != true
        status = 'Utlånad'
      else
        status = 'Tillgänglig'
      end

      puts "Book: #{book}, Author: #{author}, Available: #{status}"

    end
  end

end

#books = YAML::load_file(File.join(__dir__, 'data.yml'))
#puts @books[0][title]
