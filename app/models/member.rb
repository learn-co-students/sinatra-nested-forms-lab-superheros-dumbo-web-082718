class Member

  attr_accessor :name, :power, :biography

  def initialize(args = {})
    p args
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
  end
end

# Member.new
# Member.new({ name: "graham" })
# Member.new(name: "graham")
