class Offer < ActiveRecord::Base
    validates :description, :presence => true,  :length => { :minimum => 4 } 
    validates :place,   :presence => true 
    validates :Nazwa_Firmy,   :presence => true 
    validates :Email,   :presence => true 
    validates :Telefon,   :presence => true 
    validates :Adres,   :presence => true 
    belongs_to :user
    def self.search(search)
        if search
            where(["Nazwa_Firmy LIKE ?","%#{search}%"])
        else
            all
        end
    
    end
end

