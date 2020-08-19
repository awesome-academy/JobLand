namespace :job do
  desc "send mail"
  task mailmonth: :environment do
    SendEmailJob.set(wait: 1.minutes).perform_later
  end
end