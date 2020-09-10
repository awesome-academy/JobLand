namespace :import do
  desc "import country"
  task import_country: :environment do
     require 'mechanize'
     require 'nokogiri'
     agent = Mechanize.new
     agent.get("https://vnexpress.net/")
     countries = agent.page.search('h3 a')
     # countries = countries.xpath('//a').map {|element| element["href"]}.compact
     countries.each do |country|
       # News.create!(content: country.strip) if country.include?("http")
      News.create!(content: country.text.strip)
     end
  end
end

 # rails import:import_country

