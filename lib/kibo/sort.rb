require_relative 'sorts/merge'
require_relative 'sorts/quick'

module Kibo
  SORTS = {
    "merge": Merge,
    "quick": Quick
  }
  class Sort
    def initialize(arr, type)
      case type
      when 'merge'
        eval ("Merge.new(#{arr})")
      when 'quick'
        eval ("Quick.new(#{arr})")
      end
    end
  end

  class Merge
    def initialize(arr)
      @arr = arr
    end

    def show
      @arr
    end
  end

end