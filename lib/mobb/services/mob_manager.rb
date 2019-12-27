# frozen_string_literal: true

module Mobb
  module Services
    class MobManager
      def roles
        @roles ||= %i[driver navigator mobber]
      end
    end
  end
end
