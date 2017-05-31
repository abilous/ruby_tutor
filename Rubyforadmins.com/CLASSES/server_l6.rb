#!/usr/bin/env ruby
class Server
  @@server_count = 0      # initial value for class method
  attr_accessor :name, :domain

  def initialize(name, domain)
    @name = name
    @domain = domain
    @@server_count += 1   # increment the class method
  end

  def self.count          # definition of class method
    @@server_count        # returns the value of @@server_count class variable
  end
end

puts Server.count   # prints '0'
yoda = Server.new 'yoda', '.starwars.com'
kirk = Server.new 'kirk', '.startrek.com'
puts Server.count   # prints '2'