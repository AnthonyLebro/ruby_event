class User
  attr_accessor :email, :age
  @@user_count = 0
  @@all_users = []



  def initialize(email_to_save, age)
    @email = email_to_save.to_s
    @age = age.to_i
    @@user_count = @@user_count + 1
    @@all_users << self
  end

  def self.all
    return @@all_users  
  end

  def self.count
    return @@user_count
  end

#binding.pry
#puts "voila voila"
end

