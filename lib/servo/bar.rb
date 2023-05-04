# frozen_string_literal: true

require 'sidekiq'

module Servo
  class Bar < SidekiqJob
    include Callable

    if defined?(Sidekiq)
      include Sidekiq::Worker
    end

    def perform(**args)
      call(**args)
    end
  end
end

