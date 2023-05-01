# frozen_string_literal: true

class SidekiqJobJig < Servo::SidekiqJob
  include Sidekiq::Worker

  def execute
    true
  end
end
