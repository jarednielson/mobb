# frozen_string_literal: true

module Mobb
  module Services
    class MobManager
      DEFAULT_ROLES = %i[driver navigator mobber].freeze

      def roles
        @roles ||= DEFAULT_ROLES
      end
    end
  end
end
