# frozen_string_literal: true

module Servo
  class Base
    include ActiveModel::Validations
    include Interactor
    include Memery

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
  end
end
