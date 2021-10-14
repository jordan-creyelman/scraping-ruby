require_relative '../lib/dark_trader'
require 'rubygems'
require 'nokogiri'   
require 'open-uri'
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/"))


describe "function price crypto" do
  it "says hello" do
    expect(hash(page))..to include("BitcoinBTC")
  end
end

