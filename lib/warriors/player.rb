require 'pry'
class Player
  attr_accessor :name, :position
  @@all = []

  def initialize(name)
      # @position = position
      @name = name
      @@all << self
  end 
  
  def self.all
    @@all
  end  

end  