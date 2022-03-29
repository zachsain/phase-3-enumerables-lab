require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end


def get_names(spicy_foods)

  arr_of_names = []

  spicy_foods.each do |name|
    arr_of_names.push(name[:name])
  end 

 arr_of_names
  
end


def spiciest_foods(spicy_foods) 

  spicy_foods.filter do |food|
    if food[:heat_level] > 5
      food
    end
  end 
end


def print_spicy_foods(spicy_foods)
  spicy_foods.map do |food|
   puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{'🌶' * food[:heat_level]}"
   end 
end
# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method

def get_spicy_food_by_cuisine(spicy_foods, cuisine)

  spicy_foods.find do |food|
   food[:cuisine] == cuisine
  end 

end



# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest


def sort_by_heat(spicy_foods)
  spicy_foods.sort do |heat1, heat2|
    heat1[:heat_level] <=> heat2[:heat_level]
  end 
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!

def print_spiciest_foods(spicy_foods)
  new_arr = spiciest_foods(spicy_foods)
  print_spicy_foods(new_arr)
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array


def average_heat_level(spicy_foods)
  
  sum_of_heat = 0
  spicy_foods.each do |heat|
    sum_of_heat += heat[:heat_level]
  end

sum_of_heat / spicy_foods.size
  
end

average_heat_level(spicy_foods)