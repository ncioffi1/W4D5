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

end
