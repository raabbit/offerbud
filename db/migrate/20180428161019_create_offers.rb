class CreateOffers < ActiveRecord::Migration
  def up
    create_table :offers do |t|
      t.string :description
      t.timestamps null: false
    end
  end
  
  def down
    drop_table :offers
  end
end
