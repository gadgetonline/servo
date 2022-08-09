# frozen_string_literal: true

class ActiveJobJig < Servo::Job
  def perform(...)
    self.class.call(...)
  end

  def execute
    true
  end
end
