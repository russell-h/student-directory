@students = [] #empty array accessible to all methods

def input_students 
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  
  #get the first name
  name = gets.chomp

  
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
    @students << {name: name, cohort: cohort_month, crime: my_crime, experience_level: exp_level }
    
    if @students.count <= 1
      puts "Now we have #{@students.count} student"
    else puts "Now we have #{@students.count} students"
    end

    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  @students
end


def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end


def print_menu
  #1. print the menu and ask the user what to do 
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" #9 because we'll be adding more items
  #2. read the input and save it into a variable
  #3. do what the user asked
end


def show_students
  print_header
  print_students_list(@students)
  print_footer(@students)
end

def process(selection)
  case selection
    when "1"
      students = input_students
    when "2"
      show_students
    when "9"
      exit #This will cause the program to exit
    else
      puts "I don't know what you meant, try again"
    
  end
end


def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students_list(student)
  cohorts = @students.map do |student|
      student[:cohort]
    end
    cohorts.uniq.each do |cohort|
      puts "#{cohort} cohort".capitalize.ljust(5)
        @students.each do |student|
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


interactive_menu
