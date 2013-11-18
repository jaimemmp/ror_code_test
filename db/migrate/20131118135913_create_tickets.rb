class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :seat
      t.string :transport

      t.timestamps
    end
  end
end
