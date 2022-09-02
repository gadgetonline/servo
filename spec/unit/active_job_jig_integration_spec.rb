# frozen_string_literal: true

RSpec.describe 'whatever' do
  before(:all) do
    Rails.application.config.active_job.queue_adapter = :inline
  end

  it 'includes the ActiveJob modules' do
    expect(ActiveJobJig.ancestors).to include(ActiveJob::Execution)
  end

  it 'responds to perform_now' do
    expect(ActiveJobJig).to respond_to(:perform_now)
  end

  it 'executes a job' do
    expect(ActiveJobJig.perform_now).to be_truthy
  end
end
