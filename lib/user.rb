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

  def self.find_by_email(email_to_find)
    @@all_users.each do |user|
      if user.instance_variable_get("@email")==email_to_find
        return user
      end
    end
    return puts "Pas d'utilisateur avec cette adresse email"
  end

#binding.pry
#puts "voila voila"
end

