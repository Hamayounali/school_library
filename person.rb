class Person
    def initialize (name = 'Unknown', age, parent_permission: true)
        @id = Random.rand(1...1000)
        @age = 22
        @name = name
        @parent_permission = parent_permission
    end

    attr_reader :id, :name, :age
    attr_writer :name, :age

    private

    def can_use_services?
        if is_of_age? || @parent_permission
            true
        else
            false
        end
    end

    def is_of_age?
        @age >= 18
    end
end
