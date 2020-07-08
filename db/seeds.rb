require('pry')
require_relative('../models/student')
require_relative('../models/house')

House.delete_all()
Student.delete_all()

house1 = House.new({
    'name' => 'Gryffindor',
    'logo' => 'https://p1.hiclipart.com/preview/542/343/666/harry-potter-gryffindor-logo-thumbnail.jpg'
})
house1.save()

house2 = House.new({
    'name' => 'Hufflepuff',
    'logo' => 'https://p1.hiclipart.com/preview/648/903/749/hufflepuff-logo-badge-print-png-clipart-thumbnail.jpg'
})
house2.save()

house3 = House.new({
    'name' => 'Ravenclaw',
    'logo' => 'http://www.pngmart.com/files/12/Ravenclaw-House-PNG-Transparent-Image.png'
})
house3.save()

house4 = House.new({
    'name' => 'Slytherin',
    'logo' => 'https://p7.hiclipart.com/preview/546/868/914/slytherin-house-hogwarts-harry-potter-gryffindor-ravenclaw-house-harry-potter-thumbnail.jpg'
})
house4.save()

student1 = Student.new({
    'first_name' => 'Harry',
    'last_name' => 'Potter',
    'house' => house1.id,
    'age' => "12"
})
student1.save()

student2 = Student.new({
    'first_name' => 'Hermione',
    'last_name' => 'Granger',
    'house' => house1.id,
    'age' => "13"
})
student2.save()

student3 = Student.new({
    'first_name' => 'Draco',
    'last_name' => 'Malfoy',
    'house' => house4.id,
    'age' => "14"
})
student3.save()



binding.pry
nil