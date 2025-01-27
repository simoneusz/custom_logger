# frozen_string_literal: true

require_relative "custom_logger/railtie"

module CustomLogger
  class Error < StandardError; end

  class Logger
    def self.log_message(message = "eaweawewaeaw")
      logger = ActiveSupport::Logger.new($stdout)
      logger.info message
    end
  end
end
