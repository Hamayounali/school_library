require_relative '../classes/book'
require_relative '../classes/student'
require_relative '../classes/rental'

describe Rental do
  it 'Is an instance of Rental' do
    book = Book.new('React Redux', 'Hamid')
    student = Student.new(15, 'Wali')
    rental = Rental.new('13-10-2022', book, student)

    expect(rental).to be_instance_of(Rental)
  end
end