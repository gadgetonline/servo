# frozen_string_literal: true

class SidekiqJobJig < Servo::Job
  include Sidekiq::Worker

  def execute
    true
  end
end
