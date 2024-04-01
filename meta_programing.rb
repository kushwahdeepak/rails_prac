
# define method of metaprograming ....................................................................
class Developer
    # def java 
    #     puts "java"
    # end
    
    # def python 
    #     puts "python"
    # end
    
    # def ruby 
    #     puts "ruby"
    # end
    
    ['java', "python", "ruby"].each do |i|
        define_method i do 
            puts i
        end
    end
end 

Developer.new.ruby    
# =================================================================================================================
# class_eval method...........................
class Developer
end 

Developer.class_eval do 
    def xyz
        puts "xyz"
    end
end

Developer.new.xyz
# ============================================================================================================
# class instance_eval method......................
end 

Developer.instance_eval do 
    def xyz
        puts "xyz"
    end
end
Developer.xyz
# ==========================================================================================================
# send method...
class Developer
    
    private
    def abc 
        puts "hjgiuhj"
    end
end 

Developer.new.send("abc")
# ================================================================
# override error of method excepiton handling 
class Developer
    def method_missing(method) 
        puts "#{method} is not found"
    end
end 


Developer.new.med