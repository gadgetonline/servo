# frozen_string_literal: true

class Crank
  include Servo::Callable

  def execute
    context.result = true
    false
  end
end
