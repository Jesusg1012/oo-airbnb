class Guest
  @@all = []
  attr_reader :guest_name
  def initialize(name)
    @guest_name = name
    @@all << self
  end
  def listings
    listing = []
    self.trips.each do |trip|
      if trip.guest == @guest_name
        listing << trip.listing
      end
    end
    listing
  end
  def trips
    Trip.all.select do |trip|
      trip.guest.guest_name == @guest_name
    end
  end
  def trip_count
    self.trips.length
  end
  def self.pro_traveler
    Trip.all.map do |trip|
      trip.guest
    end.uniq
  end
  def self.find_all_by_name(name)
    @@all.select do |guest|
      guest.guest_name == name
    end
  end
end
