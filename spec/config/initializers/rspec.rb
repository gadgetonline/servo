# frozen_string_literal: true

RSpec.configure do |config|
  config.define_derived_metadata do |meta|
    meta[:aggregate_failures] = true
  end

  config.example_status_persistence_file_path = 'spec/failures.txt'
  config.filter_run focus: true
  config.formatter = :documentation
  config.include FactoryBot::Syntax::Methods
  config.run_all_when_everything_filtered = true
end
