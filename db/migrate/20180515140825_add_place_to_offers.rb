class AddPlaceToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :place, :string
  end
end
