class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  attr_writer :mood
  # instance methods 
  def initialize(name, owner) 
    @name = name 
    @owner = owner 
    @mood = 'nervous'
    @@all << self 
  end 

  # class variables  
  @@all = [] 

  # class methods 
  def self.all 
    @@all 
  end 

end