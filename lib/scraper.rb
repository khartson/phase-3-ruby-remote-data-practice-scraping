require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(URI.open("https://flatironschool.com/"))
doc.css('.heading-20-semibold').each do |c|
    puts c.text.strip
end 