require 'custom_logger'

module Rails
  module Command
    class LogMessageCommand < Base
      def perform(*args)
        message = args.empty? ? "Default log message" : args.join(" ")
        CustomLogger::Logger.log_message(message)
      end
    end
  end
end