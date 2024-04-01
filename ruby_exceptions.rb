Ruby Exceptions
Ruby exception is an object, an instance of the class Exception or descendent of that class. It represents some exceptional condition.

In a Ruby program, when something goes wrong, it throws an exceptional behavior. By default Ruby program terminates on throwing an exception.

We can declare some exception handlers within Ruby. An exception handler is a block of code which is executed when exception occurs in some other block of code.

Exceptions are handled in two ways. Either you can terminate the program or deal with the exception. To deal with an exception, you can provide a rescue clause. 
By providing this, program control flows to the rescue clause.

When an exception is raised but not handled, global variable $! contains the current exception and $@ contains the current exception's backtrace.

Ruby predefined classes like Exception and its children helps you to handle errors of your program. 
In Ruby exception hierarchy, most of the sub classes extend class StandardError. 
These are the normal exceptions.'

Ruby Class Exceptions
Built-in subclasses of exception are as follows:

NoMemoryError
ScriptError
SecurityError
SignalException
StandardError
SystenExit
SystemStackError
fatal - impossible to rescue

Handling an Exception
To handle exception, the code that raises exception is enclosed within begin-end block. Using rescue clauses we can state type of exceptions we want to handle.

Example:

def raise_and_rescue     
  begin     
    puts 'Before the raise.'     
    raise 'An error occured.'     
    puts 'After the raise.'     
  rescue     
    puts 'Code rescued.'     
  end     
  puts 'After the begin block.'     
end     
raise_and_rescue    
# .....................................................................................................................................
Using retry Statement
Usaually in a rescue clause, the exception is captured and code resumes after begin block. Using retry statement, the rescue block code can be resumed from begin after capturing an exception.

Syntax:

begin  
   code....  
rescue  
    # capture exceptions  
    retry  # program will run from the begin block  
end  

begin   
    x = Dir.mkdir "alreadyExist"   
    if x   
       puts "Directory created"   
    end   
 rescue   
    y = "newDir"   
    retry   
 end   
 The above program runs as follows:
 
 Step 1 In the begin block, code is written to make a directory that already exists.
 
 Step 2 This will throw an error.
 
 Step 3 In rescue block, y was reassigned.
 
 Step 4 The retry statement will go to the begin block.
 
 Step 5 Directory will be created.
# ==========================================================================================================================================

Ruby Catch and Throw
Ruby catch and throw provide a way to jump from the execution early when no further work is needed in a code.

The catch defines a block that is labeled with a given name. It is used to jump out of nested code. Using catch, the block will be executed normally until throw is encountered.

The catch and throw method is faster than rescue and raise clauses. Hence, it is more suitable to use.

Syntax:

throw :lablename  
#.. this  code will not be executed  
catch :lablename do  
#.. matching catch will be executed after a throw is encountered.  
end  
Or,

throw :lablename condition  
#.. this code will not be executed  
catch :lablename do  
#.. matching catch will be executed after a throw is encountered.  
end  

def promptAndGet(prompt)   
    print prompt   
    res = readline.chomp   
    throw :quitRequested if res == "!"   
    return res   
 end   
   
 catch :quitRequested do   
    name = promptAndGet("Name: ")   
    age = promptAndGet("Occupation: ")   
    # ..   
    # process information   
 end   
 promptAndGet("Name:")  