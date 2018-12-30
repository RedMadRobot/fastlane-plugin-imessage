module Fastlane
  module Actions
    class ImessageAction < Action
      def self.run(params)
        Fastlane::Actions.sh "open --background -a Messages"
        Helper::ImessageHelper.delay

        apple_script =  %{tell application "Messages" }
        apple_script << %{to send "#{params[:text]}" }
        apple_script << %{to buddy "#{params[:to]}" }
        apple_script << %{of (1st service whose service type = iMessage)}

        Fastlane::Actions.sh "osascript -e '#{apple_script}'"
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "send imessage"
      end

      def self.authors
        ["Alexander Ignition"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :text,
                                       env_name: "FL_IMESSAGE_TEXT",
                                       description: "Text of the message to be sent",
                                       verify_block: proc do |value|
                                         UI.user_error!("No text") if value.to_s.length == 0
                                       end),
          FastlaneCore::ConfigItem.new(key: :to,
                                       env_name: "FL_IMESSAGE_BUDDY",
                                       description: "message buddy",
                                       verify_block: proc do |value|
                                         UI.user_error!("No to buddy") if value.to_s.length == 0
                                       end)
        ]
      end

      def self.is_supported?(platform)
        true
      end

      def self.example_code
        [
          'imessage(
            to: "123456"
            text: "App successfully released!"
          )'
        ]
      end

      def self.category
        :notifications
      end
    end
  end
end
