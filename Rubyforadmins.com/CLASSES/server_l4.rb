#!/usr/bin/env ruby

class Server
  attr_reader :name     # this two lines could be replaced by one
  attr_writer 'name'    # -- attr_accessor :name
  attr_accessor :domain
  # you may replace the three lines above but just one,
  # passing all method names separated by commas
  #   attr_accessor :name, :domain
end
server = Server.new
server.name = 'yoda'
server.domain = '.starwars.com'
puts server.name + server.domain  # prints 'yoda.starwars.com'

class Server1
  attr_accessor :name_a, :domain_a
end

server_a = Server1.new
server_a.name_a = 'yoda1'
server_a.domain_a = '.starwars1.com'
puts server_a.name_a + server_a.domain_a  # prints 'yoda.starwars.com'
