class AddNazwaFirmyAndEmailAndTelefonAndAdresToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :Nazwa_Firmy, :string
    add_column :offers, :Email, :string
    add_column :offers, :Telefon, :string
    add_column :offers, :Adres, :text
  end
end
