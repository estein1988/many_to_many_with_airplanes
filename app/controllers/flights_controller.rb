class FlightsController < ApplicationController

    def index
        @flights = Flight.all 
        render json: @flights, include: [:passenger, :airplane]
        #note singular above
        #include - takes a relationship
    end

    def create
        @flight = Flight.create(
            airplane_id: params[:airplane_id],
            passenger_id: params[:passenger_id] 
        )
        render json: @flgiht, incldude: [:passenger, :airplane]
    end

end
