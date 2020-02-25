class Taco < ApplicationRecord
    belongs_to :truck
    validates :meat, presence: true 
    validates :zest, numericality: { greater_than: 0 } 
    validates :spicy, numericality: { greater_than: 0 } 

    # no negative spice 
    # no negative zest
    # specific amount of characters
    
    

end
