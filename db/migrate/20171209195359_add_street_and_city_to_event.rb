class AddStreetAndCityToEvent < ActiveRecord::Migration
  def change
    add_column :events, :street, :string
    add_column :events, :city, :string
  end
end
