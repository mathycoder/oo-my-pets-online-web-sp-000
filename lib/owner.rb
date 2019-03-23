require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets
  
  @@all = [] 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.count
  end 
  
  def self.reset_all 
    @@all = []
  end 
  
  def initialize(species)
    @species = species
    @pets = {:cats => [], :dogs => [], :fishes => []}
    @@all << self 
  end 
  
  def say_species
    "I am a #{@species}."
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
    @pets[:dogs].each do |pet|
      pet.mood = "happy"
    end 
  end 
  
  def play_with_cats
        @pets[:cats].each do |pet|
      pet.mood = "happy"
    end
  end 

  def feed_fish
    @pets[:fishes].each do |pet|
      pet.mood = "happy"
    end 
  end 
  
  def sell_pets
    new_hash = {}
    @pets.each do |pet_type, pets|
      new_hash[pet_type] = []
      pets.each do |pet|
        pet.mood = "nervous"
      end 
      #pets.clear
    end 
    @pets = new_hash 
  end 
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end 
  
end
