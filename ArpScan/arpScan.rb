shed = []
ips = []
range = 1..254
def firstScan
    range = 1..254
    range.each do |i|
        ip_address = "192.168.1.#{i}"
#   ip_address = "192.168.1.37"
       t1=Thread.new do
           exec( "sudo arp-scan -l -s #{ip_address} -I wlan0 -q  >>first.txt" )
           sleep(2)

    end
end
end
def secondScan
    range = 1..254
    range.each do |i|
        ip_address = "192.168.1.#{i}"
        t2=Thread.new do
                exec( "sudo arp-scan -l -s #{ip_address} -I wlan0 -q  >>second.txt" )
                sleep(1)
    end
end
end
t1=Thread.new{firstScan()}
t2=Thread.new{secondScan()}
t2.join
t1.join
