require 'resque/plugins/queue/lock'

class CronJob
	extend Resque::Plugins::Queue::Lock
	@queue = :cron

	def self.perform
		puts "Running"
		sleep 5
    	puts "Ended at #{Time.now}"
	end	
	
end