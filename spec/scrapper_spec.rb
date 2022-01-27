require_relative '../lib/scrapper.rb'

describe "puts the symbols into an array" do
  it "should return the good symbol" do
    expect(scrap_symb[3]).to eq("BNB")
  end 
end

describe "puts the prices into an array" do
  it "should return the good price" do
    expect(scrap_prices[3]).to eq("$373.44")
  end 
end

#describe "puts the symbols and prices into an hash" do
  #it "should return the right symbol with its price" do
    #expect(hashing(scrap_symb, scrap_prices)).to eq("BTC
      #$36,639.69
      #ETH
      #$2,482.18
      #USDT
      #$1.00
      #BNB
      #$373.44
      #USDC
      #$1.00
      #ADA
      #$1.06
      #$92.88
      #XRP
      #$0.6126
      #LUNA
      #$59.86
      #DOGE
      #$0.1431
      #DOT
      #$18.16
      #AVAX
      #$66.58
      #BUSD
      #$0.9997
      #MATIC
      #$1.64
      #SHIB
      #$0.00002111
      #UST
      #$1.00
      #CRO
      #$0.4018
      #WBTC
      #$36,642.15
      #DAI
      #$1.00
      #ATOM
      #$31.34")
  #end 
#end
