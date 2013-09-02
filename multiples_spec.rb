class Multiple

  def multiple_of_3(num)
    (1..num).to_a.select{|num| num % 3 == 0 }
  end

  def multiple_of_5(num)
    (1..num).to_a.select{|num| num % 5 == 0 }
  end

  def multiple_of_3_or_5(num)
    multiple_of_3(num).concat(multiple_of_5(num)).sort.uniq
  end

  def sum_multiples(num)
    sum=0
    multiple_of_3_or_5(num).each {|multiple| sum += multiple}
    sum
  end
end


describe 'Multiple' do
  let(:multiple) { Multiple.new }

  it 'should return all numbers which are multiples of 3' do
    multiple.multiple_of_3(15).should eq [3,6,9,12,15]
  end

  it 'should return all numbers which are multiples of 5' do
    multiple.multiple_of_5(31).should eq [5,10,15,20,25,30]
  end

  it 'should return all numbers which are multiples of 3 and 5' do
    multiple.multiple_of_3_or_5(15).should eq [3,5,6,9,10,12,15]
  end

  it 'should sum all numbers which are multiples of 3 and 5' do
    multiple.sum_multiples(15).should eq 60
  end

end



