require './i'

class Story
  def action1
    puts <<~TEXT
           どこに隠れる？？

           1.ベッドの下
           2.押し入れ
         TEXT
    num = gets.to_i

    if num == 1
      User.damage
    elsif num == 2
      User.progres
    end
  end

  def action2
    puts <<~TEXT
           外から物音がする。

           1.覗かない
           2.覗いてみる
         TEXT
    num = gets.to_i

    if num == 1
      User.progres
    elsif num == 2
      User.damage
    end
  end

  def action3
    puts <<~TEXT
           後ろに気配がする。

           1.振り向く
           2.振り向かない
         TEXT
    num = gets.to_i

    if num == 1
      User.progres
    elsif num == 2
      User.damage
    end
  end

  def action4
    puts <<~TEXT
           塩水をどれくらい口に含む？

           1.全部
           2.半分
         TEXT
    num = gets.to_i

    if num == 1
      User.damage
    elsif num == 2
      User.progres
    end
  end

  def action5
    puts <<~TEXT
           どうやって暇を潰す？

           1.静かにじっとしてる
           2.怖いので歌う
         TEXT
    num = gets.to_i

    if num == 1
      User.progres
    elsif num == 2
      User.damage
    end
  end

  def action6
    puts <<~TEXT
           声が聞こえる

           1.こんにちはと返す
           2.無言のままで過ごす
         TEXT
    num = gets.to_i

    if num == 1
      User.damage
    elsif num == 2
      User.progres
    end
  end

  def action7
    puts <<~TEXT
           友達から電話がかかってきた。

           1.出る
           2.出ない
         TEXT
    num = gets.to_i

    if num == 1
      User.damage
    elsif num == 2
      User.progres
    end
  end

  def action8
    puts <<~TEXT
           風呂場の人形が見当たらない。どうする。

           1.全力で探す
           2.諦めて寝る
         TEXT
    num = gets.to_i

    if num == 1
      User.progres
    elsif num == 2
      User.damage
    end
  end

  def action9
    puts <<~TEXT
           かくれんぼを終わらせるために風呂場に向かうと、
           そこに髪の長い女の人が立っている。

           1.怖いから外に逃げる。
           2.押し入れに戻る。
         TEXT
    num = gets.to_i

    if num == 1
      User.damage
    elsif num == 2
      User.progres
    end
  end

  def action10
    puts <<~TEXT
           恐怖でパニック状態に陥ってしまった

           1.電気をつける
           2.そのまま耐える
         TEXT
    num = gets.to_i

    if num == 1
      User.damage
    elsif num == 2
      User.progres
    end
  end
end
