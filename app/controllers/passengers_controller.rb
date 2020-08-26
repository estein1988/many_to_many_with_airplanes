class PassengersController < ApplicationController

    def index 
        @passengers = Passenger.all 
        render json: @passengers, include: [:flights, :airplanes]
        #note plural form in include
        #this "include syntax is really the biggest different with a M:N"
    end

    def show
        @passenger = Passenger.find(params[:id])
        render json: @passengers, include: [:flights, :airplanes]
        #find by - finds by key.value pair
        #find is by id
    end

    def create
        @passenger = Passenger.create(name: params[:name])
        render json: @passenger
    end 

end
