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
      password: SecureRandom.urlsafe_base64
    },
    {
      name:'tomoya',
      email:'admin@example.com',
      password:'password'
    },
    {
      name:'kenta',
      email:'icloud@example.com',
      password:'major12'
    },
    {
      name:'emiri',
      email:'aca06@example.com',
      password:'emiri1525'
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
  image:File.open('./app/assets/images/アニメーション1.jpeg'),
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
  image:File.open('./app/assets/images/ヒューマン2.jpeg'),
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
  image:File.open('./app/assets/images/animation6.jpeg'),
  released_year:'2019',
  screening_time:'80',
  synposis:'荒廃した日本。とある山奥の田舎町、セーラー服姿で学校に向かうキドラを町民たちは笑顔で見送っていた。しかし、夕方になると町民たちは一変して鬼の形相でキドラに襲いかかる。そんな彼らをキドラは12歳とは思えない身のこなしで倒してしまう。そして偶然出会ったヒットマンを連れまた学校へと向かう……。やがて、キドラの正体と日中は平和を偽る町の全貌が明らかに!',
  feeling: '元気になりたいあなたに',
  word: '豹変する街、立ち向かう少女'
    },
    {
      title:'漫画誕生',
  image:File.open('./app/assets/images/ドラマ8.jpeg'),
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
  image:File.open('./app/assets/images/ヒューマン3.jpeg'),
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
    }
  ]
)


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
      user_id: 1,
      follow_id: 2
    },
    {
      user_id: 1,
      follow_id: 3
    }
  ]
)