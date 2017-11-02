class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name

  @@all = []
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [],
             :dogs => [],
             :cats => [] }
  end
  def pets
    @pets
  end
  def say_species
    return "I am a #{@species}."
  end
  def self.all
    @@all
  end
  def self.reset_all
    @@all.clear
  end
  def self.count
    @@all.count
  end
end
