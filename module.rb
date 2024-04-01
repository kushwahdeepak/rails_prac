Ruby Modules
Ruby module is a collection of methods and constants. A module method may be instance method or module method.

Instance methods are methods in a class when module is included.

Module methods may be called without creating an encapsulating object while instance methods may not.

They are similar to classes as they hold a collection of methods, class definitions, constants and other modules. 
They are defined like classes. Objects or subclasses can not be created using modules. There is no module hierarchy of inheritance.
module ModuleName  
    statement1  
    statement2  
    ...........  
 end

 Module Mixins
Ruby doesn't support multiple inheritance. Modules eliminate the need of multiple inheritance using mixin in Ruby.

A module doesn't have instances because it is not a class. However, a module can be included within a class.

When you include a module within a class, the class will have access to the methods of the module.
module Name   
    def bella   
    end   
    def ana   
    end   
 end   
 module Job   
    def editor   
    end   
    def writer   
    end   
 end   
   
 class Combo   
 include Name   
 include Job   
    def f   
    end   
 end   

#  ====================================================================================================
require 'date'   
  
puts Date.new(2017,4,3)            
puts Date.jd(2451877)               
puts Date.ordinal(2017,3)         
puts Date.commercial(2017,5,6)     
puts Date.parse('2017-02-03')    
puts Date.strptime('03-02-2017', '%d-%m-%Y')                           
puts Time.new(2017,10,8).to_date     
require 'date'   
  
d = Date.parse('4th Mar 2017')   
                               
puts d.year                        
puts d.mon                         
puts d.mday                        
puts  d.wday                        
puts d += 1                        
puts d.strftime('%a %d %b %Y')    

# =======================================
range
puts (1..5).to_a.reverse  
Ranges as sequences
Ranges as conditions
Ranges as intervals