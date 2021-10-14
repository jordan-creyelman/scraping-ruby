require 'rubygems'
require 'nokogiri'   
require 'open-uri'
page= Nokogiri::HTML(URI.open("https://coinmarketcap.com/"))

def name(page)
  name= page.xpath('//tr[*]/td[3]').collect(&:text)
  i=0
  j=1
  while i<name.length do
    j=j.to_s
    name[i]= name[i].gsub("Buy","")
    name[i] = name[i].gsub(j,"")
    j = j.to_i
    j+=1
    i+=1
  end
  name
end

def price(page)
 page.xpath('//tr[*]/td[4]').collect(&:text)
  
end

def hash(page)
  name=name(page)
  price = price(page)
  tableau = Hash[name.zip(price)]
  puts tableau
end
# hash(page)