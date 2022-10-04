require_relative 'baseDecorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.slice(0, 10) if name.size > 10
  end
end