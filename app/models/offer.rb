class Offer < ActiveRecord::Base
    belongs_to :user
    def self.search(search)
        if search
            where(["description LIKE ?","%#{search}%"])
        else
            all
        end
    
    end
end

