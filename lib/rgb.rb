# def to_hex(r, g, b)
#   [r, g, b].sum('#') do |n|
#     n.to_s(16).rjust(2, '0')
#   end
# end

# puts to_hex(250, 200, 255)


# def to_ints(hex)
#   r, g, b = hex[1..2], hex[3..4], hex[5..6]

#   [r, g, b].map do |n|
#     n.hex
#   end
# end

# p to_ints('#fff500')


# e = 100, 200, 300
# puts e

# def a
#   numbers = [1, 2, 3, 4, 5]
#     rc = []
#   numbers.each do |n|
#     if n.odd?
#     rc.push(n)
#     end
#   end
#   rc
# end

# pp a



# 正規表現
# s = "AGIOSZ"
# puts s.gsub(/A|G|Z|O/, 'A' => '4', 'G' => '6', 'O' => '0', 'Z' => '2')




# # 不要な広告メールばかりで、重要なメールを見逃しがちなあなたは、特定のワード S がタイトルに含まれるメールを全て広告と判定して、自動で削除することにしました。
# # 広告と判定するワード S と、N 件のメールのタイトルが与えられるので、それぞれのメールについて、広告と判定されるときは Yes と、そうでないときは No と出力するプログラムを作成してください。広告と判定するワードが含まれているかの判定では、大文字と小文字を区別してください。
# # 広告と判定されるワードは英数字からなりますが、メールタイトルには英数字と記号 " ", "!", "?", "$", ":" が含まれます。特に、半角スペースが入力のタイトル中に含まれる可能性があることに注意してください。
# # 広告か判定する語は "Free" です。
# # 1 つ目と 4 つ目のメールタイトルは、"Free" という語が含まれているので、広告と判定します。2 つ目のメールタイトルは "Freedom" という単語が含まれていますが、これにも対象の語である "Free" が含まれているので、広告と判定します。
# # 5 つ目のメールタイトルは "FREE" という語が含まれていますが、大文字小文字を区別するので、広告でないと判定します。
# s = gets.chomp
# n = gets.to_i
# mells = readlines.map {|n| n.chomp}

# mells.each do |mell|
#     if mell.include?(s)
#         puts "Yes"
#     else
#         puts "No"
#     end
# end


# animals = ["mouse", "dog", "hippopotamus", "giraffe"]
# p animals.sort_by {|animal| -animal.length }

# aa = animals.map {|a| a.upcase}
# p aa

# b = aa.map {|d| d.gsub(/O|I|Z|E|A|S|G/, 'A' => '4', 'G' => '6', 'O' => '0', 'Z' => '2', 'I' => '1', 'E' => '3', 'S' => '5')}
# p b


# class User
#   attr_reader :first_name, :last_name, :age

#   def initialize(first_name, last_name, age)
#     @first_name = first_name
#     @last_name = last_name
#     @age = age
#   end

#   def full_name
#     "#{first_name} #{last_name}"
#   end
# end

a = "1234"
  p a.gsub(/1|3/, '1' => 'I', '3' => 'E')


name = "alice"
p name.downcase
p name.upcase


# 定数について
SOME_NAMES = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze
# ⬆️配列(定数)の中身もfreezeしているため、配列も配列の各要素も変更できない。

p SOME_NAMES[0].upcase!
# ⬆️エラーが起きる。

