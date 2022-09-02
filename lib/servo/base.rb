# frozen_string_literal: true

module Servo
  class Base
    extend ActiveModel::Callbacks
    include ActiveModel::Validations
    include Interactor
    include Memery

    define_model_callbacks :validation

    delegate_missing_to :context

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

    def valid?
      run_callbacks :validation do
        super
      end
    end
  end
end
