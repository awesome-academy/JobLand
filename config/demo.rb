require 'mechanize'

url = "http://google.com"

agent = Mechanize.new

page = agent.get(url)

page.links.each do |link|
    puts
    puts link.text
    puts link.href
end

puts "Total Number of Links : #{page.links.count}"
