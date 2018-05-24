namespace :dev do
  desc "auto confirm email addresses for paying customer"
  task :ping => :environment do
    puts "pong"
  end
end