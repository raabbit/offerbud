class Offer < ActiveRecord::Base
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
    validates :description, :presence => true,  :length => { :minimum => 4 } 
    validates :place,   :presence => true 
    validates :Nazwa_Firmy,   :presence => true 
    validates :Email,   :presence => true 
    validates :Telefon,   :presence => true 
    validates :Adres,   :presence => true 
    validates :avatar, attachment_presence: true
    validates_with AttachmentPresenceValidator, attributes: :avatar
    validates_with AttachmentSizeValidator, attributes: :avatar, less_than: 4.megabytes
    belongs_to :user
    
    def self.search(search)
        if search
            where(["Nazwa_Firmy LIKE ?","%#{search}%"])
        else
            all
        end
    
    end
end

