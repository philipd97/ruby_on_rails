# Section 2 - Comparison Operators

# Equal to
# ==
p 10 == 9 # false
p 10 == "10".to_i # true
p 10 == "10".to_f # true


# Not equal to 
# != 
p 10 != 9 # true
p "hello" != "bye" # true
p "hello" != "hello" # false


# Greater than or equal to 
# >=
p 100 >= 100 # true
p 100 >= 99 # true
p 100 >= 101 # false


# Less than or equal to
# <=
p 100 <= 101 # true
p 100 <= 100 # true
p 99 <= 98 # false


# Case Equality
# ===
# This operator tests if the right operand has relationship with the left operand
p Integer === 42 # true
p Integer === "Hello" # false
p String === "Hello" # true


# .eql?(object) method
# Compare both Object type
p 10.eql?(10.0) # false
p 10.eql?(10) # true
p 10.eql?("10") # false

# Spaceship Operator
# <=>
# Value return: -1, 0, -1
# Left Operand < Right Operand then -1
# Left Operand = Right Operand then 0
# Left Operand > Right Operand then 1
p 1 <=> 2 # -1
p 2 <=> 2 # 0
p 3 <=> 2 # 1
# For String, it checks on ASCII, it is case sensitive
# lower case has higher value than Upper case value
p "Hello" <=> "I" # I has higher value than H, therefore return -1
p "Hello" <=> "Bye" # H has higher value than B, therefore return 1
p "Hello" <=> "hello" # hello lower case has higher value than Hello, therefore return -1
 
