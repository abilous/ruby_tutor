#!/usr/bin/env ruby
class Server                  # Server is a superclass for both classes below
  def initialize(name, domain)
    @name = name
    @domain = domain
  end
  def full_name
    @name + @domain
  end
end

class WindowsServer < Server  # WindowsServer inherits from Server
  def full_name
    @name.upcase
  end
end

class UnixServer < Server     # UnixServer inherits from Server as well
  def execute_via_ssh         # to be implemented in a future
    'not implemented yet'
  end
end

win = WindowsServer.new('yoda', '.starwars.com')
unix = UnixServer.new('kirk', '.startrek.com')

puts unix.full_name         # prints 'kirk.startrek.com'
puts win.full_name          # prints 'yoda.starwars.com'
puts unix.class             # prints 'UnixServer'
puts win.class              # prints 'WindowsServer'
puts unix.execute_via_ssh   # prints 'not implemented yet'
puts win.execute_via_ssh    # raises exception (an error): "undefined method `execute_via_ssh'"