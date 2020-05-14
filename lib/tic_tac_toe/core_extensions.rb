class Array
  def all_empty?
    self.all? { |elem| elem.to_s.empty? }
  end
  def all_same?
    self.all? { |elem| elem == self[0] }
  end
  def any_empty?
    self.any? { |elem| elem.to_s.empty? }
  end
  def none_empty?
    !any_empty?
  end
end
