# frozen_string_literal: true

module Servo
  class ActiveJob < ActiveJob::Base
    include Callable

    def perform(**args)
      call(**args)
    end
  end
end

