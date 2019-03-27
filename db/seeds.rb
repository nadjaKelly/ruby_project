require("pry")
require_relative('../models/animal')
require_relative('../models/owner')

Animal.delete_all()
Owner.delete_all()

animal1 = Animal.new({
  "name" => "Dixie",
  "age" => "2 Years",
  "breed" => "Noodle-Poodle",
  "adoptable" => true,
  "admission" => '2018-12-01',
  "notes" => 'loves children, house-trained',
  "image" => '../public/images/Dixie.jpg'
})

animal2 = Animal.new({
  "name" => "Dustie",
  "age" => "3 months",
  "breed" => "Border Collie",
  "adoptable" => true,
  "admission" => '2018-12-01',
  "notes" => "very good with kids, house-trained, barks often, loves to run.",
  "image" => '../public/images/Dustie.jpg'
})

animal3 = Animal.new({
  "name" => "King",
  "age" => "3 months",
  "breed" => "Mixed Breed",
  "adoptable" => false,
  "admission" => '2018-11-01',
  "notes" => 'very playful, likes long walks, good with large family',
  "image" => '../public/images/King.jpg'
})

animal4 = Animal.new({
  "name" => "Bella",
  "age" => "3 Years",
  "breed" => "Labrador",
  "adoptable" => false,
  "admission" => '2018-09-01',
  "notes" => 'loves long walks, needs active family, loves cuddl',
  "image" => '../public/images/Bella.jpg'
  })

  animal5 = Animal.new({
    "name" => "Gipsy",
    "age" => "2 Years",
    "breed" => "German Shepherd",
    "adoptable" => true,
    "admission" => '2018-08-01',
    "notes" => 'loves to run, very active, loves water',
    "image" => '../public/images/Gipsy.jpg'
  })

  animal6 = Animal.new({
    "name" => "Harry",
    "age" => "4 Years",
    "breed" => "Mixed-Breed",
    "adoptable" => true,
    "admission" => '2018-11-01',
    "notes" => "good dog, loves to play, friendly, loves belly rubs",
    "image" => '../public/images/Harry.jpg'
    })

animal1.save()
animal2.save()
animal3.save()
animal4.save()
animal5.save()
animal6.save()

owner1 = Owner.new({
  "name" => "Peter Fonda",
  "tel" => "1234567",
  "resType" => "Appartment",
  "garden" => "  yes, a small one",
  "otherPets" => "Bird"})

owner2 = Owner.new({
  "name" => "James Bond",
  "tel" => "2345678",
  "resType" => "Beach House",
  "garden" => "beach and small garden lot",
  "otherPets" => "Horse"})

owner3 = Owner.new({
  "name" => "Mickey Mouse",
  "tel" => "3456789",
  "resType" => "Treehouse",
  "garden" => "yes, large garden",
  "otherPets" => "dog"})

owner1.save()
owner2.save()
owner3.save()


binding.pry
nil
