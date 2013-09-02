class Multiple

  def find_multiples(num, multiplier)
    (1..num).to_a.select{|num| num % multiplier == 0 }
  end

  def of_3(num)
    find_multiples(num,3)
  end

  def of_5(num)
    find_multiples(num,5)
  end

  def of_3_or_5(num)
    of_3(num).concat(of_5(num)).sort.uniq
  end

  def sum_multiples(num)
    sum=0
    of_3_or_5(num).each {|multiple| sum += multiple}
    sum
  end
end

describe 'Multiple' do
  let(:multiple) { Multiple.new }

  context 'should return all numbers which are multiples' do

    it 'of 3' do
      multiple.of_3(15).should eq [3,6,9,12,15]
    end

    it 'of 5' do
      multiple.of_5(31).should eq [5,10,15,20,25,30]
    end

    it 'of 3 or 5' do
      multiple.of_3_or_5(15).should eq [3,5,6,9,10,12,15]
    end

  end

    it 'should sum all numbers which are multiples of 3 or 5' do
      multiple.sum_multiples(15).should eq 60
    end
 
end



