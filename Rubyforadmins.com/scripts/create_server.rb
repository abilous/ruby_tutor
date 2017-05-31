require '../classes/server'

win = WindowsServer.new('kirk', '.starfleet.com')  # WindowsServer is a subclass of Server
#=>* WindowsServer: kirk.starfleet.com *
unix = UnixServer.new('yoda', '.rebelians.org')    # UnixServer is a subclass of Server as well
#=>* UnixServer: yoda.rebelians.org *
puts win.class                # class of the win variable is WindowsServer
#=>WindowsServer
puts win.is_a? WindowsServer  # win is a WindowsServer
#=>true
puts win.is_a? Server         # win is a Server as well, because Server is a superclass of WindowsServer
#=>true
puts win.is_a? UnixServer     # but is is not an UnixServer
#=>false
puts win.instance_of? WindowsServer  # win is an instance of WindowsServer class
#=>true
puts win.instance_of? Server         # but not the instance of Server (instance_of? is not checking superclasses)
#=>false