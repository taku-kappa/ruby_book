# a = 42
# b = 0
# t = 0


# 40.times do
#     t = a
#     a = t + (a / 2)
# end
# # (1..40).each do
# #     t = a
# #     a = t + (a / 2)
# # end
# p a

a = []
(1..2000).each do |i|
    if i ** 3 == 1131111311
        a << i
    elsif i ** 3 > 1131111311
        a << i
    end
end

# p a

p 1041 ** 3
# p 1040 ** 3
# p 1042 ** 3
#

c = 0
a = [111, 222, 333, 444, 555, 666, 777, 888, 999, 000]
(1..350000).each do |q|

    if q.include?(a)
        c += q
    end
end
p c