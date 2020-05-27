# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = []
users << User.create({ name: 'なな', email: 'nana@nana.com', password: "nanagon"})

colors = []
colors << Color.create({ name: '赤' })
colors << Color.create({ name: '白' })
colors << Color.create({ name: 'ロゼ' })
colors << Color.create({ name: 'スパークリング' })

tastes = []
tastes << Taste.create({ name: 'フルボディ', level: 1})
tastes << Taste.create({ name: 'メディアムボディ', level: 2 })
tastes << Taste.create({ name: 'ライトボディ', level: 3 })
tastes << Taste.create({ name: '辛口', level: 1 })
tastes << Taste.create({ name: '中口', level: 2 })
tastes << Taste.create({ name: '甘口', level: 3 })

wines = []
wines << Wine.create({ name: 'Alpaca', country: "チリ", color: colors[1], taste: tastes[3]})

locations = []
locations << Location.create({ name: "カスミ筑波大学店"})