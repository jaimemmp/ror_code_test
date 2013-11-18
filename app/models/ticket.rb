class Ticket < ActiveRecord::Base

    belongs_to :origin, class_name: "Place"
    belongs_to :destiny, class_name: "Place"
    accepts_nested_attributes_for :origin
    accepts_nested_attributes_for :destiny

    def initialize
        @transport = params[:transport]
        @@ordered_tickets = order
    end

    def order
        tickets = Ticket.all
        results = []
        until tickets.empty? do
           tickets.each do |key, ticket|
                results << tickets.find_by(origin: ticket.destiny)
                tickets.slice!(key)
           end
        end
        results
    end


end