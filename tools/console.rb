require_relative '../config/environment.rb'
require_relative '../app/models/guest.rb'
require_relative '../app/models/trip.rb'
require_relative '../app/models/listing.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end





# Put your variables here~!
bob = Guest.new("Bob")
bob2 = Guest.new("Bob")
john = Guest.new("John")
timmy = Guest.new("timmy")


arka =Listing.new("Paterson")
arka2 =Listing.new("Paterson")
flatiron = Listing.new("Broklyn")
school = Listing.new("New York City")

trip1 = Trip.new(bob, arka, 10)
trip2 = Trip.new(timmy, arka, 24)
trip3 = Trip.new(timmy, flatiron, 10)
trip4 = Trip.new(bob2, flatiron, 12)
trip5 = Trip.new(john, school, 50)



binding.pry
