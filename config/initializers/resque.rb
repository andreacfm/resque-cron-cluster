Resque.redis.namespace = "resque-cron-test"

require 'resque-scheduler'
require 'resque/scheduler/server'

schedule_config = "#{Rails.root}/config/schedule.yml"
Resque.schedule = YAML.load_file(schedule_config)
