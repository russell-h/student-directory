def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []

  name = gets.chomp

    while !name.empty? do
      # add the student hash to the array
      students << {name: name, cohort: 'november'}



      name = gets.chomp
    end

   students
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  if names.empty?
    puts "We don't have any students yet!"
  else
    puts "Overall, we have #{names.count} great students"
  end
end

students = input_students
print_header
print(students)
print_footer(students)
