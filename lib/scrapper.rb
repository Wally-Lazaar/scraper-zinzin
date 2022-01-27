require 'pry'
require 'rubygems'
require 'nokogiri'
require 'open-uri'



  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

def scrap_symb
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
  symbol = []
    page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--hide-sm cmc-table__cell--sort-by__symbol"]').each do |node|
    symbol << node.text
    end
    return symbol
end

def scrap_prices
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
  price = []
    page.xpath('//td [@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]').each do |prix|
    price << prix.text
    end
    return price
end

def hashing(symb2, price2)
  tableau3 = Hash[symb2.zip (price2)].to_a
  return tableau3
end


def perform
  symbol = scrap_symb()
  price = scrap_prices()
  tab_final = hashing(scrap_symb, scrap_prices)
  puts tab_final
  
end

perform






