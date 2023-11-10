require 'rspec'
require_relative '../lib/tdd.rb'

describe "#my_uniq" do
  it "returns uniq elements in the order they appear" do
    expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
  end

  it 'returns new array, does not mutate original array' do
    test_array = [1, 2, 1, 3, 3]
    expect(test_array.my_uniq).to_not be(test_array)
  end
end



describe "#two_sum" do
  it "returns pairs in array that sum to zero and is sorted" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end

end


describe "my_transpose" do
  it "takes in a matrix and returns rows and columns swapped" do
    mat = [[0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]]
    solution = [[0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]]
    expect(my_transpose(mat)).to eq(solution)
  end
end

describe "stock_picker" do
  it "takes an array of prices and outputs most profitable pair of days" do
    expect(stock_picker([ 1, 5, 2, 10, 3, 11, 19, 9])).to eq([0, 6])
  end

  it "checks that first index isn't greater than second index" do
    result = stock_picker([ 1, 5, 2, 10, 3, 11, 19, 9])
    expect(result[0] < result[1]).to be_truthy
  end

  it "makes sure you can't sell stock before you buy it" do
    expect(stock_picker([ 19, 5, 2, 10] )).to eq([2, 3])
  end
end
