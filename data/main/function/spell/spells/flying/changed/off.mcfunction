## main:spell/spells/flying/changed/off
# 切り替え処理(OFF)

# 処理
    # タグ(s.flying.changed)を付与
        tag @s add s.flying.changed
    
    # スコア(S.Flying.swch)の値を0に設定
        scoreboard players set @s S.Flying.swch 0
    
    # 属性(gravity)の値を初期化
        attribute @s gravity base reset
