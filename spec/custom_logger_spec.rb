# frozen_string_literal: true

require "spec_helper"
require "custom_logger"

RSpec.describe CustomLogger::Logger do
  describe ".log_message" do
    subject(:logger) { instance_double("ActiveSupport::Logger") }

    before do
      allow(ActiveSupport::Logger).to receive(:new).and_return(logger)
      allow(logger).to receive(:info)
    end

    it "logs the provided message" do
      CustomLogger::Logger.log_message("Hello, World!")
      expect(logger).to have_received(:info).with("Hello, World!")
    end

    it "logs the default message if none is provided" do
      CustomLogger::Logger.log_message
      expect(logger).to have_received(:info).with("Default log message")
    end
  end
end
