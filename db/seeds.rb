# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(email: 'ctmajor07@gmail.com', password: 'tomoya1378', password_confirmation: 'tomoya1378') if Rails.env.development?


User.create!(
  [
    {
      name:'ゲスト',
      email:'guest@example.com',
      password: SecureRandom.urlsafe_base64,
      avatar: File.open('./app/assets/images/ME65.jpeg')
    },
    {
      name:'tomoya',
      email:'admin@example.com',
      password:'password',
      avatar: File.open('./app/assets/images/avatar2.jpeg')
    },
    {
      name:'kenta',
      email:'icloud@example.com',
      password:'major12',
      avatar: File.open('./app/assets/images/avatar7.jpeg')
    },
    {
      name:'emiri',
      email:'aca06@example.com',
      password:'emiri1525'
    },
    {
      name:'kosuke',
      email:'koke7210@example.com',
      password:'basefoot',
      avatar: File.open('./app/assets/images/avatar5.jpeg')
    },
    {
      name:'sasaki',
      email:'live1252@example.com',
      password:'ryuzi1390'
    },
    {
      name:'タクヤ',
      email:'takahasikun@example.com',
      password: 'takahasi1620',
      avatar: File.open('./app/assets/images/avatar6.jpeg')
    },
    {
      name:'kaede0',
      email:'rinkon@example.com',
      password:'baseballlove',
      avatar: File.open('./app/assets/images/avatar4.jpeg')
    },
    {
      name:'Trout',
      email:'oasis@example.com',
      password:'otanisan01'
    },
    {
      name:'rindo',
      email:'voltlt@example.com',
      password:'osusumi240',
      avatar: File.open('./app/assets/images/avatar3.jpeg')
    },
    {
      name:'いちじく',
      email:'chiziku@example.com',
      password:'jhgdls0022'
    },
    {
      name:'あいだ',
      email:'aidadesu@example.com',
      password:'47cimasb',
      avatar: File.open('./app/assets/images/avatar.jpeg')
    }
  ]
)

User.all.each do |user|
	Movielist.create(user_id: user.id, listname: "watched")
	Movielist.create(user_id: user.id, listname: "want")
	Movielist.create(user_id: user.id, listname: "recommend")
end

Relationship.create!(
  [
    {
      user_id: 2,
      follow_id: 1
    },
    {
      user_id: 3,
      follow_id: 1
    },
    {
      user_id: 4,
      follow_id: 1
    },
    {
      user_id: 6,
      follow_id: 1
    },
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
      follow_id: 6
    },
    {
      user_id: 6,
      follow_id: 2
    },
    {
      user_id: 2,
      follow_id: 4
    },
    {
      user_id: 5,
      follow_id: 3
    },
    {
      user_id: 6,
      follow_id: 3
    },
    {
      user_id: 3,
      follow_id: 4
    },
    {
      user_id: 5,
      follow_id: 6
    },
    {
      user_id: 4,
      follow_id: 6
    },
    {
      user_id: 5,
      follow_id: 4
    },
    {
      user_id: 7,
      follow_id: 8
    },
    {
      user_id: 8,
      follow_id: 9
    },
    {
      user_id: 9,
      follow_id: 10
    },
    {
      user_id: 11,
      follow_id: 12
    },
    {
      user_id: 12,
      follow_id: 7
    },
    {
      user_id: 7,
      follow_id: 10
    },
    {
      user_id: 8,
      follow_id: 5
    },
    {
      user_id: 11,
      follow_id: 9
    },
    {
      user_id: 9,
      follow_id: 6
    },
    {
      user_id: 8,
      follow_id: 11
    },
    {
      user_id: 11,
      follow_id: 8
    },
    {
      user_id: 12,
      follow_id: 9
    },
    {
      user_id: 10,
      follow_id: 12
    },
    {
      user_id: 8,
      follow_id: 4
    },
    {
      user_id: 5,
      follow_id: 9
    },
    {
      user_id: 10,
      follow_id: 1
    },
    {
      user_id: 9,
      follow_id: 5
    }
  ]
)

Genre.create!(
  [
    {
      name:'ヒューマン'
    },
    {
      name:'ドラマ'
    },
    {
      name:'恋愛'
    },
    {
      name:'アクション'
    },
    {
      name:'サスペンス'
    },
    {
      name:'ドキュメンタリー'
    },
    {
      name:'SF'
    },
    {
      name:'コメディ'
    },
    {
      name:'アニメーション'
    }
  ]
)


Movie.create!(
  [
    {
      title:'多日想果',
  image:File.open('./app/assets/images/love3.jpeg'),
  released_year:'2019',
  screening_time:'19',
  synposis:'台湾に憧れて留学したタカシ。日本では味わえなかった楽しい日々。そんなある日、屋台で働くフェンに恋をする。しかし、自分の気持ちを率直に伝えることができないまま時は流れ、恋は無情な形で幕を閉じることになる...',
  feeling: 'いつかの青春をあなたに',
  word: '忘れられない台湾の恋の味'
    },
    {
      title:'大阪ハムレット',
  image:File.open('./app/assets/images/human4.jpeg'),
  released_year:'2008',
  screening_time:'107',
  synposis:'大阪の下町で暮らす久保家。３人の息子を抱え、一家の大黒柱となっているのは、働き者のお母ちゃん、房子。お父ちゃんが突然亡くなり、四十九日も済まないうちに、お父ちゃんの弟と名乗る叔父さんが転がり込んでくる…が、なぜかすんなりと受け入れる天真爛漫でのんきな房子。こうして５人の奇妙な家族生活が始まる。
  シェイクスピアの“ハムレット”のような複雑な家庭環境に加えて、兄弟は深刻な悩みを抱えている。中３の長男は、恋する年上のファザコン女性に「私のお父ちゃんになってほしい」と言われ困惑する。ヤンキーの次男は、自分が例えられた“ハムレット”が近所のペットでないことが解決したものの、ふと自分の顔がお父ちゃんに似てないことに気づき、家族と人生について悩みだす。小学生の三男は、将来の夢を聞かれ、「女の子になりたい」と大宣言…。',
  feeling: 'やっぱ家族っていいなあ',
  word: '応援は誰かの力になる！'
    },
    {
      title:'チェルノブイリからの手紙',
  image:File.open('./app/assets/images/documentary8.jpeg'),
  released_year:'2012',
  screening_time:'75',
  synposis:'1986年、過去最悪な原発事故が起きたチェルノブイリ。それから25年後に起きた福島原発事故。どちらの原発事故も最も深刻な暫定評価レベル7がくだされた。チェルノブイリに行けば27年後の福島の姿を見れるかもしれない。現在 福島で起きている事、今後福島が直面する問題、事故の対応、復興への道、命の重さ、次世代への願い、福島の人々を兄弟に思う彼らが 我々に”願い”を託してくれた。今、真実の言葉を聞く。',
  feeling: '映画で知る歴史や社会',
  word: '日常の幸せを未来につなぐ為に'
    },
    {
      title:'わたしのトーチカ',
  image:File.open('./app/assets/images/animation1.jpeg'),
  released_year:'2021',
  screening_time:'15',
  synposis:'潜水服は、水中の世界の中で唯一ボンベがないと生きられない。我侭な女の子や複雑な家庭環境の友人に囲まれながら、平穏な日々が壊れないよう、どんなに息苦しくても見て見ぬ振りをしていた。第32回東京学生映画祭 入選作品',
  feeling: '圧倒的な映像美',
  word: '私が深呼吸できる場所'
    },
    {
      title:'ENOLA（エノーラ）',
  image:File.open('./app/assets/images/action3.jpeg'),
  released_year:'2015',
  screening_time:'83',
  synposis:'名古屋市を中心に数万人が突然死する原因不明の事件が発生し、名古屋全域に避難命令が下った。非常事態に対応すべく特殊機関が設立され、銀色マスクを被った工作員が街を徘徊。市内に残った大学教授の平良と義理の妹のハヅキも工作員にマークされ、ハヅキは追い詰められることに。第六感がズバ抜けて強いハヅキは近くの不良少年健太へ自分の魂を移し逃げる。同時に、ハズキの魂の中で封印されていた“破壊の魂”が解放され、転移先の健太に凶悪な超能力が出現してしまう。暴走する健太（破壊の魂）を止める事ができるのか…。',
  feeling: '常識が全く通用しません',
  word:'力があるから破壊する'
    },
    {
      title:'ユウカイ犯',
  image:File.open('./app/assets/images/suspense7.jpeg'),
  released_year:'2018',
  screening_time:'42',
  synposis:'白昼堂々、若い娘をバンに押し込み連れ去った覆面の男達。それは人生を踏み外し、一発逆転を狙い犯行に及んだドン底の者達。計画は上手くいったかに思われたが、誘拐した女は標的にしていた娘の名前と違う。その娘の名前は凶悪で有名な大物ヤクザと同じ。絶望と焦燥から争い始める覆面の男達、そんな男達に女が放った言葉は「父を殺して下さい」というとんでもない依頼だった。',
  feeling: '休日の午後にゆっくりと',
  word: '逃げを許さぬ衝撃展開'
    },
    {
      title:'ひとくず 新ディレクターズカット',
  image:File.open('./app/assets/images/drama9.jpeg'),
  released_year:'2019',
  screening_time:'123',
  synposis:'生まれてからずっと虐待されている少女・鞠のもとへ、犯罪を重ねる男・金田が空巣に入る。鞠の姿に幼い頃の自分を重ね、彼女を救おうと動き出す金田。鞠の母である凜の恋人から鞠が虐待を受けていることを知り、金田は凜の恋人を殺してしまう。凜もまた虐待されていた過去を持ち、子供の愛し方が分からない。そんな3人が不器用ながらも共に暮らし、「家族」の暖かさを感じ本物の「家族」へと近づいていく･･･。',
  feeling: 'タオル必須、号泣の一本',
  word: '不器用な温もりが変える未来'
    },
    {
      title:'スリッパと真夏の月',
  image:File.open('./app/assets/images/SF3.jpeg'),
  released_year:'2015',
  screening_time:'30',
  synposis:'町の発明家であった亡き父が作った『物質転移装置』を発見した昌子は、姉の光子と実験をしていたが、機械が故障していまい光子が異世界へ消えてしまう。昌子はなんとかして光子を自分たちの世界へ戻そうと奮闘するのだったが…。',
  feeling: 'ほのぼのをおすそわけ',
  word: '姉を救え！異世界から！？'
    },
    {
      title:'豆大福ものがたり',
  image:File.open('./app/assets/images/comedy7.jpeg'),
  released_year:'2013',
  screening_time:'20',
  synposis:'皆が3時のおやつを希望に生きる時代。「おやつ総選挙」を目前にマカロンやショートケーキなど、おやつ候補たちが選挙活動を繰り広げていた。
  このような中、候補者である豆大福選挙事務所は伸びない支持率に頭を悩ませていると、豆大福候補と秘書の関係も悪化しはじめていた。そんな時、ある一人の男がやってきて。。。',
  feeling: 'ほのぼのをおすそわけ',
  word: 'おやつのSOUL一直線！'
    },
    {
      title:'なごやの喫茶店',
  image:File.open('./app/assets/images/human2.jpeg'),
  released_year:'2014',
  screening_time:'23',
  synposis:'舞台は名古屋のとある喫茶店。主人公、絵里は家族のとある秘められた事実を確かめるように、ふらりとそこにやってくる。そこで彼女が感じたものは何なのか。絵里にとっての家族とは。ひとりの人間が成長してゆく物語。
  第4回（2014年）知多半島映画祭 コンペティション部門 入選作品',
  feeling: 'やっぱ家族っていいなあ',
  word: '家族をつなぐかき氷'
    },
    {
      title:'ビート・パー・MIZU',
  image:File.open('./app/assets/images/love5.jpeg'),
  released_year:'2019',
  screening_time:'27',
  synposis:'隅子はあらゆるBPMが瞬時にわかってしまうせいで不器用な人生を送っていた。しかしある日、友人に連れて行かれたライブハウスで男性・水と運命的な出会いを果たす。それ以来、隅子はBPMの研究と称して水の尾行を始める。',
  feeling: 'この音楽はヤバい！',
  word: '鳴りひびけ！恋のビート'
    },
    {
      title:'私たちの家族',
  image:File.open('./app/assets/images/documentary1.jpeg'),
  released_year:'2021',
  screening_time:'31',
  synposis:'エリンとみどりは結婚して20年、東京で3人の子供をもつ。2018年、エリンはアメリカで性別変更を申請し、日本でも性別移行と結婚書類の変更を進めた。しかし、日本では彼女の性転換が事実上の同性婚の容認につながるとして認められなく･･･
  第16回（2021年）札幌国際短編映画祭 入選作品',
  feeling: '映画で知る歴史や社会',
  word: '社会の差別と戦う理由'
    },
    {
      title:'川凪ぐ火葬場',
  image:File.open('./app/assets/images/animation2.jpeg'),
  released_year:'2022',
  screening_time:'13',
  synposis:'家族を亡くし、死を受け入れられない少年と、火葬場でたった一人死と向き合い続けている老人が出会う。
  川辺の火葬場で、少年と老人はお互いの境遇を重ね合わせていき、死という事実に向き合い始める。
  第33回（2022）東京学生映画 アニメーション部門 入選作品',
  feeling: 'アニメだからこそ描ける世界',
  word: 'いつか誰かの死と向き合う'
    },
    {
      title:'キドラアローン　破壊の娘',
  image:File.open('./app/assets/images/action6.jpeg'),
  released_year:'2019',
  screening_time:'80',
  synposis:'荒廃した日本。とある山奥の田舎町、セーラー服姿で学校に向かうキドラを町民たちは笑顔で見送っていた。しかし、夕方になると町民たちは一変して鬼の形相でキドラに襲いかかる。そんな彼らをキドラは12歳とは思えない身のこなしで倒してしまう。そして偶然出会ったヒットマンを連れまた学校へと向かう……。やがて、キドラの正体と日中は平和を偽る町の全貌が明らかに!',
  feeling: '元気になりたいあなたに',
  word: '豹変する街、立ち向かう少女'
    },
    {
      title:'漫画誕生',
  image:File.open('./app/assets/images/drama8.jpeg'),
  released_year:'2018',
  screening_time:'119',
  synposis:'昭和18年、太平洋戦争が激化する中、内務省に呼びだされた北沢楽天は、検閲官に促されるまま自らの華やかな過去を語り始めた。
  卓越した風刺センスと確かな画力で次々と新しい表現方法に挑戦し、重鎮にまで登り詰めた楽天は、美しい妻・いのにも支えられ、漫画家としての地位を不動のものにした。しかし明治43年、大逆事件が勃発、かつての友人が関係していることを知る。時代は確実に移り変わろうとしていた−。',
  feeling: '映画で知る歴史や社会',
  word: '日本漫画の原点ここにあり'
    },
    {
      title:'アワ・ブリーフ・エタニティ',
  image:File.open('./app/assets/images/SF1.jpeg'),
  released_year:'2009',
  screening_time:'105',
  synposis:'東京で新種のウイルスが流行し、感染すると「最も大事な人の記憶」を失う奇病が発生する。自らを高等遊民と称する男・テルは、奇病が頻発する繁華街で昔の恋人・ミオと再会するが、彼女は感染者でテルを忘れていた。東京を発端にウイルス感染が世界中に拡大する中、記憶のないミオはテルに惹かれ、かつての恋愛をやり直すことを決意する。しかし今度はテルが感染し、ミオを忘れてしまう…。',
  feeling: '休日の午後にゆっくりと',
  word: '記憶と共に失いたくない君'
    },
    {
      title:'one two three',
  image:File.open('./app/assets/images/comedy1.jpeg'),
  released_year:'2018',
  screening_time:'21',
  synposis:'大学寮に住む篠原は、バンドで作詞とドラムを担当し、ライブを3日後に控えていた。この日、思いを寄せる井上から夕食に誘われた篠原は井上に宛てた手紙をしのばせる。そして迎えた夕食の席で井上からある人に向けて代筆の依頼をされる。篠原は好きな人からのお願いをどうするのか……',
  feeling: 'いつかの青春をあなたに',
  word: '青春のパワーここに宿る！'
    },
    {
      title:'ただいま、ジャクリーン',
  image:File.open('./app/assets/images/human.jpeg'),
  released_year:'2013',
  screening_time:'40',
  synposis:'幼い頃にバス事故で両親を亡くし孤児となった悟は、同じ事故で死亡した腹話術師の持っていたジャクリーンという人形と出会う。児童養護施設に入った悟は、腹話術をすることで少しずつ笑顔を取り戻す。13年後、施設を出てひとり暮らしをしている悟は、もうジャクリーンに見向きもしなくなっていた。そんなある日、バス事故の生存者で同じ施設で育った恵から「腹話術をしてほしい」と頼まれ、12年ぶりにジャクリーンと向き合う。',
  feeling: '今日も1日お疲れ様の一本',
  word: '君がいれば、大丈夫。'
    },
    {
      title:'惑星ミズサ',
  image:File.open('./app/assets/images/love9.jpeg'),
  released_year:'2014',
  screening_time:'96',
  synposis:'田舎町にあるちょうちん屋の一家に生まれ、美しい風景に囲まれながらも退屈な日々を過ごしているヨシスケ。ふらっと入った風俗店で、自分は宇宙人だと言い張る風俗嬢のミズサと出会う。ミズサに特別な感情を抱くようになったヨシスケは、風俗嬢を辞めてほしいと頼む。風俗を辞めると地球が滅亡すると語るミズサだったが、それを聞き入れることに。しかし、彼女の言葉を裏付けるように謎の黒い物体が地球を覆っていき…。',
  feeling: '元気になりたいあなたに',
  word: '地球も僕もぐるぐるだ'
    },
    {
      title:'ストロボライト',
  image:File.open('./app/assets/images/suspense4.jpeg'),
  released_year:'2013',
  screening_time:'122',
  synposis:'閑静な住宅街で起こった殺人事件。それは手首を切り落とすという猟奇的なものだった。
  捜査一課の刑事・小林秀は或る事件と同じ時系列で事件が展開している事に気づく。しかし彼は捜査中に襲われ重傷を負う。それをきっかけに断片的に欠落していく小林の記憶。それでも犯人逮捕に執着する小林には幼少期に両親を殺害された暗い過去があった。
  痛切な想いを胸に刑事として生きてきた彼が失われていく記憶の先に見た事件の真実とは…',
  feeling: '休日の午後にゆっくりと',
  word: 'その表情ははかなくも美しい'
    },
    {
      title:'大鹿村から吹くパラム',
  image:File.open('./app/assets/images/documentary7.jpeg'),
  released_year:'2021',
  screening_time:'87',
  synposis:'南アルプスが美しく望めるここは長野県下伊那郡大鹿村の釜沢。イギリスから移住してきたサイモン･ピゴットさんを中心に12人の住民が自然とのスローライフな生活を楽しんでいる。谷口昇さんは釜沢のシンボルである桜の木が切られていたのを発見する。実は、5年前の南アルプスを貫くトンネルの起工式以降、大鹿村ではリニア中央新幹線の工事が始まっていたのだ。第32回東京学生映画祭 コンペティション部門グランプリ受賞作品',
  feeling: '映画で知る歴史や社会',
  word: '山のため人のため挑むもの'
    },
    {
      title:'カパエマフの魔法石',
  image:File.open('./app/assets/images/animation3.jpeg'),
  released_year:'2020',
  screening_time:'8',
  synposis:'調査に10年の年月を費やし、美しいアニメーションと、力強い音楽とともに届けられる本作。「アロハの心をうたい継ぐ者 / Kumu Hina」のヒナ先生こと、ヒナレイモアナ・ウォン・カル。性的少数者として、また民族的少数者としてハワイの社会で声を上げ続けてきたヒナが「私たちの歴史を、私たちの言葉で、そして私たちで語り直す」と、次世代に贈る物語。
  第14回 関西クィア映画祭2021 上映作品',
  feeling: '映画で知る歴史や社会',
  word: '語り継ぐ気高き精神の物語'
    },
    {
      title:'未来の唄',
  image:File.open('./app/assets/images/human5.jpeg'),
  released_year:'2019',
  screening_time:'51',
  synposis:'福井県鯖江市河和田地区に1500年以上続く伝統産業「越前漆器」。漆器づくりの特徴は、木を伐り出すところから製品ができるまでの各工程を別々の職人が行うというところにある。その工程の一つである蒔絵師の市朗(塚田孝一郎)を祖父に持つ未来(月野もあ)。未来は、祖父に憧れ、蒔絵の前工程となる上塗り師になった。伝統が息づく小さなまちでコツコツと職人として成長してきた未来。しかし、とある決断を迫られていた…',
  feeling: '故郷に思いを馳せて',
  word: '守りたい伝統、変わる未来'
    },
    {
      title:'ゆきおんなの夏',
  image:File.open('./app/assets/images/love7.jpeg'),
  released_year:'2016',
  screening_time:'47',
  synposis:'真冬の東京で、ゆきおんなのゆきは、人間に恋をした。
  温かな彼の瞳に、その微笑みに少しでも近づきたいと願った。
  神様は恋の記憶と引き換えにゆきに人間の体を与え、ゆきは彼と出会ったあの場所に降り立った。
  真夏の東京で、ゆきはまた少しずつ、恋におちていく…',
  feeling: '女優の魅力が全開',
  word: '凍るロマンスは燃えたって'
    },
    {
      title:'薄明りのパレード',
  image:File.open('./app/assets/images/drama1.jpeg'),
  released_year:'2020',
  screening_time:'18',
  synposis:'緊急事態宣言下の東京。自宅待機中の真理恵は、恋人にも会えず、上の階に住むカップルの騒音にも悩まされ、苛立つ毎日を送っていた。ある日、真理恵は友人・クミ子と久々に連絡をとり、ビデオ通話を始める。ひたすら愚痴をこぼす真理恵に、クミ子は気晴らしとしてダンスを勧めるが、真理恵の鬱憤は爆発寸前にまで溜まっていた。',
  feeling: '元気になりたいあなたに',
  word: '大切なものを見失わぬよう'
    },
    {
      title:'つぶやき隊　～つぶやき続けて3作目～',
  image:File.open('./app/assets/images/comedy2.jpeg'),
  released_year:'2012',
  screening_time:'32',
  synposis:'つぶやき隊とは、身近にある物や動物たちがキモかわキャラクターとなり、普段、心の内に秘めている思いをつぶやく目的に結成された、とくしゅ部隊である。キモかわキャラ達のクスっと笑えるゆるーい“つぶやき”が評判になり、人気拡大中のツイッター的アニメーション「つぶやき隊」の第3弾',
  feeling: 'ほのぼのをおすそわけ',
  word: 'つぶやき続けるこの思い'
    },
    {
      title:'死なない子供、荒川修作',
  image:File.open('./app/assets/images/documentary5.jpeg'),
  released_year:'2010',
  screening_time:'80',
  synposis:'2005年に出現した極彩色の不可思議な建築物「三鷹天命反転住宅」。ここに住むと身体の潜在能力が引き出され、人間は死ななくなるという。この建物を創り上げた荒川修作から、あらゆる知性が想像しえなかった衝撃の生命論が明らかにされる。',
  feeling: '常識が全く通用しません',
  word: '繊細な傷を負った先には'
    },
    {
      title:'ローン・チャレンジャー',
  image:File.open('./app/assets/images/action7.jpeg'),
  released_year:'2012',
  screening_time:'82',
  synposis:'突如起こった爆弾テロ事件。現場を捉えたカメラに映し出されたのは、仮面の少女カンナ。その話題性を利用しようと企むTVプロデューサーと暗躍する陰の住人たち。少女に迫る危機に現れる謎の青年・加トらが繰り広げる。
  閉塞感漂う虚像の現代に一撃を衡く。',
  feeling: '殴る！蹴る！',
  word: '少女が導く破壊と平和'
    },
    {
      title:'私は兵器',
  image:File.open('./app/assets/images/suspense8.jpeg'),
  released_year:'2016',
  screening_time:'88',
  synposis:'少年時代、父が母の浮気相手を撲殺する現場を目撃してしまった丸瀬望都は、自分にもいつか暴力衝動が芽生えるのではと怖れていた。人との関わりを避けピアノ調律師となった望都は、自分と共通するものを感じる少年・藤井釈と出会い、ピアノを教えるようになる。釈の母・伊津佳の別れた夫・清一郎は、ジャーナリストとして各地で起こる不可解な無差別暴力事件を調べていた。同じ頃、望都は謎の復讐代行組織「代弁者たち」に取り込まれていく。しかし、清一郎が組織の存在を暴き始めて……。',
  feeling: '殴る！蹴る！',
  word: '悪は常に出番を待っている'
    },
    {
      title:'何度でも忘れよう',
  image:File.open('./app/assets/images/animation4.jpeg'),
  released_year:'2019',
  screening_time:'10',
  synposis:'不安定なママと2人で森に暮らす、クマのぬいぐるみ。たとえ傷つけられても、何度でも一緒に食事をし、腕の中に戻る。断片的に描かれるクマの生活から、幸せや痛み、様々な感覚を想像させる詩的なアニメーション。',
  feeling: 'やっぱ家族っていいなあ',
  word: '母への眼差しが多くを語る'
    },
    {
      title:'さようなら、ごくろうさん',
  image:File.open('./app/assets/images/human6.jpeg'),
  released_year:'2017',
  screening_time:'43',
  synposis:'小学校の警備員を退職した男。しかし男は夜になると、学校へ忍び込もうとする。一体、何があるのだろうか。夜の学校はちょっぴり怖くて、優しくて、狂っている。',
  feeling: '今日も1日お疲れ様の一本',
  word: '怖くて暖かい不思議な感じ'
    },
    {
      title:'Plastic Love Story',
  image:File.open('./app/assets/images/love1.jpeg'),
  released_year:'2013',
  screening_time:'124',
  synposis:'例えば、懐妊したとある女性。自らを傷つける女性が、自殺した中学の同級生に愛を求める物語。例えば、とある女子大生。愛してくれないエリート彼氏を持つ愛されたい女子大生が、大学の清掃員を愛そうとする物語。例えば、とある田舎町に暮らす少女。孤独な少女の前に現れた一人の青年。決して交わることのない3 つの恋の物語が、“Plastic Love Story”という1 つのラブストーリーを紡ぎ出す。',
  feeling: '誰かの成長を見届ける',
  word: '偽の愛で見つけた本物の私'
    },
    {
      title:'ロッキンハートブレイカーズ',
  image:File.open('./app/assets/images/drama2.jpeg'),
  released_year:'2018',
  screening_time:'94',
  synposis:'ヤクザのゼットと死刑囚の娘、ナンシーが行き場のない魂を寄せ合うように「お姫様ごっこ」に毎日勤しむ。無理難題を命令するナンシー。それに従うゼット。抗争中の組を盛り立てながらも、近藤組長のエキセントリックな生き方に翻弄されるゼット。覚せい剤入りのタレを使用して荒稼ぎをしている焼肉屋で働くナンシー。二人の想いがお互い気づき始めた時、二人を取り囲む世界が崩壊し始める。',
  feeling: '常識が全く通用しません',
  word: '変わった二人の狂った関係'
    },
    {
      title:'ぼくらの自由研究',
  image:File.open('./app/assets/images/animation5.jpeg'),
  released_year:'2018',
  screening_time:'6',
  synposis:'夏休み明け、クラスの自由研究での発表会。去年の発表で、自作のロボットを爆発させてしまった津田沼くんは、今年のリベンジに燃えていた…。しかし？',
  feeling: '仲間と流す汗と涙',
  word: '何かに熱中する幸せを皆で'
    },
    {
      title:'エキストランド',
  image:File.open('./app/assets/images/comedy4.jpeg'),
  released_year:'2017',
  screening_time:'91',
  synposis:'過去のある大失敗により映画を作れなくなったプロデューサーの駒田は、映画製作で地元を盛り上げたいと思っている市民たちを巧みに欺き、自分のためだけに映画を作ろうと画策する。当初は駒田の指示におとなしく従っていた市民たちだったが、彼の横暴な振る舞いに次第に疑問を感じるようになる。自分たちは利用されているだけだったと気がついた市民たちは、撮影最終日に駒田への逆襲を企てる。',
  feeling: '常識が全く通用しません',
  word: 'こんな撮影は嫌だ'
    },
    {
      title:'動物愛護法',
  image:File.open('./app/assets/images/documentary6.jpeg'),
  released_year:'2021',
  screening_time:'117',
  synposis:'2017年、埼玉県で起きた残虐極まりない連続猫虐殺事件で逮捕された元税理士の男に下された判決は執行猶予4年というあまりにも虚仮威しの茶番であった。
  現実社会と法曹界の乖離に疑問を抱いた監督が、4年の歳月を費やして、独自取材で様々な動物虐待犯と対峙した記録映画。',
  feeling: '映画で知る歴史や社会',
  word: '人間至上主義の大罪を暴く'
    },
    {
      title:'キュクロプス',
  image:File.open('./app/assets/images/suspense3.jpeg'),
  released_year:'2018',
  screening_time:'108',
  synposis:'妻とその愛人を殺害した罪で投獄された男・篠原。14年の服役を終えた彼は、妻を殺し、自分をわなに陥れた真犯人への復讐のため、事件が起きた町に戻ってきた。事件の捜査を担当した刑事・松尾と情報屋・西の協力を得て、篠原は真犯人に近づいていくが…。',
  feeling: '休日の午後にゆっくりと',
  word: '骨太ノワール表現の魔法'
    },
    {
      title:'制服サバイガール1',
  image:File.open('./app/assets/images/action8.jpeg'),
  released_year:'2008',
  screening_time:'78',
  synposis:'17歳の夏目さくらは、仲間6人と共に、仲間の一人、葵の叔父が経営するテーマパークへ遊びに行くことに。その名は“サバイバルランド”。忍者や侍、ガンマンに扮した敵とリアルなシューティングゲームが体験できる場所である。敵は狡猾な男たちだが、攻撃は一切してこないので、女性でも安心して楽しめる。7人はそれぞれコスプレをして武器を持ちゲームはスタート。敵役を撃ち倒し、ストレスを発散、ゲームを楽しんでいた。しかし、敵役の一人が突然、敵味方関係なく攻撃を始める。',
  word: 'あなたはどこで気付いた？'
    },
    {
      title:'TACTICS/JUDGEMENT',
  image:File.open('./app/assets/images/SF2.jpeg'),
  released_year:'2015',
  screening_time:'27',
  synposis:'極悪弁護士、黒原は数多くの犯罪者を無罪としてきた。その日行われた裁判も殺人犯を無罪に導いた。しかし犠牲者の母親が目の前で自殺。その怨念の導きにより謎の世界で裁判の被告人となってしまう。そこでは自分を弁護する人、相手取る検察官、裁判官、証人、傍聴人までもが自分自身だった。その世界から抜け出すためにはその裁判（自分自身）に勝たなくてはならない。そしてかつてない裁判は開廷された。',
  feeling: '常識が全く通用しません',
  word: '全て自分 脅威の1人24役'
    },
    {
      title:'ねこにみかん',
  image:File.open('./app/assets/images/human7.jpeg'),
  released_year:'2014',
  screening_time:'105',
  synposis:'婚約者の智弘(大東駿介)に連れられ真知子(黒川芽以)は彼の実家を訪れるが、一家はさまざまな事情を抱えていた。3人の異母兄弟と、ママと呼ばれる里美(竹下かおり)、カカと呼ばれる佳代子(高見こころ)、ハハと呼ばれる成美(辰寿広美)、全員の父親でチチと呼ばれる正一郎(隆大介)とそれぞれに役割があり、独自のルールの中で均衡を保っていた。しかし、真知子の登場により一家の微妙なバランスが崩れていき…。',
  feeling: 'やっぱ家族っていいなあ',
  word: '大切なのは互いを認める心'
    },
    {
      title:'男の優しさは全部下心なんですって',
  image:File.open('./app/assets/images/love2.jpeg'),
  released_year:'2021',
  screening_time:'72',
  synposis:'遊園地の跡地にできたショッピングモールのメリーゴーランドで働く宇田みこ。好きになる男には常に本命がいて、"恋愛体質純情セカンド"状態の日々を送っている。次々訪れる出会いと別れの中、日常と非日常の境界線も超え、宇田みこの奮闘は続く…！果たして宇田みこは愛する人の一番手になれるのか？',
  feeling: '元気になりたいあなたに',
  word: '波乱の恋愛悪路突き進め！'
    },
    {
      title:'くにこマイル',
  image:File.open('./app/assets/images/drama10.jpeg'),
  released_year:'2013',
  screening_time:'46',
  synposis:'同棲していた中田君の浮気が原因で部屋を追い出された国子は、どこへ行くあてもなく、仕方がないので昔付き合い別れた男たちを頼っていた。腹ぼてヤンキーと付き合っている小池君、テント暮らしをしている同級生の水田と手伝いの佳子さん、新興宗教に入った直やんのお父さんなどなど。その遍歴には、悲しいことや温かいことが色々あり、、、',
  feeling: 'ほのぼのをおすそわけ',
  word: '喜び悲しみ、全身で感じよう'
    },
    {
      title:'こまねずみ常次朗',
  image:File.open('./app/assets/images/comedy3.jpeg'),
  released_year:'2006',
  screening_time:'80',
  synposis:'福岡でバーを経営する常次朗だが、日々の生活費も捻出できず、日掛け金融に手を出していた。今日もまた取り立て屋の猫本に１日６千円の返済も出来ず、大炎上寸前。
  借金地獄から脱出するため、常次朗はバーを閉めて新たに風俗店を開業する決意をする。常次朗の心意気に、猫本は風俗店開業をバックアップすることを約束。常次朗は猫本の好意を喜んで受けることにするが、そこには脱出不能な借金大地獄の罠が仕掛けられていた…。',
  feeling: '愛すべきB級映画',
  word: '泥沼！痛快！？借金地獄！'
    },
    {
      title:'ナオトひとりっきり',
  image:File.open('./app/assets/images/documentary2.jpeg'),
  released_year:'2015',
  screening_time:'98',
  synposis:'福島第一原子力発電所から12キロに位置し、原発事故後全町避難となった福島県富岡町には腹を空かせた犬猫や家畜があふれていた。そんな場所に一人残った松村直登さんは、動物たちにエサを与え面倒を見ている。彼が建設に関わった原発は地元に経済的恩恵をもたらすも、事故で人々の生活は一変。置き去りにされた動物たちを見守り続ける松村さんの日々を追う。',
  feeling: '映画で知る歴史や社会',
  word: '守りたい、命と故郷'
    },
    {
      title:'MERCURY',
  image:File.open('./app/assets/images/suspense1.jpeg'),
  released_year:'2018',
  screening_time:'58',
  synposis:'《クロムウェル》という組織の名称だけを手掛かりに、若きエージェントは相棒とともにサイバーテロの真相を追う。彼の過去が関係しているとも知らずに。過去に立ち向かう若きエージェントの葛藤を、従来のスパイ映画とは異なる切り口で描く。',
  feeling: '殴る！蹴る！',
  word: '鮮烈のスパイ 守り抜け！'
    },
    {
      title:'怪特探KAITOKUTAN 岸部町奇談',
  image:File.open('./app/assets/images/action4.jpeg'),
  released_year:'2013',
  screening_time:'96',
  synposis:'女子高生の黒江茜（工藤奈那）は、これまで多数の怪事件に挑んできた怪奇特別探偵、通称”怪特探”の狭間元（サエト）の事務所を訪れる。彼女は毎晩仮面を着けたセーラー服姿のマネキンに、執拗（しつよう）に追い掛け回されているのだと必死に訴える。狭間はいとも簡単にその問題を片付けたように見えたものの、類似の現象が続々と起きるようになり……。',
  feeling: '殴る！蹴る！',
  word: '新たな恐怖は伝染する'
    },
    {
      title:'BrerPotatoes',
  image:File.open('./app/assets/images/SF4.jpeg'),
  released_year:'2018',
  screening_time:'37',
  synposis:'廃部寸前の天文部の3人の部員は、学校の屋上で怪しい流れ星を発見する。その流れ星の正体を探っていくうちに、東京ディズニーランドに仕掛けられた爆弾を除去する羽目になる3人。はたして、3人は無事、東京ディズニーランドを救うことが出来るのだろうか。',
  feeling: '愛すべきB級映画',
  word: '観測、禁断の爆弾流れ星'
    },
    {
      title:'家路　～On The Way Home～',
  image:File.open('./app/assets/images/human8.jpeg'),
  released_year:'2015',
  screening_time:'75',
  synposis:'大学で歴史を教える進藤誠とその妻、咲と一人息子、陸の3人家族は幸せな日々を過ごしていた。そんなある日、妻と息子が踏み切り事故に合う。妻は亡くなり、息子は意識不明の重体に陥る。診断の末、息子は完全に正常であることが分かるが、眠ったままで意識が戻らない。
  誠は望みを託して、1984 年以降、進入が禁止されているカヤと呼ばれる町へ行く。そこには捕まえると願いが叶うという、獣の噂があった。',
  feeling: 'タオル必須、号泣の一本',
  word: '失った者たちがくれたもの'
    },
    {
      title:'閃光',
  image:File.open('./app/assets/images/love6.jpeg'),
  released_year:'2018',
  screening_time:'36',
  synposis:'元カノが結婚する事を知った夜、和也は公園で月華(ユェファ)という台湾人の女と出会う。悶々とする日々の中で流れ落ちるように出会った男女の生活を美しく繊細に切り取る。',
  feeling: '女優の魅力が全開',
  word: '夢のように現れた君を思う'
    },
    {
      title:'カンパニュラの少女',
  image:File.open('./app/assets/images/drama3.jpeg'),
  released_year:'2021',
  screening_time:'44',
  synposis:'中学2年生の矢野梓は、祖母・蛍と2人で暮らしている。ある日、梓は蛍のタンスからウエディングベールを見つける。花屋の前に座る謎の少女を盗撮している梓だが、ベールの発見以降少女と放課後の時間を共に過ごす仲になる。梓は少女に「ほたる」と呼び、ファインダーを覗きながらベールを頭に被る彼女の後を追いかける。
  第33回（2022）東京学生映画 実写長編部門 入選作品　審査員特別賞（三宅&希妃賞）受賞作品',
  feeling: 'ほのぼのをおすそわけ',
  word: '少女と少女の間にあるもの'
    },
    {
      title:'つぶやき隊　～つぶやき続けて4作目～',
  image:File.open('./app/assets/images/comedy6.jpeg'),
  released_year:'2012',
  screening_time:'34',
  synposis:'つぶやき隊とは、身近にある物や動物たちがキモかわキャラクターとなり、普段、心の内に秘めている思いをつぶやく目的に結成された、とくしゅ部隊である。キモかわキャラクター達のクスっと笑えるゆるーい“つぶやき”が面白いと評判になり、人気拡大中のツイッター的アニメーション！',
  feeling: 'ほのぼのをおすそわけ',
  word: 'つぶやきは止まらない'
    },
    {
      title:'KING OF TOKYO O FILME',
  image:File.open('./app/assets/images/documentary3.jpeg'),
  released_year:'2008',
  screening_time:'104',
  synposis:'ジーコ、リトバルスキー、ドゥンガといった数多くの外国人サッカー選手が活躍の陰で、鳴り物入りでもなく、卓越したテクニックを持ち合わせてもいない一人の男が1992年JFLへ入った。その男の名は、アマラオ。FC東京に入ると、持ち前の情熱でチームをJ2そしてJ1へと導いて行く。「キング・オブ・トーキョー」と呼ばれ、FC東京を去った今でも語り継がれるアマラオの実像に迫るヒューマンドキュメンタリー作品。',
  feeling: '映画で知る歴史や社会',
  word: '彼こそがKING'
    },
    {
      title:'アブダクティ',
  image:File.open('./app/assets/images/suspense2.jpeg'),
  released_year:'2013',
  screening_time:'97',
  synposis:'千葉厚志（温水洋一）は家族に捨てられ、借金を抱えた哀れな中年男。ある日、目が覚めると、そこはコンテナの中だった。コンテナごとトラックから船へと移されたものの、どこへ向かっているかもわからない。やがて、同様の状況に置かれた者たちとコンテナ越しに会話を始めた千葉は、元妻と娘も拉致されているかもしれないと気付き……。',
  feeling: '常識が全く通用しません',
  word: '声を頼りに一人密室で奮闘！'
    },
    {
      title:'ドッグ・バイト・ドッグ',
  image:File.open('./app/assets/images/action1.jpeg'),
  released_year:'2006',
  screening_time:'108',
  synposis:'高級レストランで殺人事件が発生した。刑事ワイの執拗な捜査が進むにつれ、殺し屋のパンは孤児であり、闘犬のように育てられたことが判明。彼らは“生きるため”に地下格闘場で日々仲間の命を奪い合っていた。ある日ごみ埋め立て地に逃げ込んだパンは、父親に襲われている少女に出会う。孤独な二人は次第に惹かれ合っていくが、その矢先彼を追ってきたワイが現れるのだった。ユウとともに“生きるため”パンが取った行動とは…。',
  feeling: '殴る！蹴る！',
  word: '愛するフリは難しい'
    },
    {
      title:'LEGACY TIME',
  image:File.open('./app/assets/images/SF5.jpeg'),
  released_year:'2016',
  screening_time:'37',
  synposis:'突然人が消える、という現象が世界中で頻発し、地球の人口は99%以上が消滅。原因は不明だが、人が消える際には不自然に首が曲がり、その瞬間から10秒後に消えることがわかった。婚約者が消えてしまった男と、幼い娘が消えてしまった女が出会う。二人はただひたすらセックスをして、終末へと向かう時間を怠惰に過ごしている。ある日、男は自分が未来から来たことを思い出すのだが…。そして、女の首が曲がる…。',
  feeling: 'タオル必須、号泣の一本',
  word: 'つかめる愛は消えていくけど'
    },
    {
      title:'ボレロ',
  image:File.open('./app/assets/images/love4.jpeg'),
  released_year:'2009',
  screening_time:'47',
  synposis:'ギタリストのフトシ（辻岡正人）とボーカルで恋人のヒトミ（小田あさ美）は、ストリートミュージシャンとしてそこそこ知られた存在だった。ある日、フトシはヒトミにコンテストへの出場を打診されるものの断り、そのことがきっかけで二人は別れることに。ヒトミはそのコンテストに即席バンドで出場し優勝するが、一方、フトシの母は半身不随となってしまう。',
  feeling: '休日の午後にゆっくりと',
  word: '音が見える'
    },
    {
      title:'梅雨明けを待ちながら',
  image:File.open('./app/assets/images/drama4.jpeg'),
  released_year:'2020',
  screening_time:'13',
  synposis:'コロナ下、久々に陽が差した梅雨間のある日。那須で暮らす若菜のもとに、東京に住む幼なじみの蓮から電話がかかってくる。インスタレーション制作に必要な那須の写真と音を送ってほしいと蓮から頼まれた若菜は、スマートフォンを片手に那須の景色を集めに行く。那須の木々のざわめき、川瀬の響きが東京の蓮の部屋へと運ばれ、ふたりは過去へと思いをはせる･･･。
  第5回池袋みらい国際映画祭 入賞作品',
  feeling: '故郷に思いを馳せて',
  word: '離れていても季節は同じ'
    },
    {
      title:'こまねずみ常次朗 悪徳金融死すべし',
  image:File.open('./app/assets/images/comedy5.jpeg'),
  released_year:'2006',
  screening_time:'73',
  synposis:'マグロ船に乗って1年、借金を完済した常次朗は自分を罠にはめた憎き猫本への復讐を果たすため、同業の日掛け金融・新撰リースへと就職する。社長の近藤、先輩の長倉らの指導のもと、日掛け金融の世界に少しずつ馴染んできた常次朗に最大のチャンスが訪れる。
  婚約者の捺子が働いているクラブに猫本が客として現れたのだ。果たして、猫本への復讐は果たせるのか？それとも、常次朗は再び借金地獄にはまってしまうのか！？',
  feeling: '愛すべきB級映画',
  word: '痛快！金融対決たい！'
    },
    {
      title:'みえない汚染・飯舘村の動物たち',
  image:File.open('./app/assets/images/documentary4.jpeg'),
  released_year:'2015',
  screening_time:'92',
  synposis:'無人と化した村に置き去りにされた多くの動物たち。震災が浮き彫りにした人間の身勝手さ、醜さがあぶり出される!
  そんな過酷な環境の中、ギリギリに生きた動物たちと彼等を救うべく独自に動物保護シェルターを建設した男の執念を追った問題作!',
  feeling: '映画で知る歴史や社会',
  word: '取り残された動物の叫び'
    },
    {
      title:'Water Off a Dogs Back',
  image:File.open('./app/assets/images/suspense5.jpeg'),
  released_year:'2014',
  screening_time:'13',
  synposis:'初めて、恋人の家を訪問するイーライ。玄関の前で彼女に「僕のこと気に入ってくれるかな？」と聞くと、意外にも「ムリね」という素っ気ない答。ますます緊張するイーライの前に出てきたのは、付け鼻をした笑顔の父親だった。はたして、イーライはこの家族と仲良くやっていけるのだろうか？',
  feeling: '常識が全く通用しません',
  word: '虚構か真実か恐るべき家族'
    },
    {
      title:'制服サバイガール2',
  image:File.open('./app/assets/images/action2.jpeg'),
  released_year:'2008',
  screening_time:'70',
  synposis:'テーマパーク“サバイバルランド”で起こった女子高生同士の残酷な殺し合いから数日後。 無事に生き残った秋川葵、夏目さくら、工藤坩那は政府の特殊機関に保護され病院に隔離されていた…。謎の植物に浸食されゾンビ化しつつあるさくら、心的外傷を受け、すっかり心を閉ざしてしまった坩那の姿。葵は、クラスメイトたちをサバイバルランドへ連れて行った事を激しく後悔し、皆が犠牲になったことに責任を感じサバイバルランドへ。',
  word: '日常は、人の数だけ。'
    },
    {
      title:'湘南ものがたり',
  image:File.open('./app/assets/images/love8.jpeg'),
  released_year:'2013',
  screening_time:'112',
  synposis:'■展望台のある島
  駆け出しの小説家である“僕”と恋人の“君”。展望台で互いの気持ちを確かめ合うが、以前付き合っていた彼女と展望台に上ろうとして果たせないまま別れた苦い思い出があった…。
  ■鎌倉物語・黒い桜
  東京の大学に通う光弘は、最近夢を見ていない。恋人の沙耶が光弘の夢を見たと言い、行ったことのない場所を実際に見てきたかのように話す。その場所へ訪れた光弘は、沙耶の夢に出てきた美少女に出会う…。',
  feeling: '休日の午後にゆっくりと',
  word: '湘南には不思議な力がある'
    },
    {
      title:'公安警察捜査官',
  image:File.open('./app/assets/images/action5.jpeg'),
  released_year:'2006',
  screening_time:'81',
  synposis:'各地で続発する爆発事件。日本中枢にも爆弾テロの影が忍び寄っていた。
  警視庁公安部に異動となった狩場が欧州での日本人集団拉致疑惑を追う中で、アフリカのハキラ共和国が捜査線上に浮上。
  一方、公安の嶋村は、中東のテロリストの隠れ蓑となっている劇団に潜入。劇団はアフリカと通じたＮＰＯ団体とも関係があることを突き止める。
  全てが線上に並んだとき、更なる巨大な陰謀が炙り出されようとしていた。',
  feeling: '殴る！蹴る！',
  word: '竹内力主演アクション映画！'
    },
    {
      title:'ジュリエットとロミオが12人',
  image:File.open('./app/assets/images/suspense6.jpeg'),
  released_year:'2019',
  screening_time:'90',
  synposis:'ロミオとジュリエットの状況下（純愛だが世間のバッシングを受て不幸である）にいる現代のカップルを、高額な資金援助をするＪＣという謎の組織がある。定員５組の会員でいるには、常に不幸で純愛であることが規則。１組、規則違反、掟破りのカップルが出た。会員たちは、組織の命令で追放する違反カップルを探し当てなければならなかった－',
  feeling: '休日の午後にゆっくりと',
  word: '偽物の愛を突き止めろ！'
    }
  ]
)
  

GenreMovie.create!(
  [
    {
      movie_id: 1,
      genre_id: 3
    },
    {
      movie_id: 2,
      genre_id: 1
    },
    {
      movie_id: 3,
      genre_id: 6
    },
    {
      movie_id: 4,
      genre_id: 9
    },
    {
      movie_id: 5,
      genre_id: 4
    },
    {
      movie_id: 6,
      genre_id: 5
    },
    {
      movie_id: 7,
      genre_id: 2
    },
    {
      movie_id: 8,
      genre_id: 7
    },
    {
      movie_id: 9,
      genre_id: 8
    },
    {
      movie_id: 10,
      genre_id: 1
    },
    {
      movie_id: 11,
      genre_id: 3
    },
    {
      movie_id: 12,
      genre_id: 6
    },
    {
      movie_id: 13,
      genre_id: 9
    },
    {
      movie_id: 14,
      genre_id: 4
    },
    {
      movie_id: 15,
      genre_id: 2
    },
    {
      movie_id: 16,
      genre_id: 7
    },
    {
      movie_id: 17,
      genre_id: 8
    },
    {
      movie_id: 18,
      genre_id: 1
    },
    {
      movie_id: 19,
      genre_id: 3
    },
    {
      movie_id: 20,
      genre_id: 5
    },
    {
      movie_id: 21,
      genre_id: 6
    },
    {
      movie_id: 22,
      genre_id: 9
    },
    {
      movie_id: 23,
      genre_id: 1
    },
    {
      movie_id: 24,
      genre_id: 3
    },
    {
      movie_id: 25,
      genre_id: 2
    },
    {
      movie_id: 26,
      genre_id: 8
    },
    {
      movie_id: 27,
      genre_id: 6
    },
    {
      movie_id: 28,
      genre_id: 4
    },
    {
      movie_id: 29,
      genre_id: 5
    },
    {
      movie_id: 30,
      genre_id: 9
    },
    {
      movie_id: 31,
      genre_id: 1
    },
    {
      movie_id: 32,
      genre_id: 3
    },
    {
      movie_id: 33,
      genre_id: 2
    },
    {
      movie_id: 34,
      genre_id: 9
    },
    {
      movie_id: 35,
      genre_id: 8
    },
    {
      movie_id: 36,
      genre_id: 6
    },
    {
      movie_id: 37,
      genre_id: 5
    },
    {
      movie_id: 38,
      genre_id: 4
    },
    {
      movie_id: 39,
      genre_id: 7
    },
    {
      movie_id: 40,
      genre_id: 1
    },
    {
      movie_id: 41,
      genre_id: 3
    },
    {
      movie_id: 42,
      genre_id: 2
    },
    {
      movie_id: 43,
      genre_id: 8
    },
    {
      movie_id: 44,
      genre_id: 6
    },
    {
      movie_id: 45,
      genre_id: 5
    },
    {
      movie_id: 46,
      genre_id: 4
    },
    {
      movie_id: 47,
      genre_id: 7
    },
    {
      movie_id: 48,
      genre_id: 1
    },
    {
      movie_id: 49,
      genre_id: 3
    },
    {
      movie_id: 50,
      genre_id: 2
    },
    {
      movie_id: 51,
      genre_id: 8
    },
    {
      movie_id: 52,
      genre_id: 6
    },
    {
      movie_id: 53,
      genre_id: 5
    },
    {
      movie_id: 54,
      genre_id: 4
    },
    {
      movie_id: 55,
      genre_id: 7
    },
    {
      movie_id: 56,
      genre_id: 3
    },
    {
      movie_id: 57,
      genre_id: 2
    },
    {
      movie_id: 58,
      genre_id: 8
    },
    {
      movie_id: 59,
      genre_id: 6
    },
    {
      movie_id: 60,
      genre_id: 5
    },
    {
      movie_id: 61,
      genre_id: 4
    },
    {
      movie_id: 62,
      genre_id: 3
    },
    {
      movie_id: 63,
      genre_id: 4
    },
    {
      movie_id: 64,
      genre_id: 5
    }
  ]
)


