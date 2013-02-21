class Address
        attr_accessor :id, :address

        def initialize(address)
                @address = address
        end

        def print_info()
          print address + "\n"         
        end
end
