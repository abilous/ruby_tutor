#!/usr/bin/env ruby
class Server
  attr_accessor :name, :domain
  def initialize(name, domain)
    @name = name
    @domain = domain
  end
  def ==(other)
    name == other.name && domain == other.domain  # && is a logical AND operator
    # it is true if both arguments are true
  end
  def inspect                                              # our own inspect
    "* " + self.class.to_s + ": " + @name + @domain + " *" # * [class name]: [server and domain] *
  end
end

s1 = Server.new('yoda', '.starwars.com')
s2 = Server.new('yoda', '.starwars.com')
s3 = Server.new('kirk', '.starwars.com')

puts s1 == s2   # true !
puts s2 == s3   # false, different names
