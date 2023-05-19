class Robot
  @@used_names = []

  attr_reader :name

  def initialize
    @name = generate_random
  end

  def generate_random
    name = ''
    loop do
      letters = ('A'..'Z').to_a.sample + ('A'..'Z').to_a.sample
      numbers = "%03d" % rand(999)
      name = letters + numbers
      break if unique_name?(name)
    end
    @@used_names << name
    name
  end

  def reset
    @name = generate_random
  end

  def unique_name?(name)
    !@@used_names.include?(name)
  end
end
