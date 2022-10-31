# frozen_string_literal: true

module Servo
  class Base
    extend ActiveModel::Callbacks
    include ActiveModel::Validations
    include Interactor
    include Memery

    define_model_callbacks :validation

    def call
      if valid?
        result           = execute
        context.result ||= result
        return
      end

      context.fail!(
        errors:         errors,
        error_messages: errors.full_messages
      )
    end

    def execute; end

    def method_missing(method, *args, &block)
      context.public_send(method, *args, &block)
    end

    #
    # The `context` responds to any method. If the context
    # lacks the key, it returns nil.
    def respond_to_missing?(_method_name, _include_private = false)
      true
    end

    def valid?
      run_callbacks :validation do
        super
      end
    end
  end
end
