require 'rubygems'
require 'debugger'

require './person.rb'
require './address.rb'

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
          one_more = "1"
          addresses = []
          while one_more == "1"
            puts "address:"
            address_temp = gets.chomp()
            addresses << Address.new(address_temp)
            puts " 1)add other address? \n 2) NO add"
            one_more = gets.chomp()
          end
          @people << Person.new(id, name, lastname, phone, addresses)
        end

        def show_all()
                @people.each { |item| puts item.print_info() }
                #@people.each { |key, current_person| puts "#{key}:  #{current_person}"}
                #debugger
        end

        def select_user()
          @people.each { |item| puts item.print_pair() }
           puts "choose an user id to action:"
           choosen_id = gets.chomp()
           choosen_id.to_i
        end

        def edit_person(id)
           current_person = @people[id]
           puts "name: #{current_person.name}"
           puts "lastname: #{current_person.lastname}"
           puts "phone: #{current_person.phone}"
           puts "addresses: #{current_person.address}"
        end

        def delete_person(id)
          @people.delete_at(id)
          @people
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
                  selected_user = select_user()
                  edit_person(selected_user)
                when "4"
                  selected_user = select_user()
                  delete_person(select_user)
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