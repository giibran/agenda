class Person
        attr_accessor :id, :name, :lastname, :phone, :address

        def initialize(id, name, lastname, phone, address)
                @id = id
                @name = name
                @lastname = lastname
                @phone = phone
                @address = address
        end

        def print_info()
          puts "Name: #{name} \nLastname: #{lastname} \nPhone: #{phone} \nAddress: "
          address.map{ |item| item.print_info() }
          puts "\n"
        end

        def print_pair
        	puts "Id:#{id} #{name}"
        end
end