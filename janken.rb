require 'byebug'
# プレイヤー(自分)に「0 ~ 2」を入力させるロジックを書きます。
class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"
    input_hand = gets.to_i
    while true
      if input_hand == 0 || input_hand == 1 || input_hand == 2
          return input_hand
      else
          return hand
        end
        break
      end
  end
end

# 敵が「0 ~ 2」の値をランダムで生成するロジックを書きます。
class Enemy
  def hand
      rand(0..2)
    # グー、チョキ、パーの値をランダムに出力させます。
  end

end
# プレイヤー(自分)が入力した「0 ~ 2」と、敵がランダムで生成した「0 ~ 2」をじゃんけんをさせて、その結果をコンソール上に出力するロジックを書きます。
class Janken
  def pon(player_hand, enemy_hand)
    # 変数「janken」に["グー", "チョキ", "パー"]を代入します。
    janken = ["グー", "チョキ", "パー"]
      puts "相手の手は#{janken[enemy_hand]}です"
      if player_hand == enemy_hand
          puts "あいこ"
          return true
        elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
          puts "あなたの勝ちです"
          return false
        else
          puts "あなたの負けです"
          return false
        end
      end
    end
# 変数「player」にPlayerをインスタンス化したものを代入します。
player = Player.new
# 変数「enemy」にEnemyをインスタンス化したものを代入します。
enemy = Enemy.new
# 変数「janken」にJankenをインスタンス化したものを代入します。
janken = Janken.new
# 変数「next_game」に「true」を代入します。※「next_game」が「false」にならない限り、永久にwhileで繰り返し処理を実行するためです。
next_game = true
# 以降の型の例に沿って実装しましょう ※実装する時場合はコメントアウトに注意しましょう。
  while next_game
  next_game = janken.pon(player.hand, enemy.hand)
    janken
  end
# rb.task
