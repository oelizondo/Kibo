class Array
  def binsearch(element)
    higher = self.length
    lower = 0
    half = higher / 2
    not_done = true

    return false if !element.is_a? Integer
    return false if self[self.length-1] < element

    while not_done
      if element == self[half]
        not_done = false
      elsif element < self[half]
        higher = half
        half = (half - lower) / 2
      else
        lower = half
        half = (higher + lower) / 2
      end
    end

    true
  end
end