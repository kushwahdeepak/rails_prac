Ruby Variables
Ruby variables are locations which hold data to be used in the programs. Each variable has a different name. 
These variable names are based on some naming conventions.
Unlike other programming languages, there is no need to declare a variable in Ruby. A prefix is needed to indicate it.

Local variables
Class variables
Instance variables
Global variables

Local variables
A local variable name starts with a lowercase letter or underscore (_). It is only accessible or have its scope within the block of its initialization. Once the code block completes, variable has no scope.

When uninitialized local variables are called, they are interpreted as call to a method that has no arguments.


Class variables
A class variable name starts with @@ sign. They need to be initialized before use. A class variable belongs to the whole class and can be accessible from anywhere inside the class. If the value will be changed at one instance, it will be changed at every instance.

A class variable is shared by all the descendents of the class. An uninitialized class variable will result in an error.

class States   
    @@no_of_states=0   
    def initialize(name)   
       @states_name=name   
       @@no_of_states += 1   
    end   
    def display()   
      puts "State name #@state_name"   
     end   
     def total_no_of_states()   
        puts "Total number of states written: #@@no_of_states"   
     end   
 end   
   
 # Create Objects   
 first=States.new("Assam")   
 second=States.new("Meghalaya")   
 third=States.new("Maharashtra")   
 fourth=States.new("Pondicherry")   
   
 # Call Methods   
 first.total_no_of_states()   
 second.total_no_of_states()   
 third.total_no_of_states()   
 fourth.total_no_of_states()


#  -------------------------------------------------------------------------------------------------------------------


Instance variables
An instance variable name starts with a @ sign.
It belongs to one instance of the class and can be accessed from any instance of the class within a method.
They only have limited access to a particular instance of a class.

class States   
    def initialize(name)   
       @states_name=name   
    end   
    def display()   
       puts "States name #@states_name"   
     end   
 end   
   
 # Create Objects   
 first=States.new("Assam")   
 second=States.new("Meghalaya")   
 third=States.new("Maharashtra")   
 fourth=States.new("Pondicherry")   
   
 # Call Methods   
 first.display()   
 second.display()   
 third.display()   
 fourth.display()  

#  -----------------------------------------------------------------------------------------------------------------------------

Global variables
A global variable name starts with a $ sign. Its scope is globally, means it can be accessed from any where in a program.

An uninitialized global variable will have a nil value. It is advised not to use them as they make programs cryptic and complex.

There are a number of predefined global variables in Ruby.
$global_var = "GLOBAL"   
class One   
  def display   
     puts "Global variable in One is #$global_var"   
  end   
end   
class Two   
  def display   
     puts "Global variable in Two is #$global_var"   
  end   
end   
  
oneobj = One.new   
oneobj.display   
twoobj = Two.new   
twoobj.display  

# ================================================================================================================================

