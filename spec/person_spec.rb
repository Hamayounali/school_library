require_relative '../classes/person'

describe 'Test the Person class' do
  it 'should creates a new person' do
    person = Person.new(25, 'Hamayoun')
    expect(person.id).instance_of?(Integer)
    expect(person.age).to eq(25)
    expect(person.name).to eq('Hamayoun')
  end
end