def input_students 
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp

  #add a default value if no input given
  if name.empty? 
    name = 'default value'
  end

  #while the name is not empty, repeat this code
  while !name.empty? do 
    puts "What is your crime"
    my_crime = gets.chomp
    puts "What is your experience, high or low?" 
    exp_level = gets.chomp
    #add the student hash to the array
    students << {name: name, cohort: :november, crime: my_crime, experience_level: exp_level }
    
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  puts "Only display name if starts with letter.."
  letter = gets.chomp 
  students.each_with_index do |student, index|
  #only list names beginning with first letter....
    if student[:name].chars.first == letter
      puts " #{index}: #{student[:name]} (#{student[:cohort]} cohort) and my crime is #{student[:crime]} at a #{student[:experience_level]} level of experience".center(100)
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call methods

students = input_students
print_header
print(students)
print_footer(students)
