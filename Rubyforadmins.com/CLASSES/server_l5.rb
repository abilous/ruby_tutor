#!/usr/bin/env ruby

class Server
  attr_reader :name, :domain
  def initialize(name='default', domain='.com')
    @name = name
    @domain = domain
  end
end

server_a = Server.new 'abilous', '.net'
puts server_a.name  + server_a.domain

server_b = Server.new()
puts server_b.name + server_b.domain