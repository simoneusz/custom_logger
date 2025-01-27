# frozen_string_literal: true

require "rails/command"
require "rails/commands/log_message/log_message_command"
require "spec_helper"

RSpec.describe Rails::Command::LogMessageCommand do
  subject(:logger) { CustomLogger::Logger }
  describe "#perform" do
    it "logs the provided message" do
      expect(logger).to receive(:log_message).with("Hello, World!")
      Rails::Command::LogMessageCommand.new.perform("Hello, World!")
    end

    it "logs the default message with no arguments" do
      expect(logger).to receive(:log_message).with("Default log message")
      Rails::Command::LogMessageCommand.new.perform
    end
  end
end
