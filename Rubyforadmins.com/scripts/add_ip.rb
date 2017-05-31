require '../classes/ip'

ip = Ip.new(192,168,1,10)
puts ip.to_s
puts ip.to_i
puts ip.to_bin
puts ip.to_hex
puts ip.ipaddress
