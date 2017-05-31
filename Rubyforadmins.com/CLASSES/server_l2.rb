#!/usr/bin/env ruby
class Server
  def set_name(name)   #setter
    @name = name
  end

  def set_domain(domain) #setter
    @domain = domain
  end

  def get_name #getter
    @name
  end

  def get_domain #getter
    @domain
  end

  def full_name
    "Full Server Name: " + @name + "." + @domain
  end
end

server = Server.new
server.set_name 'localhost'
server.set_domain 'local'


puts server.full_name
