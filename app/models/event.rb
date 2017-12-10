class Event < ActiveRecord::Base
    #belongs_to :user
    
    def full_address
        [street, city].join(", ")
    end
    
    #full_address_temp = full_address(@event)
    #event.address = [event.street, event.city].join(", ")
    geocoded_by :full_address
    after_validation :geocode
end
