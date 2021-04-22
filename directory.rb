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
    puts "What month is your cohort?" 
    cohort_month = gets.chomp
    #add the student hash to the array
    students << {name: name, cohort: cohort_month, crime: my_crime, experience_level: exp_level }
    
    if students.count <= 1
      puts "Now we have #{students.count} student"
    else puts "Now we have #{students.count} students"
    end

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
  cohorts = students.map do |student|
      student[:cohort]
    end
    cohorts.uniq.each do |cohort|
      puts "#{cohort} cohort".capitalize.ljust(5)
        students.each do |student|
          puts "#{student[:name]} and the mischief is #{student[:crime]}" if student[:cohort] == cohort
        end
    end
end

def print_footer(names)
  if names.count <= 1
  puts "Overall, we have #{names.count} great student"
  else puts "Overall, we have #{names.count} great students"
  end
end
#nothing happens until we call methods

students = input_students
print_header
print(students)
print_footer(students)
