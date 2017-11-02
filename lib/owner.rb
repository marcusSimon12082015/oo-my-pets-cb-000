class Owner
  # code goes here
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
  end
end
