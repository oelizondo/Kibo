module Kibo
  class Search

    def self.bsearch(arr, element)
      higher = arr.length
      lower = 0
      half = higher / 2
      not_done = true

      return false if !element.is_a? Integer
      return false if arr[arr.length-1] < element

      while not_done
        if element == arr[half]
          not_done = false
        elsif element < arr[half]
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
end