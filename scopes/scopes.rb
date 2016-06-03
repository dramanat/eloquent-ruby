def flower
  @text = 'flower'
  yield if block_given?
end

def flower2(&blk)
  @text = 'flower'
  blk.call
end

def pass_var_1
  yield "money"
end

def pass_var_2
  yield "money" "moral economy"
end

def math_mtd(function: "sum")
  math = case function
         when "sum"
           ->(a,b) { a+b }
         when "subtraction"
           ->(a,b) { a-b }
         when "multiplication"
           ->(a,b) { a*b }
         else
           "invalid"
         end
  math == "invalid" ? math : math.call(3,4)
end
