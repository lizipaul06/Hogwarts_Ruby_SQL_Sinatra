require('pry')
require_relative('../models/student')
require_relative('../models/house')

House.delete_all()
Student.delete_all()


griffindor = House.new({
  'name' => 'Griffindor',
  'logo' => 'https://images-na.ssl-images-amazon.com/images/I/71htSIb7LnL._SL1151_.jpg',
  'score' => 10,
  'motto' => 'Courage, bravery, nerve, and chivalry'
  });

griffindor.save

ravenclaw = House.new({
    'name' => 'Ravenclaw',
    'logo' => 'https://i.pinimg.com/474x/f5/b9/02/f5b902b26576787e83fb48acd8169838.jpg',
    'score' => 5,
    'motto' => ' Intelligence, creativity, learning, and wit'
    });

ravenclaw.save

slytherin = House.new({
      'name' => 'Slytherin',
      'logo' => 'https://cdn.shopify.com/s/files/1/1541/8579/files/Slytherin-harry-potter_large.jpg?v=1491538349',
      'score' => 20,
      'motto' => 'Ambition, cunning, leadership, and resourcefulness'
      });

slytherin.save

hufflepuff = House.new({
        'name' => 'Hufflepuff',
        'logo' => 'https://cdn.shopify.com/s/files/1/1943/7257/files/Hufflepuff-harry_potter_large_fbb65855-ecfe-424f-b951-0c1374bf17e9_large.jpg?v=1514443386',
        'score' => 10,
        'motto' => 'Hard work, patience, justice, and loyalty'
        });
hufflepuff.save

harry = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'age' => 11,
  'house_id' => 1
  });

harry.save()
hermione = Student.new({
  'first_name' => 'Hermione',
  'last_name' => 'Granger',
  'age' => 10,
  'house_id' => 1
  });

hermione.save()
draco = Student.new({
  'first_name' => 'Draco',
  'last_name' => 'Malfoy',
  'age' => 13,
  'house_id' => 3
  });

draco.save()

binding.pry
nil
