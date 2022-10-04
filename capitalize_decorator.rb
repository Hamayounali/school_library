require_relative 'base_decorator'

class Capitalize_decorator < Base_decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
