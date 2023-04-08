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

30.times do |n|
  User.create!(
    email: "test#{n + 1}@test.com",
    name: "テスト太郎#{n + 1}",
    password:'tomoya1378#{n + 1}'
  )
end


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
      title:'川凪ぐ火葬場',
  image:File.open('./app/assets/images/ogp13_image.jpeg'),
  released_year:'2022',
  country:'日本',
  screening_time:'13',
  synposis:'家族を亡くし、死を受け入れられない少年と、火葬場でたった一人死と向き合い続けている老人が出会う。
  川辺の火葬場で、少年と老人はお互いの境遇を重ね合わせていき、死という事実に向き合い始める。
  第33回（2022）東京学生映画 アニメーション部門 入選作品',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'共に歩く',
  image:File.open('./app/assets/images/ogp12_image.jpeg'),
  released_year:'2013',
  country:'日本',
  screening_time:'81',
  synposis:'小学校教諭の哲也（小澤亮太）は、両親からの愛を受けたことがなく、精神的にアンバランスな恋人の明美（入山法子）からの束縛に困惑していた。哲也の小学校に通うタケル（長島暉実）は動揺すると自分の体をたたいたり、独自のおまじないを唱えるせいで友人たちに敬遠されている。一方、明美の母親陽子（朝加真由美）はアルツハイマー型認知症で……。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'溶けるおと',
  image:File.open('./app/assets/images/ogp11_image.jpeg'),
  released_year:'2020',
  country:'日本',
  screening_time:'34',
  synposis:'志穂は父を事故で亡くし、母と兄と3人暮らしをしていた。母は2人分の学費を稼ぐため仕事を掛け持ちし、兄は大学に通いながらバイト代を家に入れる。志穂は母が求める娘像に近づくため勉強しようとするが身が入らない。ある日、ギターを弾くリエと出会う。その出会いが押し込まれていた感情を溶かしていく。家族との間にある溝に苦しみ、ついに家を飛び出す。すべて手放そうとした志穂には、父が好きだった音楽しかなかった。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'金星',
  image:File.open('./app/assets/images/ogp10_image.jpeg'),
  released_year:'2011',
  country:'日本',
  screening_time:'64',
  synposis:'自分は障碍者。助けてもらって当然と考える俊。自分は障碍者。障碍は人からバカにされるものと考えるほのか。自分は介助者。なんでも助けて当然と考える聡子。自分は介助者。助けないことも介助と考える勇治。
  先天性の視覚障碍を持つ俊は、同じく視覚障碍者のほのかを誘い、介助者の聡子とその兄である勇治と一緒にハイキングに出かける。山中で出会った大学生・大村と川田に障碍者を差別するような行為を受け、俊は激怒する…。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'あの素晴しい愛をもう一度',
  image:File.open('./app/assets/images/ogp9_image.jpeg'),
  released_year:'2010',
  country:'日本',
  screening_time:'62',
  synposis:'ぼちぼち頭金もたまり、そろそろマイホーム購入を考えている向井祐作と朱美。そんな向井家は、ごくごく一般的な家庭であり、誰もがこのまま幸せに生活していけると信じていた。
  そんなある日、出張中の祐作の元に一通の間違いメールが届いた。たかが間違いメール。しかし、そのメールが祐作の人生を狂わしていく…。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'偶然のつづき',
  image:File.open('./app/assets/images/ogp8_image.jpeg'),
  released_year:'2004',
  country:'日本',
  screening_time:'94',
  synposis:'大学4年生なのにやりたいことが見つからず、なんとなく毎日を過ごしているウチダ。気になる存在のフジキには友達以上の関係に見てもらえない上に、彼は年上の美女・スギモトのことを好きな様子。
  ウチダが学校を休んだ日、フジキとスギモトはウチダの家へ出かけ、3人はすきやきを食べる。東京で生活する3人の大学生の、それぞれの気持ちと微妙な関係がやわらかい光の中で語られ、学生最後の夏の“偶然”がゆるやかに絡み合う。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'満腹家族',
  image:File.open('./app/assets/images/ogp7_image.jpeg'),
  released_year:'2002',
  country:'日本',
  screening_time:'73',
  synposis:'可愛がっている助監督・坂本から「Z級っすよね！」と言われてしまうAV女優・なお美と同棲しているAV監督・浅野は、特に新しい趣向を試すこともない日々を過ごしていた。そこへ会ったこともない弟(？)が現れ、一緒に暮らすことに。そしてある日、浅野が休んだ撮影現場で、主役の新人女優とまじめな編集マンが逃避行する事件が起き、浅野は悪徳プロダクションに脅される。憤慨した浅野は弟も巻き込んだ仕返しを思いつき…。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'ブレイク・ビーターズ（字幕版）',
  image:File.open('./app/assets/images/ogp6_image.jpeg'),
  released_year:'2018',
  country:'ドイツ',
  screening_time:'90',
  synposis:'1985年社会主義政権下の東ドイツ。フランクは西側の番組で紹介されたブレイクダンスに心を奪われる。翌日、アメリカ映画『ビート・ストリート』を観に映画館へ駆け込み、その虜となったフランクは仲間たちと路上でダンスを踊るようになる。 政府は非社会主義的なダンスを禁止しようと動くが、それでも彼らの勢いは止まらなかった。そこで政府は、ブレイクダンスを社会主義化し若者向けのプロパガンダとして利用することに。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'わたしのヒーロー',
  image:File.open('./app/assets/images/ogp5_image.jpeg'),
  released_year:'2019',
  country:'日本',
  screening_time:'39',
  synposis:'「松本は仕事、諦めたのか？」都内のITコンサルに勤める松本遼は現在育休中。 想像以上の育児と家事に疲れ果てる毎日。 けれども、本当の大変さはそこではなかった。 平日昼に歩いていれば職務質問され、友人からは子育ての大変さは理解されない。それは職場復帰してからも、更に重くのしかかってきて.....',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'あの日',
  image:File.open('./app/assets/images/ogp4_image.jpeg'),
  released_year:'2021',
  country:'日本',
  screening_time:'37',
  synposis:'シンガーソングライターとして活躍するという夢を叶えるため、家出を実行する青年タクマ。しかし、夢破れ堕落した生活を送っていた。
  そんなある日、偶然悪友のリョウタに出会う。金を盗んでくるよう脅迫されたタクマは、仕方なくある会社のオフィスに侵入する。運良く大金が入った金庫を見つけるのだが･･･
  第10回(2021年) 関西学生映画祭 入選作品',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'9～ナイン～',
  image:File.open('./app/assets/images/ogp3_image.jpeg'),
  released_year:'2018',
  country:'日本',
  screening_time:'100',
  synposis:'古い倉庫を改造した海藤ボクシングジムは、プロを目指す田山ら練習生4人の弱小ジムだが、会長の武士はチャンピオンを輩出したいと工事現場で働きながらジムの維持に奮闘していた。ある日、OBの慎之介が、役作りでボクシングを習いたいという舞台女優の小夜を連れてくる。練習生たちは色めき立つが、そこへ金融屋の風間が現れて武士が借金まみれであることが判明する。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'レイディオ',
  image:File.open('./app/assets/images/qwe3img05.jpeg'),
  released_year:'2020',
  country:'日本',
  screening_time:'45',
  synposis:'深夜ラジオを聞くことが趣味の地味でモテない大学生の加藤は、学部のゼミで同じラジオを聞いている女性・松岡と出会う。夢もなく、友人もいなかった加藤に、松岡は「後悔しない生き方」をしたいと言った。加藤は真っ直ぐ生きる松岡に次第に惹かれていくも、彼女が自分とは違う世界で生きていることを知る。
  SKIPシティ国際Dシネマ映画祭2020 国内コンペティション（短編部門）ノミネート作品',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'みたらしきもの',
  image:File.open('./app/assets/images/ogp2_image.jpeg'),
  released_year:'2020',
  country:'日本',
  screening_time:'49',
  synposis:'卒業が迫る夏。三田、ユカ、テル、リュウタの4人組は、お菓子を食べながらいつものようにだらだらと過ごしていた。夏休みがあと少しで終わることに逆らうように、4人は毎日一緒に食事する。しかしユカは他の3人には言えない問題に押しつぶされ、一人飛び出してしまう。先の見えない不安、もうすぐバラバラになる友情、襲いかかる運命のイタズラ。思い通りにいかない、素直になれない若者たちのシャウトである。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'Omusubi',
  image:File.open('./app/assets/images/img10.jpeg'),
  released_year:'2020',
  country:'日本',
  screening_time:'3',
  synposis:'喧嘩する兄妹。
  お母さんは仲直りさせるために、おむすびを握ります。
  具と具を混ぜ合わせ、不思議なおむすびの出来上がり。
  兄妹がひとかじりすると、すっかり喧嘩を忘れます。
  那須ショートフィルムフェスティバル2020 上映作品',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'ひとくず 新ディレクターズカット',
  image:File.open('./app/assets/images/ogp_image.jpeg'),
  released_year:'2019',
  country:'日本',
  screening_time:'123',
  synposis:'生まれてからずっと虐待されている少女・鞠のもとへ、犯罪を重ねる男・金田が空巣に入る。鞠の姿に幼い頃の自分を重ね、彼女を救おうと動き出す金田。鞠の母である凜の恋人から鞠が虐待を受けていることを知り、金田は凜の恋人を殺してしまう。凜もまた虐待されていた過去を持ち、子供の愛し方が分からない。そんな3人が不器用ながらも共に暮らし、「家族」の暖かさを感じ本物の「家族」へと近づいていく･･･。',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'
      ただいま',
  image:File.open('./app/assets/images/8204.jpeg'),
  released_year:'2022',
  country:'日本',
  screening_time:'48',
  synposis:'長いこと大都会を彷徨う直人は、苦しい少年時代に温かく接してくれたタクミのことを思い出していた。直人はタクミを探すため故郷に戻った。記憶の舞台となった場所で、記憶と現実は交錯し、すべてが美しい昔に戻っていくようであった。
  第33回（2022）東京学生映画 実写長編部門 入選作品 審査員特別賞（瀬々&希妃賞）受賞作品
  なら国際映画祭2022 NARA-wave 観客賞＆俳優賞（木村文哉）受賞作品',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'梅雨明けを待ちながら',
  image:File.open('./app/assets/images/ogap_image.jpeg'),
  released_year:'2020',
  country:'日本',
  screening_time:'13',
  synposis:'コロナ下、久々に陽が差した梅雨間のある日。那須で暮らす若菜のもとに、東京に住む幼なじみの蓮から電話がかかってくる。インスタレーション制作に必要な那須の写真と音を送ってほしいと蓮から頼まれた若菜は、スマートフォンを片手に那須の景色を集めに行く。那須の木々のざわめき、川瀬の響きが東京の蓮の部屋へと運ばれ、ふたりは過去へと思いをはせる･･･。
  第5回池袋みらい国際映画祭 入賞作品',
  released_month:'1',
  released_day:'1',
  feeling: '涙なしでは観れない'
    },
    {
      title:'stand by me',
  image:File.open('./app/assets/images/J00676_01.jpg'),
  released_year:'1986',
  country:'アメリカ合衆国',
  screening_time:'89',
  synposis:'1959年の夏、オレゴン州の田舎町。12歳の少年4人は、性格も個性も異なっていたが仲良しで、いつも一緒に遊んでいた。そんなある日、行方不明の少年の死体が線路上に放置されているとの噂を聞きつけた彼らは、死体探しの旅に出かける。途中で喧嘩をしながらも、少年たちは助け合いながら、鉄道の線路に沿って冒険のような旅を続ける。',
  released_month:'8',
  released_day:'2',
  feeling: '涙なしでは観れない'
    },
    {
      title:'きっと、うまくいく',
      image:File.open('./app/assets/images/SL1500_1.webp'),
      released_year:'2013',
      country:'インド',
      screening_time:'170',
      synposis:'インドで興行収入歴代ナンバーワンを記録する大ヒットとなったコメディドラマ。インド屈指のエリート理系大学ICEを舞台に、型破りな自由人のランチョー、機械よりも動物が大好きなファラン、なんでも神頼みの苦学生ラジューの3人が引き起こす騒動を描きながら、行方不明になったランチョーを探すミステリー仕立ての10年後の物語が同時進行で描かれる。',
      released_month:'5',
      released_day:'18',
      feeling: 'とにかく泣ける！'
    }
  ]
)

Movie.create!(
  title:'存在のない子供たち',
  image:File.open('./app/assets/images/1015706_03.jpg'),
  released_year:'2019',
  country:'レバノン',
  screening_time:'125',
  synposis:'中東の貧民窟で暮らす12歳のゼインは、貧しい両親が出生届を提出していないため、IDを持っていない。ある日、ゼインが仲良くしていた妹が、知り合いの年上の男性と強制的に結婚させられてしまい、それに反発したゼインは家を飛び出す。仕事を探そうとしたがIDを持っていないため職に就くことができない彼は、沿岸部のある町でエチオピア移民の女性と知り合い、彼女の赤ん坊を世話しながら一緒に暮らすことになる。しかしその後、再び家に戻ったゼインは、強制結婚させられた妹が亡くなったことを知り……。',
  released_month:'7',
  released_day:'20',
  feeling: 'やっぱり家族っていいなあ'
)

Movie.create!(
  title:'The Godfather',
  image:File.open('./app/assets/images/d7517-13-653199-0.jpg'),
  released_year:'1972',
  country:'アメリカ合衆国',
  screening_time:'175',
  synposis:'信頼が厚く絶大な権力を持つアメリカ・マフィアのボス。ビジネスの陳情を断られた組織が、彼を襲撃し権力闘争の挑戦状を叩きつける。ファミリーで唯一堅気だった末息子は、父の命が狙われたことに心火を燃やす。',
  released_month:'7',
  released_day:'15',
  feeling: '今日も1日おつかれさまの一本'
)

# 30.times do |n|
#   Movie.create!(
#     title:'movie#{n + 1}',
#     image:File.open('./app/assets/images/banner.jpeg'),
#     released_year:'1',
#     country:'a',
#     screening_time:'1',
#     synposis:'aaa',
#     released_month:'1',
#     released_day:'1',
#     feeling: '常識にとらわれない'
#   )
# end


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

Relationship.create!(
  [
    {
      user_id: 1,
      follow_id: 2
    },
    {
      user_id: 1,
      follow_id: 3
    },
    {
      user_id: 1,
      follow_id: 4
    },
    {
      user_id: 1,
      follow_id: 5
    },
    {
      user_id: 1,
      follow_id: 6
    },
    {
      user_id: 1,
      follow_id: 7
    },
    {
      user_id: 1,
      follow_id: 8
    },
    {
      user_id: 1,
      follow_id: 9
    },
    {
      user_id: 1,
      follow_id: 10
    },
    {
      user_id: 1,
      follow_id: 11
    },
    {
      user_id: 1,
      follow_id: 12
    },    
    {
      user_id: 1,
      follow_id: 13
    },
    {
      user_id: 1,
      follow_id: 14
    },
    {
      user_id: 1,
      follow_id: 15
    },
    {
      user_id: 1,
      follow_id: 16
    },
    {
      user_id: 1,
      follow_id: 17
    },
    {
      user_id: 1,
      follow_id: 18
    },
    {
      user_id: 1,
      follow_id: 19
    },
    {
      user_id: 1,
      follow_id: 20
    },
    {
      user_id: 1,
      follow_id: 21
    },
    {
      user_id: 1,
      follow_id: 22
    },
    {
      user_id: 1,
      follow_id: 23
    },
    {
      user_id: 1,
      follow_id: 24
    },
    {
      user_id: 1,
      follow_id: 25
    },
    {
      user_id: 1,
      follow_id: 26
    },
    {
      user_id: 1,
      follow_id: 27
    }
  ]
)