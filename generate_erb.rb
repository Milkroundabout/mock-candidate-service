# generate erb file that contains dummy JSON
require 'ostruct'
require 'ffaker'
require 'json'

candidates = []
20.times do
  candidates << {
    name: FFaker::Name.name,
    email: FFaker::Internet.email,
    accept: "accept",
    accepted_days: [Time.now.strftime("%Y-%m-%d")]
  }
end

output = {data: candidates}
json = JSON.generate(output)
puts "Saving ERB"
File.open("views/index.erb", 'w') do |f|
  f.puts json
  f.close
end
