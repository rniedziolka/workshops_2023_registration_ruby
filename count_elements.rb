class CountElements
  def initialize(array)
    @array = array
  end

  def perform
    @array.each_with_object(Hash.new(0)) do |element, new_hash|
      new_hash[element] += 1
    end
  end
end
