# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Mobb::Services::MobManager do
  describe '#roles' do
    subject { described_class.new.roles }

    it 'has driver, navigator, mobber' do
      expect(subject).to match_array %i[driver navigator mobber]
    end
  end
end
