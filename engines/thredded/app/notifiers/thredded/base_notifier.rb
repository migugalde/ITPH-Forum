# frozen_string_literal: true

module Thredded
  class BaseNotifier
    def self.validate_notifier(notifier)
      unless notifier.respond_to?(:key) && /^[a-z_]+$/.match(notifier.key)
        fail "Notifier problem: #{notifier.class.name} must respond to #key with a snake_case string"
      end
      %i[human_name new_post new_private_post].each do |m|
        unless notifier.respond_to?(m)
          fail "#{notifier.class.name} must respond to ##{m}"
        end
      end
    end

    class NotificationsDefault
      def initialize(enabled)
        @enabled = enabled
      end

      attr_reader :enabled

      def enabled?
        enabled
      end
    end
  end
end
