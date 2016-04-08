class Fixnum
  def factorial
    return 1 if self == 1
    self * (self-1).factorial
  end
end