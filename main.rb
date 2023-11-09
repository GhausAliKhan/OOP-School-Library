require_relative 'app'

def display_menu
  puts "\nPlease choose an option by entering a number:"
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def handle_books_list(app)
  app.list_all_books_action
end

def handle_people_list(app)
  app.list_all_people_action
end

def handle_create_person(app)
  app.create_person_action
end

def handle_create_book(app)
  app.create_book_action
end

def handle_create_rental(app)
  app.create_rental_action
end

def handle_show_rental(app)
  app.list_all_rentals_for_person_action
end

def handle_exit(app)
  app.program_exit_action
end

# Initialize the App
app = App.new

# Main program loop
loop do
  display_menu
  choice = gets.chomp
  break if choice == 'quit'

  case choice
  when '1'
    handle_books_list(app)
  when '2'
    handle_people_list(app)
  when '3'
    handle_create_person(app)
  when '4'
    handle_create_book(app)
  when '5'
    handle_create_rental(app)
  when '6'
    handle_show_rental(app)
  when '7'
    handle_exit(app)
    break
  else
    puts 'Incorrect choice, please choose a number between 1 and 7'
  end
end
