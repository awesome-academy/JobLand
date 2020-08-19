# namespace :import do
#   desc "import country"
#   task import_country: :environment do
#      require 'mechanize'
#      agent = Mechanize.new
#      agent.get("http://vnexpress.net/")
#      countries = agent.page.search('a')
#      countries = countries.xpath('//a').map {|element| element["href"]}.compact

#      countries.each do |country|
#        News.create!(link: country.strip) if country.include?("http")
#      end
#   end
# end

 # rails import:import_country
