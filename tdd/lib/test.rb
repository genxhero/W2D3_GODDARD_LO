class Array
  def my_uniq
    uniques = []
    self.each do |el|
      uniques << el unless uniques.include?(el)
    end
    uniques
  end

  def two_sum
    result = []
    (0...self.count).each do |idx1|
      (0...self.count).each do |idx2|
        if self[idx1] + self[idx2] == 0
          result << [idx1, idx2].sort unless idx1 == idx2
        end
      end
    end
    result.my_uniq
  end

  def my_transpose
    transpose = []
    (0...self.length).each do |row|
      sub_arr = []
      (0...self.length).each do |col|
        sub_arr << self[col][row]
      end
      transpose << sub_arr
    end
    transpose
  end
end
