# frozen_string_literal: true

module Servo
  class SidekiqJob
    include Callable

    if defined?(Sidekiq)
      include Sidekiq::Worker
    end
  end
end
