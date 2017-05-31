class Server
  def initialize(name, domain)
    @name = name
    @domain = domain
  end
  def full_name
    @name + @domain
  end

  def ==(other)
    name == other.name && domain == other.domain  # && is a logical AND operator
    # it is true if both arguments are true
  end

  def inspect                                              # our own inspect
    "* " + self.class.to_s + ": " + @name + @domain + " *" # * [class name]: [server and domain] *
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