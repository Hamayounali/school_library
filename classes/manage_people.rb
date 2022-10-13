require_relative './data_writer'
require_relative './data_reader'

class ManagePeople
  attr_accessor :persons

  def initialize(persons = [])
    @persons = persons
    @writer = FileWriter.new('persons.json')
    @reader = FileReader.new('persons.json')
    load_people
  end

  def add_student
    print 'Enter the name of the student: '
    name = gets.chomp.to_s
    print 'Enter the age of the student: '
    age = gets.chomp.to_i
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.to_s.downcase == 'y'
    student = Student.new(age, name, parent_permission: parent_permission)
    @persons << student

    @writer.write_data(student)

    puts "Student with id #{student.id} created"
  end

  def add_teacher
    print 'Enter the name of the teacher: '
    name = gets.chomp.to_s
    print 'Enter the age of the teacher: '
    age = gets.chomp.to_i
    print "And teacher's specialization: "
    specilization = gets.chomp.to_s
    teacher = Teacher.new(specilization, age, name)
    @persons << teacher

    @writer.write_data(teacher)

    puts "Student with id #{teacher.id} created"
  end

  def load_people
    @persons = @reader.read_data('Person')
    @persons
  end
end
