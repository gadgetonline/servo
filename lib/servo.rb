# frozen_string_literal: true

require 'active_model'
require 'active_support'
require 'interactor'
require 'memery'
require 'wannabe_bool'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.log! if ENV.fetch('SERVO_DEBUG_LOADER', false).to_boolean
loader.tag = 'servo'
loader.enable_reloading
loader.setup

module Servo
end

loader.eager_load
