# frozen_string_literal: true

RSpec.describe 'whatever' do
  before(:all) do
    Rails.application.config.active_job.queue_adapter = :inline
  end

  it 'includes the ActiveJob modules' do
    r = Servo::Foo.perform_now(x: 1, y: 2)
    s = Servo::Foo.call(z: 2, w: 3)
    t = Servo::Bar.perform_async(a: 1, b: 2)
    debugger
    expect(ActiveJobJig.ancestors).to include(ActiveJob::Execution)
  end

  it 'responds to perform_now' do
    expect(ActiveJobJig).to respond_to(:perform)
  end

  it 'executes a job' do
    expect(ActiveJobJig.perform_now).to be_truthy
  end
end
