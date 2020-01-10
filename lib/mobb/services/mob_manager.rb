# frozen_string_literal: true

module Mobb
  module Services
    class MobManager
      DEFAULT_ROLES = %i[driver navigator mobber].freeze

      def initialize(roles: DEFAULT_ROLES)
        @roles = roles
      end

      def roles
        @roles ||= DEFAULT_ROLES
      end
    end
  end
end
