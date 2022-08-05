# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Crank do
  context 'when a task sets its own result in the context' do
    it 'does not change the result in the context' do
      expect(described_class.call.result).to be_truthy
    end
  end
end
