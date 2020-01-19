# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Mobb::Services::MobManager do
  let(:mobbers) { %i[Jared Andy Jeff] }

  it 'has default roles' do
    expect(described_class::DEFAULT_ROLES).to match_array %i[driver navigator mobber]
  end

  describe '#roles' do
    context 'when roles are not given' do
      subject { described_class.new(mobbers: mobbers).roles }

      it 'has driver, navigator, mobber' do
        expect(subject).to match_array %i[driver navigator mobber]
      end
    end

    context 'when roles are given' do
      let(:roles) { %i[driver navigator slacker] }
      subject { described_class.new(roles: roles, mobbers: mobbers).roles }

      it 'uses the given roles' do
        expect(subject).to match_array roles
      end
    end
  end

  describe '#mobbers' do
    let(:mobbers) { %i[Jeff Jared Andy] }
    subject { described_class.new(mobbers: mobbers).mobbers }

    it 'has mobbers' do
      expect(subject).to match_array mobbers
    end
  end
end
