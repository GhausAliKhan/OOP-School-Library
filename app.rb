require_relative 'book'
require_relative 'rental'
require_relative 'student'
require_relative 'teacher'

# Class containing app functionality for a basic UI
class App
  def initialize
    @books = []
    @people = []
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

  def list_all_people
    if @people.empty?
      puts 'No people available.'
    else
      puts 'List of all people:'
      @people.each_with_index do |person, index|
        puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
  end

  def create_person
  end

  def create_student
  end

  def create_teacher
  end

  def create_book
  end

  def create_rental
  end

  def valid_conditions_for_rental?
  end

  def select_book
  end

  def select_person
  end

  def list_books
  end

  def list_people
  end

  def create_new_rental
  end

  def list_all_rentals_for_person
  end
end
