# frozen_string_literal: true

require 'active_model'
require 'active_support'
require 'interactor'
require 'memery'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup

module Servo
end

loader.eager_load
