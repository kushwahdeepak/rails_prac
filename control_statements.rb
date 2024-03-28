# Ruby Case Statement
# In Ruby, we use 'case' instead of 'switch' and 'when' instead of 'case'. 
# The case statement matches one statement with multiple conditions just like a switch statement in other languages.

# Syntax:

# case expression  
# [when expression [, expression ...] [then]  
#    code ]...  
# [else  
#    code ]  
# end  

#!/usr/bin/ruby   
print "Enter your day: "   
day = gets.chomp   
case day   
when "Tuesday"   
  puts 'Wear Red or Orange'   
when "Wednesday"   
  puts 'Wear Green'   
when "Thursday"   
  puts 'Wear Yellow'   
 when "Friday"   
  puts 'Wear White'   
 when "Saturday"   
  puts 'Wear Black'   
else   
  puts "Wear Any color"   
end   
#======================================================================================================================

Ruby for Loop
Ruby for loop iterates over a specific range of numbers. Hence, for loop is used if a program has fixed number of iterations.

Ruby for loop will execute once for each element in expression.

for variable [, variable ...] in expression [do]  
    code  
end  

 a = gets.chomp.to_i   
for i in 1..a do   
  puts i   
end   
#==========================================================================================================================
Ruby while Loop
The Ruby while loop is used to iterate a program several times. If the number of iterations is not fixed for a program, while loop is used.

Ruby while loop executes a condition while a condition is true. Once the condition becomes false, while loop stops its execution.
while conditional [do]  
    code  
 end 

 Ruby do while Loop
    The Ruby do while loop iterates a part of program several times. 
        It is quite similar to a while loop with the only difference that loop will execute at least once. 
        It is due to the fact that in do while loop, condition is written at the end of the code.
            loop do   
                #code to be executed  
                break if booleanExpression  
              end   
              loop do   
                puts "Checking for answer"   
                answer = gets.chomp   
                if answer != '5'   
                  break   
                end   
              end  
# ========================================================================================================================

Ruby Until Loop
The Ruby until loop runs until the given condition evaluates to true. It exits the loop when condition becomes true. 
It is just opposite of the while loop which runs until the given condition evaluates to false.
until conditional  
    code  
 end  
 i = 1   
until i == 10   
    print i*10, "\n"   
    i += 1   
end  
# ===========================================================================================================================
Ruby Break Statement
The Ruby break statement is used to terminate a loop. It is mostly used in while loop where value is printed till the condition is true,
 then break statement terminates the loop.

The break statement is called from inside the loop.
i = 1   
while true   
    if i*5 >= 25   
        break   
    end   
    puts i*5   
    i += 1   
end   
# -==========================================================================================================================
Ruby Next Statement
The Ruby next statement is used to skip loop's next iteration. Once the next statement is executed, no further iteration will be performed.'

The next statement in Ruby is equivalent to continue statement in other languages.
for i in 5...11   
    if i == 7 then   
       next   
    end   
    puts i   
 end  
#  ==================================================================================================================================

The Ruby multi line comment is used to comment multiple lines at a time. They are defined with =begin at the starting and =end at the end of the line.