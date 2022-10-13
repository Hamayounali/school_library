require_relative '../classes/book'

describe 'Test the Book class' do
  it 'should create a new book' do
    book = Book.new('Test Book', 'H Babur')
    expect(book.title).to eq('Test Book')
    expect(book.author).to eq('H Babur')
  end
end
