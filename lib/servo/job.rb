# frozen_string_literal: true

module Servo
  class Job < Base
    def self.active_job_modules
      [
        ActiveJob::Arguments,
        ActiveJob::Callbacks,
        ActiveJob::Core,
        ActiveJob::Enqueuing,
        ActiveJob::Exceptions,
        ActiveJob::Execution,
        ActiveJob::QueueAdapter,
        ActiveJob::QueueAdapters,
        ActiveJob::QueueName,
        ActiveJob::QueuePriority,
        ActiveJob::Serializers,
        ActiveJob::TestHelper,
        ActiveJob::VERSION
      ].freeze
    end

    def self.active_job_required?(subclass)
      return false unless defined?(Rails) && defined?(ActiveJob::Core)
      return false if subclass.ancestors.include?(ActiveJob::Core)
      return false unless Rails.application.config.respond_to?(:active_job)

      %i[inline async].include?(Rails.application.config.active_job.queue_adapter)
    end

    def self.inherited(subclass)
      super

      if active_job_required?(self)
        active_job_modules.each do |module_name|
          self.include(*active_job_modules)
        end

        return
      end

      return unless sidekiq_required?(subclass)

      subclass.include(Sidekiq::Job)
    end

    def self.sidekiq_required?(subclass)
      return false unless defined?(Sidekiq)
      return false unless Rails.application.config.respond_to?(:active_job)
      return false if subclass.ancestors.include?(Sidekiq::Job)

      Rails.application.config.active_job.queue_adapter == :sidekiq
    end

    private_class_method :active_job_required?, :sidekiq_required?
  end
end
