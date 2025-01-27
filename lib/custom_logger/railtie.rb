# frozen_string_literal: true

require "rails/railtie"

module CustomLogger
  # Class for custom logging in rails commands
  class Railtie < Rails::Railtie
    initializer "custom_logger.configure_rails_initialization" do
      messages = Rails.configuration.custom_logger

      CustomLogger::Logger.log_message messages['startup_message']

      if defined?(Rails::Console)
        CustomLogger::Logger.log_message messages['console_message']
      end

      if defined?(Rails::Server)
        CustomLogger::Logger.log_message "Starting Rails server..."
      end
    end
  end
end