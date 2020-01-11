class Owner
  attr_reader :name, :species 
  # instance methods 
  def initialize(name)
    @name = name 
    @species = 'human'
    @@all << self 
  end 

  def say_species 
    "I am a #{@species}."
  end

  def cats 
    # return each cat this owner owns
    # iterate through Cat class's @@all list and find each cat whose owner equals this owner. 
    Cat.all.select{|cat| cat.owner == self}
  end 
  
  def buy_cat(name)
    Cat.new(name,self)
  end

  def feed_cats
    cats.each {|cat| cat.mood = 'happy'}
  end 

  def dogs 
    # same as above .cats method, but for dogs 
    Dog.all.select{|cat| cat.owner == self}
  end 

  def buy_dog(name) 
    Dog.new(name,self)
  end

  def walk_dogs 
    dogs.each {|dog| dog.mood = 'happy'}
  end

  def sell_pets 
    cats.each{|cat| 
      cat.mood = 'nervous'
      cat.owner = nil
    }

    dogs.each{|dog| 
      dog.mood = 'nervous'
      dog.owner = nil
    }
  end

  def list_pets 
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end
  



  # class variables 
  @@all = [] 

  # class methods 
  def self.all 
    @@all 
  end 

  def self.count 
    @@all.length 
  end 

  def self.reset_all 
    @@all.clear 
  end 
end