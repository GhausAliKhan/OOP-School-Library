require 'json'

# Class responsible for book management
class BookManager
  attr_accessor :books

  def initialize
    @books = []
  end

  def list_all_books
    if @books.empty?
      puts 'No books available.'
    else
      puts 'List of all books:'
      @books.each_with_index do |book, index|
        puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
      end
    end
  end

  def create_book(title, author)
    new_book = Book.new(title, author)
    @books << new_book
    puts 'Book created successfully'
  end

  def save_books_to_json
    File.open('books.json', 'w') do |f|
      data_to_write = @books.map(&:to_json).to_json
      f.write(data_to_write)
    end
  end
end
