# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
every 8.hours do
  command "rails import:import_country"
  runner "rails import:import_country"
end

set :environment, "development"
# every 1.day, :at => "8:00am" do
#     rails "UserMailer.mail_month(course).deliver_now"
# end
# #để kiểm soát lỗi gửi mail hệ thống
# set :output, ".../log.log" #đường dẫn tuyệt đối

every 1.day, :at => "10:41am" do
   rake 'job:mailmonth'
end

