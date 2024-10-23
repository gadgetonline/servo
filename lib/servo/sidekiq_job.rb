# frozen_string_literal: true

module Servo
  class SidekiqJob
    include Callable
    include Sidekiq::Worker if defined?(Sidekiq)
  end
end
