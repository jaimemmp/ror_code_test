class AddDestinyIdToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :destiny_id, :integer
  end
end
