require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

list = doc.css('.components-list').each do |ingredient|
    puts ingredient.content
end
