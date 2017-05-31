#!/usr/bin/env ruby
class Server
  def name=(name)
    @name = name
  end

  def domain=(domain)
    @domain = domain
  end

  def name
    @name
  end

  def domain
    @domain
  end
end

server = Server.new
server.name = 'obi'
server.domain = 'starwars.com'

puts server.name + '.' + server.domain

