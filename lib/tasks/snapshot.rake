namespace :snapshot do

  desc "Import snapshot data"
  task :import, [:path_to_file] => :environment do |t, args|
    unless args[:path_to_file]
      puts "no file provided"
      exit
    end

    puts "reading file #{args[:path_to_file]}"
    success_count = 0
    File.readlines(args[:path_to_file]).each do |line|
      next if line[0] == "#" or line.chop == ""

      address, amount = line.gsub(/ +/,' ').split(' ')

      if Qtum.valid_address?(address) && amount.to_i > 0
        begin
          Bfcy.create!(qtum_address: address, amount: amount.to_i)

          success_count += 1
        rescue Exception => e
          puts "ERROR 102: #{address}, #{amount} (#{e})"
        end
      else
        puts "ERROR 101: #{address}, #{amount}"
      end

    end rescue puts "file open failed"

    puts "=="*12
    puts "Successfully processed #{success_count} records"

  end
end