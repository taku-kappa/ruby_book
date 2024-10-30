# 〜演習問題〜
UNITS = {m: 1.0, ft: 3.28, in: 39.37}

def convert_length(length, from: :m, to: :m)
  (length / UNITS[from] * UNITS[to]).round(2)
end

puts convert_length(35000, from: :ft, to: :m)


# 〜任意のキーワードを受け付ける**引数〜
def buy_burger(menu, drink: true, potato: true, **others)
  puts others
end

buy_burger('fish', drink: true, potato: false, salad: true, chicken: false)


# 〜ハッシュを明示的にキーワード引数に変換する**〜
def buy_burger(menu, drink: true, potato: true)
  'OK'
end

params = {drink: true, potato: false}
p buy_burger('fish', **params)


# 〜メソッド呼び出し時の{}の省略〜
a = ['fish', drink: true, potato: true]
p a[0]
p a[1]
p a[2]


s = ["aaaaa","b","cc"]
p s.sort