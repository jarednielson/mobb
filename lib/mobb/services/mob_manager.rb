# frozen_string_literal: true

module Mobb
  module Services
    class MobManager
      def roles
        @roles ||= %w[driver navigator mobber]
      end
    end
  end
end
