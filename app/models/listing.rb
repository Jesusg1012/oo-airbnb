class Listing
  @@all = []
  def initialize(name)
    @city_name = name
    @@all << self
  end
  attr_reader :city_name
  def self.all
    @@all
  end
  def trips
    Trip.all.select do |trip|
      trip.listing.city_name == @city_name
    end
  end
  def trip_count
    self.trips.length
  end
  def self.find_all_by_city(city)
    @@all.select do |listing|
      listing.city_name == city
    end
  end
  def self.most_popular
    most_trip = Trip.all[0].listing
    count1 = 0
    arr = {}
    Trip.all.each do |trip|
      arr[trip] += 1
    end
    arr.each do |trip, count|
      if count > count1
        most_trip = most_trip
      end
    end
  end
  def guest
    guests = []
    self.trips.each do |trip|
      guests << trip.guest
    end
    guest
  end

end
