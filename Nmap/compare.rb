f1="c.txt" 
f2 ="d.txt" 
first=File.open(f1) 
second=File.open(f2) 
file1lines = first.readlines 
file2lines = second.readlines 
file1lines.each do |e| 
   if(!file2lines.include?(e)) 
      file2lines 
      return  puts e 
      end 
end 
