class Owner
  # code goes here
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
  end
  def self.all
    @@all
  end
  def self.reset_all
    @@all.length = 0
  end
end
