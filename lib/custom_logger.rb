# frozen_string_literal: true

require_relative "custom_logger/railtie"

module CustomLogger
  class Error < StandardError; end

  # Logger base class with log_message method
  class Logger
    def self.log_message(message = "Default log message")
      logger = ActiveSupport::Logger.new($stdout)
      logger.info message
    end
  end
end
