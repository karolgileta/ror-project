class AddPrivateToEvent < ActiveRecord::Migration
  def change
    add_column :events, :hidden, :boolean, null: false, default: false
  end
end
