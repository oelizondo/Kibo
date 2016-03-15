module Kibo
  class Sort
    def initialize(arr, type)
      case type
      when 'merge'
        eval("Merge.new(#{arr})")
      when 'quick'
        eval("Quick.new(#{arr})")
      end
    end
  end

  class Merge
    def initialize(arr)
      @arr = arr
    end
  end

  class Quick
    def initialize(arr)
      @arr = arr
    end
  end

end