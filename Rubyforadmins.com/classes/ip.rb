class Ip
  def initialize(p1, p2, p3, p4)
    @p1 = p1; @p2 = p2; @p3 = p3; @p4 = p4
  end

  def ipaddress
    puts "#{@p1}.#{@p2}.#{@p3}.#{@p4}"
  end

  def to_s
    @p1.to_s + "." + @p2.to_s + "." + @p3.to_s + "." + @p4.to_s
  end

  def to_i
    256*256*256*@p1 + 256*256*@p2 + 256*@p3 + @p4
  end

  def to_bin
    to_i.to_s(2)
  end

  def to_hex
    to_i.to_s(16)
  end

end