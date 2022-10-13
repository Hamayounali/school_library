require_relative '../classes/classroom'

describe Classroom do
  it 'should have a label' do
    classroom = Classroom.new('History')
    expect(classroom.label).to eq('History')
    expect(classroom.students.length).to eq(0)
  end

  it 'should have a student' do
    classroom = Classroom.new('History')
    expect(classroom.students).to eq([])
  end
end
