#!/usr/bin/env ruby
class Server
  def get_ip
    'unknown IP'
  end

#==========ignored=============
  def name
    'method 1'
  end
end

class Server
  def domain
  'unknown domain'
  end
#==========name method used here============
  def name
    'method 2'
  end
end

server = Server.new
puts server.get_ip
puts 'The following method used: ' + server.name




