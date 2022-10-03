class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1...1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_accessor :id, :name, :age

  private

  def can_use_services?
    if of_age? || @parent_permission
      true
    else
      false
    end
  end

  def of_age?
    @age >= 18
  end
end
