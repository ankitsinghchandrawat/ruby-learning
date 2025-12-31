# ================================
# SMART ACADEMIC PLATFORM (DEMO)
# ================================

# ---------- CONSTANT ----------
INSTITUTE_NAME = "Chameli Devi Group of Institutions"

# ---------- CLASS ----------
class Student
  @@total_students = 0     # class variable

  def initialize(name, roll, marks)
    @name = name           # instance variables
    @roll = roll
    @marks = marks
    @@total_students += 1
  end

  def grade
    case @marks
    when 0..40
      "Fail"
    when 41..60
      "Pass"
    when 61..75
      "Merit"
    when 76..100
      "Distinction"
    else
      "Invalid Marks"
    end
  end

  def display
    puts "------------------------------"
    puts "Name  : #{@name}"
    puts "Roll  : #{@roll}"
    puts "Marks : #{@marks}"
    puts "Grade : #{grade}"
  end

  def self.total_students
    @@total_students
  end
end

# ---------- METHOD ----------
def convert_marks(value)
  value.to_i
end

# ---------- ARRAY ----------
students = []

puts "Welcome to #{INSTITUTE_NAME}"
puts "------------------------------"

# ---------- LOOP ----------
loop do
  puts "\nMENU"
  puts "1. Add Student"
  puts "2. Show All Students"
  puts "3. Total Students"
  puts "4. Range Demo"
  puts "5. Exit"
  print "Enter choice: "

  choice = gets.to_i

  case choice
  when 1
    print "Enter name: "
    name = gets.chomp

    print "Enter roll number: "
    roll = gets.chomp

    print "Enter marks: "
    marks = convert_marks(gets)

    student = Student.new(name, roll, marks)
    students << student

    puts "Student added successfully ✔"

  when 2
    if students.empty?
      puts "No students found ❌"
    else
      students.each do |stu|
        stu.display
      end
    end

  when 3
    puts "Total Students: #{Student.total_students}"

  when 4
    puts "Range Example (1..5):"
    (1..5).each { |i| puts "Value: #{i}" }

  when 5
    puts "Thank you! Program Ended 👋"
    break

  else
    puts "Invalid Choice ❌"
  end
end
