# class Calculator
#   def add(number_1, number_2)
#     number_1 + number_2
#   end

#   def subtract(number_1, number_2)
#     number_1 - number_2
#   end

#   def print_answer(answer)
#     "The Answer is: #{ answer }"
#   end
# end

# Refactor the above code in seperate classes

class Calculator
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end
end

class Print_answer
  
  def print_answer(answer)
    "the Answer is: #{ answer }"
  end
end