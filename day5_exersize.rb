#day5_exersize
#net/http library and URI
require 'net/http'

url = URI.parse('http://satishtalim.github.com/webruby/chapter3.html')
Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  bod = http.request(req).body
  puts "net/http result: " 
  puts bod.scan("the").count
end


#open-uri
require "open-uri"

f = open('http://satishtalim.github.com/webruby/chapter3.html')
html = f.readlines.join
puts "open-uri result: " 
puts html.scan("the").count


#Hpricot
require "open-uri"
require "hpricot"

page = Hpricot(open('http://satishtalim.github.com/webruby/chapter3.html'))
puts "Hpricot result: " 
puts page.inner_html.scan("the").count


#Nokogiri
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://satishtalim.github.com/webruby/chapter3.html"))
puts "Nokogiri result: " 
puts doc.to_s.scan("the").count