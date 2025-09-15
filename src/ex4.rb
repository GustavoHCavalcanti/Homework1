class Dessert
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    @calories < 200
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(name, calories, flavor)
    super(name, calories)   
    @flavor = flavor
  end

  def delicious?
    @flavor.downcase == "black licorice" ? false : true
  end
end

# Testes 
cake = Dessert.new("Chocolate Cake", 350)
puts cake.name          
puts cake.calories      
puts cake.healthy?      
puts cake.delicious?    

bean1 = JellyBean.new("Yummy Bean", 150, "cherry")
puts bean1.name        
puts bean1.healthy?     
puts bean1.delicious?   

bean2 = JellyBean.new("Weird Bean", 150, "black licorice")
puts bean2.delicious?  
