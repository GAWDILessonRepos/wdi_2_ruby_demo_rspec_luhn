class Validator

  attr_accessor :cc_popped_num

  def initialize(num)
    @num = num
  end

  def convert_to_array
    array = @num.split('')
    array.map { |item| item.to_i }
  end

  def cc_num_pop
    array = convert_to_array
    @cc_popped_num = array.pop
    array
  end

  def cc_num_reverse
    cc_num_pop.reverse
  end

  def mutate_array
    array = cc_num_reverse
    product = []
    array.each_with_index { |item, index|  
      if index % 2 == 0
        item * 2 > 9 ? product << (item * 2) - 9 : product << item * 2
      else
        product << item
      end
    }
    product
  end

  def sum_array
    mutated = mutate_array
    mutated.reduce(:+) + @cc_popped_num
  end

  def luhn_truthy
    number = sum_array
    number % 10 == 0
  end
end