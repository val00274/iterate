require "iterate/version"

class Object
  def iterate(&block)
    Enumerator.new do |y|
      obj = self
      loop do
        y << obj 
        obj = block.call(obj)
      end
    end.lazy
  end
end

