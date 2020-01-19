# frozen_string_literal: true

module Mobb
  module Services
    class MobManager
      DEFAULT_ROLES = %i[driver navigator mobber].freeze
      attr_reader :roles, :mobbers

      def initialize(mobbers:, roles: DEFAULT_ROLES)
        @roles = roles
        @mobbers = mobbers
      end
    end
  end
end
