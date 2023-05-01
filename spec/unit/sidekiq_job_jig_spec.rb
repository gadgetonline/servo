# frozen_string_literal: true

RSpec.describe SidekiqJobJig do
  before(:all) do
    Rails.application.config.active_job.queue_adapter = :sidekiq
  end

  after(:all) do
    Rails.application.config.active_job.queue_adapter = :inline
  end

  it 'provides a perform method' do
    expect(described_class.new).to respond_to(:perform)
  end
end
