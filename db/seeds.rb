# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'ctmajor07@gmail.com', password: 'tomoya1378', password_confirmation: 'tomoya1378') if Rails.env.development?

Movie.create!(
  title:'stand by me',
  image:File.open('./app/assets/images/J00676_01.jpeg'),
  released_year:'1986',
  country:'アメリカ合衆国',
  screening_time:'89',
  synposis:'1959年の夏、オレゴン州の田舎町。12歳の少年4人は、性格も個性も異なっていたが仲良しで、いつも一緒に遊んでいた。そんなある日、行方不明の少年の死体が線路上に放置されているとの噂を聞きつけた彼らは、死体探しの旅に出かける。途中で喧嘩をしながらも、少年たちは助け合いながら、鉄道の線路に沿って冒険のような旅を続ける。',
  genre:'ドラマ',
  released_month:'8',
  released_day:'2'
)

Movie.create!(
  title:'きっと、うまくいく',
  image:File.open('./app/assets/images/81LDJdUigBL._SL1500_1.webp'),
  released_year:'2013',
  country:'インド',
  screening_time:'170',
  synposis:'インドで興行収入歴代ナンバーワンを記録する大ヒットとなったコメディドラマ。インド屈指のエリート理系大学ICEを舞台に、型破りな自由人のランチョー、機械よりも動物が大好きなファラン、なんでも神頼みの苦学生ラジューの3人が引き起こす騒動を描きながら、行方不明になったランチョーを探すミステリー仕立ての10年後の物語が同時進行で描かれる。',
  genre:'コメディ・ドラマ・青春',
  released_month:'5',
  released_day:'18'
)

Movie.create!(
  title:'存在のない子供たち',
  image:File.open('./app/assets/images/1015706_03.jpeg'),
  released_year:'2019',
  country:'レバノン',
  screening_time:'125',
  synposis:'中東の貧民窟で暮らす12歳のゼインは、貧しい両親が出生届を提出していないため、IDを持っていない。ある日、ゼインが仲良くしていた妹が、知り合いの年上の男性と強制的に結婚させられてしまい、それに反発したゼインは家を飛び出す。仕事を探そうとしたがIDを持っていないため職に就くことができない彼は、沿岸部のある町でエチオピア移民の女性と知り合い、彼女の赤ん坊を世話しながら一緒に暮らすことになる。しかしその後、再び家に戻ったゼインは、強制結婚させられた妹が亡くなったことを知り……。',
  genre:'ドラマ',
  released_month:'7',
  released_day:'20'
)

Movie.create!(
  title:'The Godfather',
  image:File.open('./app/assets/images/d7517-13-653199-0.jpeg'),
  released_year:'1972',
  country:'アメリカ合衆国',
  screening_time:'175',
  synposis:'信頼が厚く絶大な権力を持つアメリカ・マフィアのボス。ビジネスの陳情を断られた組織が、彼を襲撃し権力闘争の挑戦状を叩きつける。ファミリーで唯一堅気だった末息子は、父の命が狙われたことに心火を燃やす。',
  genre:'ドラマ',
  released_month:'7',
  released_day:'15'
)