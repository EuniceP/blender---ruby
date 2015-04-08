# create a class called Blender
# # It should have a method that takes an array of ingredients and returns a
# # mixed string of characters.
# # # Give the blender an on and off switch and only allow the blender to
# function when it's on.
# # # FOR SAFETY'S SAKE When you create a new blender by default it should be
# off.
# # # Blend the the smoothie array
class Blender
  
  def initialize
    @on = false
  end

  def blend (ingredients)

    if @on
      puts ingredients.join.gsub('e','z').split().shuffle.join
    else
      puts "Turn on the blender"
    end 
  end

  def switch_on
    @on = true
  end

  def switch_off
    @on = false
  end

  def string_shuffle (s)
    s.split('').shuffle(s.length()).join
    return 
  end

end

blender = Blender.new
ingredients = [ "pineapple", "strawberry","banana","milk"]
blender.switch_on
puts blender.blend(ingredients)
