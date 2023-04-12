# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(email: 'ctmajor07@gmail.com', password: 'tomoya1378', password_confirmation: 'tomoya1378') if Rails.env.development?

User.create!(
  name:'tomoya',
  email:'admin@example.com',
  password:'password'
)

# 25.times do |n|
#   User.create!(
#     email: "test#{n + 1}@test.com",
#     name: "テスト太郎#{n + 1}",
#     password:'tomoya1378#{n + 1}'
#   )
# end


Genre.create!(
  [
    {
      name:'サスペンス'
    },
    {
      name:'ドラマ'
    },
    {
      name:'ロマンス'
    },
    {
      name:'コメディ'
    },
    {
      name:'ファミリー'
    },
    {
      name:'ミステリー'
    },
    {
      name:'SF'
    },
    {
      name:'ファンタジー'
    }
  ]
)

User.all.each do |user|
	Movielist.create(user_id: user.id, listname: "watched")
	Movielist.create(user_id: user.id, listname: "want")
	Movielist.create(user_id: user.id, listname: "recommend")
end



Movie.create!(
  [
    {
      title:'大阪ハムレット',
  image:File.open('./app/assets/images/poster23.jpeg'),
  released_year:'2008',
  country:'日本',
  screening_time:'107',
  synposis:'みんな、真剣やから笑わんといてください！
  大阪の下町で暮らす久保家。３人の息子を抱え、一家の大黒柱となっているのは、働き者のお母ちゃん、房子（松坂慶子）。お父ちゃん（間寛平）が突然亡くなり、四十九日も済まないうちに、お父ちゃんの弟と名乗る叔父さん（岸部一徳）が転がり込んでくる…が、なぜかすんなりと受け入れる天真爛漫でのんきな房子。こうして５人の奇妙な家族生活が始まる。
  シェイクスピアの“ハムレット”のような複雑な家庭環境に加えて、兄弟は深刻な悩みを抱えている。中３の長男は、恋する年上のファザコン女性に「私のお父ちゃんになってほしい」と言われ困惑する。ヤンキーの次男は、自分が例えられた“ハムレット”が近所のペットでないことが解決したものの、ふと自分の顔がお父ちゃんに似てないことに気づき、家族と人生について悩みだす。小学生の三男は、将来の夢を聞かれ、「女の子になりたい」と大宣言…。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'なごやの喫茶店
      ',
  image:File.open('./app/assets/images/poster22.jpeg'),
  released_year:'2014',
  country:'日本',
  screening_time:'23',
  synposis:'舞台は名古屋のとある喫茶店。主人公、絵里は家族のとある秘められた事実を確かめるように、ふらりとそこにやってくる。そこで彼女が感じたものは何なのか。絵里にとっての家族とは。ひとりの人間が成長してゆく物語。
  第4回（2014年）知多半島映画祭 コンペティション部門 入選作品',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'未来の唄',
  image:File.open('./app/assets/images/poster20.jpeg'),
  released_year:'2019',
  country:'日本',
  screening_time:'51',
  synposis:'福井県鯖江市河和田地区に1500年以上続く伝統産業「越前漆器」。漆器づくりの特徴は、木を伐り出すところから製品ができるまでの各工程を別々の職人が行うというところにある。その工程の一つである蒔絵師の市朗(塚田孝一郎)を祖父に持つ未来(月野もあ)。未来は、祖父に憧れ、蒔絵の前工程となる上塗り師になった。伝統が息づく小さなまちでコツコツと職人として成長してきた未来。しかし、とある決断を迫られていた…',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'さようなら、ごくろうさん',
  image:File.open('./app/assets/images/poster17.jpeg'),
  released_year:'2017',
  country:'日本',
  screening_time:'43',
  synposis:'小学校の警備員を退職した男。しかし男は夜になると、学校へ忍び込もうとする。一体、何があるのだろうか。夜の学校はちょっぴり怖くて、優しくて、狂っている。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'ねこにみかん',
  image:File.open('./app/assets/images/poster19.jpeg'),
  released_year:'2014',
  country:'日本',
  screening_time:'105',
  synposis:'婚約者の智弘(大東駿介)に連れられ真知子(黒川芽以)は彼の実家を訪れるが、一家はさまざまな事情を抱えていた。3人の異母兄弟と、ママと呼ばれる里美(竹下かおり)、カカと呼ばれる佳代子(高見こころ)、ハハと呼ばれる成美(辰寿広美)、全員の父親でチチと呼ばれる正一郎(隆大介)とそれぞれに役割があり、独自のルールの中で均衡を保っていた。しかし、真知子の登場により一家の微妙なバランスが崩れていき…。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'やさしいフルスイング',
  image:File.open('./app/assets/images/poster15.jpeg'),
  released_year:'2017',
  country:'日本',
  screening_time:'75',
  synposis:'もう一度野球をしたい元高校球児、24歳のトラオ。当時のチームメイトに声を掛けるが誰もしたがらない。大人になった自分は全力で生きてるのか、そんな思いを胸にバットを振り切る。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'ただいま、ジャクリーン',
  image:File.open('./app/assets/images/poster14.jpeg'),
  released_year:'2013',
  country:'日本',
  screening_time:'40',
  synposis:'幼い頃にバス事故で両親を亡くし孤児となった悟は、同じ事故で死亡した腹話術師の持っていたジャクリーンという人形と出会う。児童養護施設に入った悟は、腹話術をすることで少しずつ笑顔を取り戻す。13年後、施設を出てひとり暮らしをしている悟は、もうジャクリーンに見向きもしなくなっていた。そんなある日、バス事故の生存者で同じ施設で育った恵から「腹話術をしてほしい」と頼まれ、12年ぶりにジャクリーンと向き合う。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'家路 ～On The Way Home〜',
  image:File.open('./app/assets/images/poster13.png'),
  released_year:'2015',
  country:'日本',
  screening_time:'75',
  synposis:'大学で歴史を教える進藤誠とその妻、咲と一人息子、陸の3人家族は幸せな日々を過ごしていた。そんなある日、妻と息子が踏み切り事故に合う。妻は亡くなり、息子は意識不明の重体に陥る。診断の末、息子は完全に正常であることが分かるが、眠ったままで意識が戻らない。
  誠は望みを託して、1984 年以降、進入が禁止されているカヤと呼ばれる町へ行く。そこには捕まえると願いが叶うという、獣の噂があった。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'ひとくず 新ディレクターズカット',
  image:File.open('./app/assets/images/poster2.jpeg'),
  released_year:'2019',
  country:'日本',
  screening_time:'123',
  synposis:'生まれてからずっと虐待されている少女・鞠のもとへ、犯罪を重ねる男・金田が空巣に入る。鞠の姿に幼い頃の自分を重ね、彼女を救おうと動き出す金田。鞠の母である凜の恋人から鞠が虐待を受けていることを知り、金田は凜の恋人を殺してしまう。凜もまた虐待されていた過去を持ち、子供の愛し方が分からない。そんな3人が不器用ながらも共に暮らし、「家族」の暖かさを感じ本物の「家族」へと近づいていく･･･。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    }
  ]
)

# Movie.create!(
#   [
#     {
#       title:'The Godfather',
#   image:File.open('./app/assets/images/d7517-13-653199-0.jpg'),
#   released_year:'1972',
#   country:'アメリカ合衆国',
#   screening_time:'175',
#   synposis:'信頼が厚く絶大な権力を持つアメリカ・マフィアのボス。ビジネスの陳情を断られた組織が、彼を襲撃し権力闘争の挑戦状を叩きつける。ファミリーで唯一堅気だった末息子は、父の命が狙われたことに心火を燃やす。',
#   released_month:'7',
#   released_day:'15',
#   feeling: '今日も1日おつかれさまの一本'
#     },
#     {
#       title:'きっと、うまくいく',
#       image:File.open('./app/assets/images/SL1500_1.webp'),
#       released_year:'2013',
#       country:'インド',
#       screening_time:'170',
#       synposis:'インドで興行収入歴代ナンバーワンを記録する大ヒットとなったコメディドラマ。インド屈指のエリート理系大学ICEを舞台に、型破りな自由人のランチョー、機械よりも動物が大好きなファラン、なんでも神頼みの苦学生ラジューの3人が引き起こす騒動を描きながら、行方不明になったランチョーを探すミステリー仕立ての10年後の物語が同時進行で描かれる。',
#       released_month:'5',
#       released_day:'18',
#       feeling: 'とにかく泣ける！'
#     },
#     {
#       title:'stand by me',
#   image:File.open('./app/assets/images/J00676_01.jpg'),
#   released_year:'1986',
#   country:'アメリカ合衆国',
#   screening_time:'89',
#   synposis:'1959年の夏、オレゴン州の田舎町。12歳の少年4人は、性格も個性も異なっていたが仲良しで、いつも一緒に遊んでいた。そんなある日、行方不明の少年の死体が線路上に放置されているとの噂を聞きつけた彼らは、死体探しの旅に出かける。途中で喧嘩をしながらも、少年たちは助け合いながら、鉄道の線路に沿って冒険のような旅を続ける。',
#   released_month:'8',
#   released_day:'2',
#   feeling: '涙なしでは観れない'
#     },
#     {
#       title:'存在のない子供たち',
#   image:File.open('./app/assets/images/1015706_03.jpg'),
#   released_year:'2019',
#   country:'レバノン',
#   screening_time:'125',
#   synposis:'中東の貧民窟で暮らす12歳のゼインは、貧しい両親が出生届を提出していないため、IDを持っていない。ある日、ゼインが仲良くしていた妹が、知り合いの年上の男性と強制的に結婚させられてしまい、それに反発したゼインは家を飛び出す。仕事を探そうとしたがIDを持っていないため職に就くことができない彼は、沿岸部のある町でエチオピア移民の女性と知り合い、彼女の赤ん坊を世話しながら一緒に暮らすことになる。しかしその後、再び家に戻ったゼインは、強制結婚させられた妹が亡くなったことを知り……。',
#   released_month:'7',
#   released_day:'20',
#   feeling: 'やっぱり家族っていいなあ'
#     }
#   ]
# )


GenreMovie.create!(
  [
    {
      movie_id: 1,
      genre_id: 2
    },
    {
      movie_id: 1,
      genre_id: 4
    },
    {
      movie_id: 2,
      genre_id: 3
    },
    {
      movie_id: 3,
      genre_id: 1
    },
    {
      movie_id: 4,
      genre_id: 2
    }
  ]
)

# Relationship.create!(
#   [
#     {
#       user_id: 1,
#       follow_id: 2
#     },
#     {
#       user_id: 1,
#       follow_id: 3
#     },
#     {
#       user_id: 1,
#       follow_id: 4
#     },
#     {
#       user_id: 1,
#       follow_id: 5
#     },
#     {
#       user_id: 1,
#       follow_id: 6
#     },
#     {
#       user_id: 1,
#       follow_id: 7
#     },
#     {
#       user_id: 1,
#       follow_id: 8
#     },
#     {
#       user_id: 1,
#       follow_id: 9
#     },
#     {
#       user_id: 1,
#       follow_id: 10
#     },
#     {
#       user_id: 1,
#       follow_id: 11
#     },
#     {
#       user_id: 1,
#       follow_id: 12
#     },    
#     {
#       user_id: 1,
#       follow_id: 13
#     },
#     {
#       user_id: 1,
#       follow_id: 14
#     },
#     {
#       user_id: 1,
#       follow_id: 15
#     },
#     {
#       user_id: 1,
#       follow_id: 16
#     },
#     {
#       user_id: 1,
#       follow_id: 17
#     },
#     {
#       user_id: 1,
#       follow_id: 18
#     },
#     {
#       user_id: 1,
#       follow_id: 19
#     },
#     {
#       user_id: 1,
#       follow_id: 20
#     },
#     {
#       user_id: 1,
#       follow_id: 21
#     },
#     {
#       user_id: 1,
#       follow_id: 22
#     }
#     # {
#     #   user_id: 1,
#     #   follow_id: 23
#     # },
#     # {
#     #   user_id: 1,
#     #   follow_id: 24
#     # },
#     # {
#     #   user_id: 1,
#     #   follow_id: 25
#     # },
#     # {
#     #   user_id: 1,
#     #   follow_id: 26
#     # },
#     # {
#     #   user_id: 1,
#     #   follow_id: 27
#     # }
#   ]
# )