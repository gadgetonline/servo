# frozen_string_literal: true

RSpec.describe Crank do
  context 'when a task sets its own result in the interactor context' do
    it 'does not change the result' do
      result = described_class.call
      expect(described_class.call.result).to be_truthy
    end
  end
end
