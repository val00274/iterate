require 'iterate'

describe "iterate" do
  it "natural numbers" do
    1.iterate(&:succ).first(5).should == [1, 2, 3, 4, 5]
  end

  it "geometric progression" do
    1.iterate{|n| n * 3}.first(5).should == [1, 3, 9, 27, 81]
  end

  it "fibonacci sequence" do
    fib = [0, 1].iterate{|a, b| [b, a + b]}.map(&:first)
    fib.first(5).should == [
      0, 1, 1, 2, 3,
    ]
    fib.first(5).should == [
      0, 1, 1, 2, 3,
    ]
    fib.take_while{|n| n < 100}.to_a.should == [
      0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89,
    ]
  end
end

