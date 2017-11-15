defaultFavs = {animal = 'gru', food = 'donuts'}
myFavs = {food = 'pizza'}
--setmetatable(myFavs, {__index = defaultFavs})
food = myFavs.food
animal = myFavs.animal
print(food)
print(animal)
