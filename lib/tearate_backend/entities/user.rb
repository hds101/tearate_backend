class User < Hanami::Entity
  def password
    Password.new(super)
  end
end
