#!/usr/bin/env ruby
class Server
  @@server_count = 0
  attr_reader :name, :domain

  def initialize(name, domain)
    @name = name
    @domain = domain
    @@server_count += 1
  end

  def full_name
    @name + '.' + @domain
  end

  def url
    'http://' + self.full_name
  end

  #def url
  #  'http://' + full_name
  #send

  def self.count
    @@server_count
  end
end

yoda = Server.new 'yoda', 'starwars.com'
puts yoda.full_name   # prints 'yoda.starwars.com'
puts yoda.url         # prints 'http://yoda.starwars.com'

puts Server.new('kirk', 'startrek.com').url   # prints 'http://kirk.startrek.com'