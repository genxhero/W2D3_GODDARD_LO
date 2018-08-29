require "stock_picker"

describe "stock_picker" do
  let(:nasdaq){[1200,980,750, 2000,9001,205,602]}
  let(:sandwich){["Toast", "Cheese", "Bacon"]}
  it "outputs the day when the price is lowest" do
    expect(stock_picker(nasdaq)).to include("5")
  end
  it "outputs the day when the pice is highest" do
    expect(stock_picker(nasdaq)).to include("4")
  end
  it "throws an error when anything other than an array of integers is passed" do
    expect{stock_picker(sandwich)}.to raise_error(ArgumentError)
  end
end
