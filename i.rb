require "./story"

class User
  @@hp = 100
  @@degree_of_progress = 0

  def initialize(name, degree_of_difficulty)
    @@name = name
    @@degree_of_difficulty = degree_of_difficulty
  end

  def self.damage
    if @@degree_of_difficulty == 1
      @@hp -= rand(1..10)
    elsif @@degree_of_difficulty == 2
      @@hp -= rand(10..20)
    elsif @@degree_of_difficulty == 3
      @@hp -= rand(30..50)
    elsif @@degree_of_difficulty == 4
      @@hp -= 100
    end

    puts <<~TEXT
           ===================================

           #{@@name}の体力は残り#{@@hp}。
    現在の進行度：#{@@degree_of_progress}

           ===================================
         TEXT

    if @@hp <= 0
      puts <<~TEXT
             ====================================
                          Game Over
             ====================================
           TEXT
      exit
    end
  end

  def self.progres
    @@degree_of_progress += 1
    puts <<~TEXT
           ===================================

           #{@@name}の体力は残り#{@@hp}。
    現在の進行度：#{@@degree_of_progress}

           ===================================
         TEXT

    if @@degree_of_progress == 5
      puts <<~TEXT
             そろそろタイムリミットの2時間だ
             早く『ひとりかくれんぼ』を終わらせなければ！！

             あなたは急いで口に含んでいた塩水をぬいぐるみに
             吹きかけ、「私の勝ち」と言わなければならない。
           TEXT

      print "何回「私の勝ち」と言うべきか？"
      last_select = gets.chomp.to_i

      if last_select == 3
        puts <<~TEXT
               ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
                          🎉🎉CLEAR🎉🎉 

               あなたは無事『ひとりかくれんぼ』を終わらせ、
               朝を迎えることができました。
               ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
             TEXT
        exit
      else
        puts <<~TEXT
               ====================================
                            Game Over
               ====================================

               回数を間違えたため『ひとりかくれんぼ』は終わらず,,,

               参考サイト
               https://kyofu.takeshobo.co.jp/news/toshidensetsu/1178/
             TEXT
      end
      exit
    end
  end
end

class Methods < User
  def self.blank
    100.times do
      puts ""
    end
  end

  def self.start
    puts <<~TEXT
           ======================================
                    ⚠️ ひとりかくれんぼ ⚠️
            〜絶対に一人でプレイしないでください〜
           ======================================
           
           〜説明〜
           このゲームは、怪談話『ひとりかくれんぼ』を題材にして作成したゲームです。
           正しい選択肢を選んで、かくれんぼを終わらせましょう。
           

           -------------------------------------------
           制作期間：3日
           使用言語：Ruby
           
           〜製作者〜
           名前：taisei
           年齢：23
           
           未経験からエンジニア転職目指しています!!
           Ruby.Rails.Vue.js学習中
           -------------------------------------------

         TEXT
    print "START: 1\nEXIT: 2\n"
    first_num = gets.to_i
    exit if first_num == 2
  end

  def self.introduction
    firsts = [first1 = "あなたは『ひとりかくれんぼ』を知っているだろうか。\n",
              first2 = "『ひとりかくれんぼ』とは、危険な降霊術、あるいは呪術とされており、もし『ひとりかくれんぼ』を行った場合には、何かしらの怪奇現象が起きると言われている。\n発生する怪奇現象は人それぞれだが。以下の怪奇現象が起こると言われている\n",
              first3 = "◯ひとりかくれんぼに使用したぬいぐるみの失踪\n◯ポルターガイスト、ラップ音の発生\n◯機械が故障を起こしたり、壊れてしまう\n◯耳鳴りや悪寒、怪我をしていないのに激痛が走るなど身体的異常\n◯誰もいないのに声が聞こえる\n◯幽霊が見える\n",
              first4 = "あなたは今から『ひとりかくれんぼ』をしなければならない。\n無事朝を迎えられるだろうか……\n"]

    firsts.each do |first|
      first.chars.each do |new|
        print "#{new}"
        sleep 0.2
      end
      sleep 2
    end
  end

  def self.conversasion
    preparation = "ある日友人と話していたいあなたは『ひとりかくれんぼ』の存在を知る。"
    preparation.chars.each do |new|
      print "#{new}"
      sleep 0.15
    end
    sleep 3
    puts "\n友人『ひとりかくれんぼって知ってる？？』"
    sleep 3
    puts "#{@@name}『ひとりかくれんぼ？なにそれ？』"
    sleep 3
    puts "友人『降霊術の一つで実行すると様々な怪奇現象が起きるらしいよ笑やってみてよ笑』"
    sleep 3
    puts "#{@@name}『そうなんだ笑どうやってやるの？？』"
    sleep 3
    puts "友人に見せてもらったサイトに『ひとりかくれんぼ』のやり方が書いてあった"
    sleep 2
    puts <<~TEXT
      --------------------------------------------------------------------------------
      <準備するもの>                                                                    
       ・綿を抜いた手足のついたぬいぐるみ                                                   
       ・米
       ・縫い針、縫い糸（赤）
       ・包丁かカッターナイフ
       ・コップ一杯に塩
       ・爪切り
       ・命知らずの人は動物の肉、自分の毛髪や血（タブーの領域）

       夜中の3時までにこれらを準備しておき、まずはぬいぐるみの綿を全て取り除き米を詰める。
       自分の爪を切り、その一欠片を入れたあと赤い糸で縫う（爪→髪の毛→唾液→血の順番で危険度が変わる）
       ぬい終わったらそのまま赤い糸をぬいぐるみに巻き付け、ぬいぐるみに名前をつける。

       1.ぬいぐるみに向かって「最初の鬼は◯◯（自分の名前）だから」と3回言う。
       2.次に風呂場へ向かい、水を張った浴槽にぬいぐるみを沈める。
       3.部屋に戻り、家中の明かり、照明を全て消し、テレビだけ付ける。
         このときテレビは砂嵐の画面にし、目を瞑って10秒数える。
       4.包丁、またはカッターナイフを持ちながら風呂場へ向かう。
       5.ぬいぐるみのところまできたら「▲▲(ぬいぐるみの名前)見つけた」と言い、
         包丁をぬいぐるみに刺す。
       6.そして「次は▲▲が鬼」と言いながらその場所に置き、すぐに逃げて隠れる。
       7.塩水を半分ほど口に含む.
       8.心霊現象、怪奇現象が起きるまでひたすら隠れ、待ちます。
       9.終わらす際は「私の勝ち」と3回唱えて口に含んだ塩水を吹きかける ※2時間以内には終わらせること。
      ---------------------------------------------------------------------------------
    TEXT
    sleep 30
    puts "#{@@name}『面白そう！！今夜やってみる！』"
    sleep 3
    puts "友人『気をつけてね、、、』"
  end
end

Methods.blank
Methods.start
Methods.blank
Methods.introduction
print "名前を入力してください>"
name = gets.chomp
puts <<~TEXT
       難易度を選択してください。

       ・爪：1
       ・髪の毛：2
       ・唾液：3
       ・血：4

     TEXT
degree_of_difficulty = gets.to_i
user = User.new(name, degree_of_difficulty)
story = Story.new
Methods.blank
Methods.conversasion
Methods.blank

methods = [story.action1,
           story.action2,
           story.action3,
           story.action4,
           story.action5,
           story.action6,
           story.action7,
           story.action8,
           story.action9,
           story.action10]
methods.each do |method|
  method
end
