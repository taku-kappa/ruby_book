# p 6.gcd(12)

numbers = [30, 20, 15]
number = numbers[0]

numbers[1..].each do |n|
  number = number.gcd(n)
end
p number