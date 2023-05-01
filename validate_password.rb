class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    @password =~ /^(?=.{6,24}$)(?=.*[a-z])(?=.*[A-Z])(?=[^0-9]*[0-9])(?=.*[!@#$%&*+=:;?<>])(?:([\w\d*?!:;])\1?(?!\1))+$/ ? true : false
  end
end
