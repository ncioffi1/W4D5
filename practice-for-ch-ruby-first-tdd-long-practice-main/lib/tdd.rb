class Array
  def my_uniq
    unique_elements = []
    self.each do |el|
      unique_elements << el unless unique_elements.include?(el)
    end
    unique_elements
  end


  def two_sum
    pairs = []
    (0...length).each do |i|
      (i+1...length).each do |j|
        pairs << [i, j] if self[i] + self[j] == 0
      end
    end
    pairs
  end
end

def my_transpose(matrix)
  transposed = []
  matrix.each_index do |i|
    sub_arr = []
    matrix.each_index do |j|
      sub_arr << matrix[j][i]
    end
    transposed << sub_arr
  end
  return transposed
end

def stock_picker(prices)
  highest_range = [0, 1]
  highest_value = 0
  (0...prices.length).each do |i|
    (i + 1...prices.length).each do |j|
      range = prices[j] - prices[i] 
      if range > highest_value
        highest_value = range 
        highest_range = [i, j]
      end
    end
  end
  return highest_range
end

# mat = [
#   [0, 1, 2],
#   [3, 4, 5],
#   [6, 7, 8]
# ]
# p my_transpose(mat)
