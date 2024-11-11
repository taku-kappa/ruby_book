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
# class User
#   def initialize(name)
#     @name = name
#   end

#   def self.create_users(names)
#     names.map do |name|
#       User.new(name)
#     end
#   end

#   def hello
#     "Hello, I am #{@name}"
#   end
# end


# names = ['Alice', 'Bob', 'Calor']

# users = User.create_users(names)
# users.each do |user|
#   puts user.hello
# end


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


# 正規表現（指定した文字を修正する）
# filename = "file--name---example.txt"
# normalized_filename = filename.gsub(/-{2,}/, '-')33w4
# puts normalized_filename


array = [1, 2, 3, 4, 2, 5, 3, 6, 3, 3, 2]
# tallyで要素の出現回数を数え、重複しているものを抽出
duplicates = array.tally.select { |_, count| count > 1 }.keys
# 重複している要素を出力
puts duplicates


# protectedの使用方法
class User
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  protected

  def weight
    @weight
  end
end

Alice = User.new('Alice', 50)
Bob = User.new('Bob', 60)

p Alice.heavier_than?(Bob)
p Bob.heavier_than?(Alice)
p Bob.weight

