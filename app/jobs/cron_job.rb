#require 'resque/plugins/queue/lock'

class CronJob
	#extend Resque::Plugins::Queue::Lock
	@queue = :cron

	def self.perform
		Rake::Task['cron_one'].invoke
	end	
	
end