f1="first.txt"
f2 ="second.txt"
f=File.open(f1)
s=File.open(f2)

file1lines = f.readlines
file2lines = s.readlines

file1lines.each do |e|
  if(!file2lines.include?(e))
        file2lines
     puts e
end
end
