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
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  def walk_dogs
    @pets[:dogs].collect{|dog| dog.mood = "happy"}
  end
  def play_with_cats
    @pets[:cats].collect{|cat| cat.mood = "happy"}
  end
  def feed_fish
    @pets[:fish].collect{|fish| fish.mood = "happy"}
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
