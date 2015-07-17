# # 8
require_relative "entry.rb"



class  AddressBook
    attr_accessor :entries
    
    def initialize
        @entries = []
        end

    def add_entry(name, phone, email)
        
# # 9
       index = 0
       @entries.each do |entry|
           
# # 10

        if name < entry.name
            break
            end
        
        index += 1
        end
       
       # # 11
       
       @entries.insert(index, Entry.new(name, phone, email))
       end
    
    ## 11 removes entries
    
    def remove_entry(name, phone, email)
        
        @entries.delete(Entry.new(name, phone, email))
    end

end