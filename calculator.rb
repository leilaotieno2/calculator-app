def calculator
  puts "Simple Calculator"
  puts "Enter the first number:"
  num1 = gets.chomp.to_f
  
  puts "Enter the second number:"
  num2 = gets.chomp.to_f
  
  puts "Select an operation:"
  puts "1. Addition (+)"
  puts "2. Subtraction (-)"
  puts "3. Multiplication (*)"
  puts "4. Division (/)"
  choice = gets.chomp.to_i
  
  case choice
  when 1
    result = num1 + num2
    operator = "+"
  when 2
    result = num1 - num2
    operator = "-"
  when 3
    result = num1 * num2
    operator = "*"
  when 4
    if num2 != 0
      result = num1 / num2
      operator = "/"
    else
      puts "Error: Division by zero is not allowed."
      return
    end
  else
    puts "Invalid choice."
    return
  end
  
  puts "Result: #{num1} #{operator} #{num2} = #{result}"
end

# Call the calculator method to start the program
calculator()
