class AddOriginIdToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :origin_id, :integer
  end
end
