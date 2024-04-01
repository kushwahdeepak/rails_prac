Creating object
Objects in Ruby are created by calling new method of the class. It is a unique type of method and predefined in the Ruby library.

Ruby objects are instances of the class.

Syntax:

objectName = className.new  
Example:

We have a class named Java. Now, let's create an object java and use it with following command,'

java = Java.new("John")  

Ruby Class
Each Ruby class is an instance of class Class. Classes in Ruby are first-class objects.
Ruby class always starts with the keyword class followed by the class name. Conventionally, for class name we use CamelCase. The class name should always start with a capital letter. Defining class is finished with end keyword.

Syntax:

class ClassName  
    codes...  
end  
# ==========================================================================================================================
Ruby Blocks
Ruby code blocks are called closures in other programming languages. 
It consist of a group of codes which is always enclosed with braces or written between do..end. 
The braces syntax always have the higher precedence over the do..end syntax. Braces have high precedence and do has low precedence.

A block is written in two ways,
Multi-line between do and end (multi-line blocks are niot inline)
Inline between braces {}

A block is always invoked with a function. Blocks can have their own arguments.

syntax:

block_name{  
   statement1  
   statement2  
   ..........  
}  
Example:

The below example shows the multi-line block.

[10, 20, 30].each do |n|   
 puts n   
end   
# ======================================================================================================================
The yield statement
The yield statement is used to call a block within a method with a value.

Example:

#!/usr/bin/ruby   
  
def met   
   puts "This is method"   
   yield   
   puts "You will be back to method"   
   yield   
end   
met {puts "This is block"}  
# ========================================================================================================================
Passing parameters with yield statement

One or more than one parameter can be passed with the yield statement.
def met   
    yield 1   
    puts "This is method"   
    yield 2   
 end   
 met {|i| puts "This is block #{i}"}   
#  ========================================================================================================================
Block Variables
We can use same variable outside and inside a block parameter. Let's see the following example.'
x = "Outer variable"    
3.times do |x|    
  puts "Inside the block: #{x}"    
end    
puts "Outside the block: #{x}"  
# =========================================================================================================================
BEGIN and END block
Ruby BEGIN and END block is used to declare that file is being loaded and file has been loaded respectively.

Example:

#!/usr/bin/ruby   
  
BEGIN {   
  puts "code block is being loaded"   
}   
  
END {   
  puts "code block has been loaded"   
}   
puts "This is the code block"  
# =========================================================================================================================
Ampersand parameter (&block)
The &block is a way to pass a reference (instead of a local variable) to the block to a method.

Here, block word after the & is just a name for the reference, any other name can be used instead of this.
def met(&block)   
    puts "This is method"   
    block.call   
  end   
  met { puts "This is &block example" }  
#=======================================================================================================================