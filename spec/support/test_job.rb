# # frozen_string_literal: true

# class ActiveJobJig < Servo::Job
#   def execute
#     true
#   end
# end

class TestJob < Servo::ActiveJob
  include Interactor

  def call
    puts :EKKKK
    context.result = true
    false
  end

  def perform(...)
    call(...)
  end
end

