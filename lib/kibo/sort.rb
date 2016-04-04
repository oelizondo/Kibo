class Array
  def self.insertion_sort
    self.each_with_index |element, index|
      j = index + 2
      key = self[index+2]
      i = j - 1
      while i > 0 and self[i] > key
        
      end
    end
  end

  def self.merge_sort
  end

  def self.quick_sort
  end
end