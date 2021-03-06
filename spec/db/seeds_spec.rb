# frozen_string_literal: true

require 'rails_helper'
require 'rake'

RSpec.describe 'db:seed' do
  subject { Rake::Task['db:seed'] }

  before { Rails.application.load_tasks }

  it 'runs all default seedfiles without error' do
    expect { subject.execute }.not_to raise_error
    subject.reenable
  end
end
