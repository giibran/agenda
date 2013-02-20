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
          info = [id, name, lastname, phone, address.map{ |item| item.print_info() }.join(',')]
          #debugger
          #{}"#{name} : #{phone}"
        end
end