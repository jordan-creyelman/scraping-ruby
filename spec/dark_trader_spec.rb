require_relative '../lib/dark_trader'
require 'rubygems'
require 'nokogiri'   
require 'open-uri'
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/"))


describe "the program get data" do
  it " return crypto's symbol and crypto is not nil" do
    expect(crypto_price(page)).not_to be_nil
  end
end  
describe "the program get data" do
  it " return crypto's symbol and crypto is not nil" do
    
    expect(crypto_name(page)).not_to be_nil
  end
end  