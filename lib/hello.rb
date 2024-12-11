# numbers = [30, 20, 15]

# puts numbers.inject(:gcd)

# number = numbers[0]

# numbers[1..].each do |n|
#   number = number.gcd(n)
# end
# puts number


# a = 0
# b = 1
# h = [0, 1]
# 10.times do
#   t = a
#   a = b
#   b = t + b
#   h << b
# end
# p h


# sum = 0
# patterns = ["111", "222", "333", "444", "555", "666", "777", "888", "999", "000"]

# # 1から350000までのループ
# (1..350000).each do |num|
#   # 数字を文字列に変換し、patterns のいずれかが含まれているか確認
#   if patterns.any? { |pattern| num.to_s.include?(pattern) }
#     sum += num
#   end
# end

# # 結果を出力
# p sum


c = 0
k = '000'
s = '222'
a = [111, 222, 333, 444, 555, 666, 777, 888, 999, 000]
(1..350000).each do |q|
    d = q.to_s
    if d.include?(k) || d.include?(s)
        c += q
    end
end
p c

