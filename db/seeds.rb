Flight.destroy_all
Airplane.destroy_all
Passenger.destroy_all

american = Airplane.create(airline: "American")
united = Airplane.create(airline: "United")
frontier = Airplane.create(airline: "Frontier")

joe = Passenger.create(name: 'Joe')
stacey = Passenger.create(name: 'Stacey')
mark = Passenger.create(name: 'Mark')

Flight.create(airplane: american, passenger: joe)
Flight.create(airplane: united, passenger: joe)
Flight.create(airplane: frontier, passenger: joe)
Flight.create(airplane: united, passenger: stacey)
Flight.create(airplane: frontier, passenger: mark)