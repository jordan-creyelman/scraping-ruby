require 'rubygems'
require 'nokogiri'   
require 'open-uri'
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/"))
# puts city = page.css('span')
def name(page)
  name_crypto= page.xpath('//tr[*]/td[3]').collect(&:text)
end

def price(page)
  # symbol_crypto_array = page.xpath('//tr[*]/td[5]').collect(&:text)
  price_crypto = page.xpath('//tr[*]/td[4]').collect(&:text)
  
end

def hash(page)
  name=name(page)
  price = price(page)
  tableau = Hash[name.zip(price)]
  puts tableau
end

hash(page)