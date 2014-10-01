finished = []
ips = []
range = 1..254

range.each do |i|
  ip_address = "192.168.1.#{i}"
#   ip_address = "192.168.1.37"
  Thread.new do
  exec( "sudo nmap #{ip_address} -p 100-139  >>c.txt" )
  exec(cmd)
end
  Thread.new do
        exec( "sudo nmap #{ip_address} -p 100-139  >>d.txt" )
        exec(cmd)
 end
   Thread.new do
        exec(compare.rb)
end
end

