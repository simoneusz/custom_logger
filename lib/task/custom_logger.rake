namespace :custom_logger do
  desc 'Log custom message to Rails logs'
  task :log_message, [:message] => :environment do |_task, args|
    CustomLogger::Logger.log_message(args.to_a.join(' '))
  end
end