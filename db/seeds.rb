require('pry')
require_relative('../models/student')
require_relative('../models/house')

Student.delete_all()


harry = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'age' => 11,
  'house' => 'Griffindor'
  });

harry.save()

hermione = Student.new({
  'first_name' => 'Hermione',
  'last_name' => 'Granger',
  'age' => 10,
  'house' => 'Griffindor'
  });

hermione.save()

draco = Student.new({
  'first_name' => 'Draco',
  'last_name' => 'Malfoy',
  'age' => 13,
  'house' => 'Slytherin'
  });

  draco.save()

  ian = Student.new({
    'first_name' => 'Ian',
    'last_name' => 'Neilson',
    'age' => 28,
    'house' => 'Slytherin'
    })

ian.save()

griffindor = House.new({
'name' => "Griffindor",
'student_id' => harry.id
  });

griffindor.save()

slytherin = House.new({
  'name' => 'Slytherin',
  'student_id'=> draco.id
  })

  slytherin.save

  hufflepuff = House.new({
    'name' => 'Hufflepuff',
    'student_id'=> hermione.id
    })

    hufflepuff.save

    ravenclaw = House.new({
      'name' => 'Ravenclaw',
      'student_id'=> harry.id
      })

      ravenclaw.save


binding.pry
nil
