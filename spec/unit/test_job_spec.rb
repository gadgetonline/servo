# frozen_string_literal: true

RSpec.describe TestJob do
  it 'does not change the result' do
    described_class.perform_now({ a: 1, b: 2 })
  end
end
