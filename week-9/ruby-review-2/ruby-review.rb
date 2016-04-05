# Introduction to Inheritance

# I worked on this challenge [by myself, with: ].


# Pseudocode
=begin
Properties:
L city 
G, L students
G name
G p0_start_date
G immersive_start_date
G graduation_date
G email_list
G, L num_of_students

Methods:
G, L add_student
G, L remove_student
G currently_in_phase
G graduated?
=end


# Initial Solution

class GlobalCohort
  
  attr_accessor :students, :name, :p0_start_date, :immersive_start_date, :graduation_date, :email_list
  
  def initialize(students, name, p0_start_date, immersive_start_date, graduation_date, email_list)
    @students = students
    @name = name
    @p0_start_date = p0_start_date
    @immersive_start_date = immersive_start_date
    @graduation_date = graduation_date
    @email_list = email_list
  end
  
  def num_of_students
    @students.length
  end
  
  def remove_student(student)
    @students.delete(student)
  end
  
  def currently_in_phase
    if Time.now < @p0_start_date
      puts "#{@name} has not started yet. It starts on #{p0_start_date}."
    elsif Time.now < @immersive_start_date
      puts "#{@name} is currently in Phase 0."
    elsif Time.now < @graduation_date
      puts "#{@name} is currently in Phase 1-3 on-campus."
    else
      puts "#{@name} graduated on #{@graduation_date}."
    end
  end
  
  def graduated?
    Time.now > @graduation_date ? true : false
  end
end

class LocalCohort < GlobalCohort
  
  attr_accessor :city, :students
  
  def initialize(students, city)
    @students = students
    @city = city
  end
  
  def num_of_students
    @students.count
  end
  
  def add_student(student)
    @students.push(student)
  end
  
  def remove_student(student)
    @students.delete(student)
  end

end


# Reflection
=begin
What concepts did you review in this challenge?

I reviewed classes and inheritance. It is a very powerful concept and will allow you to 
create multiple layers of objects.

What is still confusing to you about Ruby?

Ruby makes a lot of sense and is very well documented, with many useful methods. 
I really like the language from a human perspective.

What are you going to study to get more prepared for Phase 1?

Rails!

=end