Ruby Iterators

Ruby Each Iterator
The Ruby each iterator returns all the elements from a hash or array.

Syntax:
(collection).each do |variable|  
    code...  
  end  
  Here collection can be any array, range or hash.
  
  Example:
  
  #!/usr/bin/ruby   
  (1...5).each do |i|   
     puts i   
  end  
#   =============================================================================================
Ruby Upto and Downto Iterators
An upto iterator iterates from number x to number y.
1.upto(5) do |n|   
    puts n   
  end  
#   =============================================================================================
Ruby Step Iterator
A step iterator is used to iterate while skipping over a range.
(10..50).step(5) do |n|   
    puts n   
  end  

  out put - 10,15,20...................
# =================================================================================================
Ruby Each_Line Iterator
A each_line iterator is used to iterate over a new line in a string.
"All\nthe\nwords\nare\nprinted\nin\na\nnew\line.".each_line do |line|   
    puts line   
    end  
# =====================================================================================================
Ruby File I/O
Ruby I/O is a way to interact with your system. Data is sent in the form of bytes/characters. 
IO class is the basis for all input and output in Ruby. It may be duplexed, hence may use more than one native operating system stream.

IO has a subclass as File class which allows reading and writing files in Ruby. 


Common modes in I/O port
"r": read-only mode is the default mode starts at beginning of file.
"r+": read-write mode, starts at beginning of file.
"w": write-only mode, either creates a new file or truncates an existing file for writing.
"w+": read-write mode, either creates a new file or truncates an existing file for reading and writing.
"a": write-only mode, if file exists it will append the file othrwise a new file will be created for writing only.
"a+": read and write mode, if file exists it will append the file othrwise a new file will be created for writing and reading.
IO Console
The IO console provides different methods to interact with console. The class IO provides following basic methods:

IO::console
IO#raw#raw!
IO#cooked
IO#cooked!
IO#getch
IO#echo=
IO#echo?
IO#noecho
IO#winsize
IO#winsize=
IO#iflush
IO#ioflush
IO#oflush
# =============================================================================================================
The two classes are closely associated. IO object represent readable/writable interactions to keyboards and screens.
mkdir "project"   on terminal
Checking a Directory exists or not
To check whether a directory exists or not exists? Method is used.

Syntax:

puts Dir.exists? "dirName"  
Example:

#!/usr/bin/ruby   
  
puts Dir.exists? "project"   
puts Dir.exists? "pproject"   
Dir.rmdir "dirName"  -------------remove directory