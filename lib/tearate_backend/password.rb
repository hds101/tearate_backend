require 'bcrypt'

# Create with
# data = params.dup
# data[:password] = Password.generate(data[:password])
# user = UserRepository.new.create(data)

class Password
  DEFAULT_COST = BCrypt::Engine.cost

  def self.generate(input, cost: DEFAULT_COST)
    BCrypt::Password.create(input, cost: cost)
  end

  def initialize(encrypted_password)
    @password = BCrypt::Password.new(encrypted_password)
  end
p
  def ==(other)
    @password == other
  end
end