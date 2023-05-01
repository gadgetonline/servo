# frozen_string_literal: true

require 'active_job'

module Servo
  class Foo < ::ActiveJob::Base
    include Callable

    def perform(**args)
      call(**args)
    end
  end
end

