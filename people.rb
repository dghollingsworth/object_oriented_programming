class Person
  def initialize(name)
    @name = name
  end
  
  def greeting
  	"Hi my name is, #{@name}"
  end

  def to_s
  	greeting
  end
end

class Student < Person
  def learn 
  	"I get it"
  end
end

class Instructor < Person
  def teach
  	"Everything is Ruby is an Object"
  end
end

chris = Instructor.new("Chris")
cristina = Student.new("Cristina")

puts chris
puts cristina
puts chris.teach
puts cristina.learn
puts chris.learn
puts cristina.teach

#It doesn't work because the student and teach don't have access to eachothers information
#they only have access to what's in their own and their parent's class

