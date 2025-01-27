require 'rails/railtie'

module CustomLogger
  class Railtie < Rails::Railtie
    rake_tasks do
      load "task/custom_logger.rake"
    end
  end
end