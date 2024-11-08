# インスタンス変数とアクセサメソッド
# class User
#   attr_accessor :name
  
#   def initialize(name)
#     @name = name
#   end
# end

# user = User.new('Alice')
# p user.name

# user.name = 'Bob'
# p user.name


# クラスメソッド
class User
  def initialize(name)
    @name = name
  end
  
  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end
  
  def hello
    "Hello, I am #{@name}"
  end
end


names = ['Alice', 'Bob', 'Calor']

users = User.create_users(names)
users.each do |user|
  puts user.hello
end

# ⬇︎ 一応これでも同じように出力できる。⬇︎
# class User
#   def initialize(name)
#     @name = name
#   end
  
#   def create_users(names)
#     names.map do |name|
#       User.new(name)
#     end
#   end
  
#   def hello
#     "Hello, I am #{@name}"
#   end
# end


# names = ['Alice', 'Bob', 'Calor']

# a = User.new('A')
# users = a.create_users(names)
# users.each do |user|
#   puts user.hello
# end