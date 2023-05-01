# frozen_string_literal: true

class ActiveJobJig < Servo::ActiveJob
  def perform(**args)
    call(**args)
  end

  def execute
    true
  end
end
