require_relative 'base_decorator'

class Trimmer_decorator < Base_decorator
  def correct_name
    @nameable.slice(0, 10) if name.size > 10
  end
end
