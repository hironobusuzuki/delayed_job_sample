require 'device'

namespace :sample do
  desc 'without delayed_job'
  task :sync => :environment do
    puts 'sync starts'

    User.all.each do |user|
      device = Device.new
      user.activate!(device)
    end

    puts 'sync ends'
  end
  desc 'with delayed_job'
  task :async => :environment do
    puts 'async starts'

    User.all.each do |user|
      device = Device.new
      user.delay.activate!(device)
    end

    puts 'async ends'
  end
end
