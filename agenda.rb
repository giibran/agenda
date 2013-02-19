require 'rubygems'
require 'debugger'
class Person
        attr_accessor :id, :name, :lastname, :phone

        def initialize(id, name, lastname, phone)
                @id = id
                @name = name
                @lastname = lastname
                @phone = phone
        end
end

class Address
        attr_accessor :id, :address

        def initialize(id, address)
                @id = id
                @address = address
        end
end

class Agenda 
        attr_accessor :people

        def initialize()
                @people = []  
        end

        def add_person()
          id = @people.length
          puts "name:"
          name = gets.chomp()
          puts "lastname:"
          lastname = gets.chomp()
          puts "phone:"
          phone = gets.chomp()
          @people << Person.new(id, name, lastname, phone)
        end

        def show_all()
                @people.each { |current_person| puts current_person}
                debugger
        end

        def edit_person()

        end

        def delete_person()

        end

        def menu()
          option = 0
          while option != "5"
                print(" 1) add new person \n 2) show all people \n 3) edit person \n 4) delete person\n 5) exit\n")
                option = gets.chomp()
                case option
                when "1"
                  add_person()
                when "2"
                  show_all()
                when "3"
                  edit_person()
                when "4"
                  delete_person()
                when "5"
                  puts "SEE YOU LATER ALLIGATOR"                    
                else
                  puts "INVALID OPTION"
                end    
          end              
        end
end

agenda = Agenda.new()
agenda.menu()

=begin
  
 person = Person.new
                person.name = 'simon'
                person.addresses = []

                simona.each do |text|
                        person.addresses << Address.new text
                end 
  
=end