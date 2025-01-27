# frozen_string_literal: true

require "rails/railtie"

module CustomLogger
  # Class for integration with rails
  class Railtie < Rails::Railtie
    rake_tasks do
      load "task/custom_logger.rake"
    end
  end
end
