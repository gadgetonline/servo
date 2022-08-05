# frozen_string_literal: true

class Crank < Servo::Base
  def execute
    context.result = true
    false
  end
end
