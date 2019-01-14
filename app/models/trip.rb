class Trip
  @@all = []
  def initialize(guest, listing, durarion)
    @guest = guest
    @listing = listing
    @duration = durarion
    @@all << self
  end
  def self.all
    @@all
  end
  attr_reader :listing, :guest, :durarion
end
