## main:spell/spells/flying/flying
# 空を飛ぶ魔法

# 処理
    # スコア(S.Flying.time)の値を1追加(0..39)
        scoreboard players add @s[tag=!sneaking] S.Flying.time 1
        scoreboard players set @s[scores={S.Flying.time=40}] S.Flying.time 0
    
    # プレイヤーの状態
        # 通常状態
            # スコア(S.Flying.time)の値が0..19のプレイヤーの属性(gravity)の値を-0.0031に設定
                attribute @s[tag=standing, scores={S.Flying.time=0..19}] gravity base set -0.0031
            
            # スコア(S.Flying.time)の値が20..39のプレイヤーの属性(gravity)の値を0.0031に設定
                attribute @s[tag=standing, scores={S.Flying.time=20..39}] gravity base set 0.0031
        
        # スニーク状態
            # 視点の角度が-90..-0のプレイヤーのスコア(S.Flying.time)の値を20に設定 & 属性(gravity)の値を-0.0124に設定
                scoreboard players set @s[tag=sneaking, x_rotation=-90..-0] S.Flying.time 20
                attribute @s[tag=sneaking, x_rotation=-90..-0] gravity base set -0.0124
            
            # 視点の角度が0..90のプレイヤーのスコア(S.Flying.time)の値を0に設定 & 属性(gravity)の値を0.0124に設定
                scoreboard players set @s[tag=sneaking, x_rotation=0..90] S.Flying.time 0
                attribute @s[tag=sneaking, x_rotation=0..90] gravity base set 0.0124
        
        # 水泳状態
            # スコア(S.Flying.time)の値が0..19のプレイヤーの属性(gravity)の値を-0.0031に設定
                attribute @s[tag=swimming, scores={S.Flying.time=0..19}] gravity base set -0.0031
            
            # スコア(S.Flying.time)の値が20..39のプレイヤーの属性(gravity)の値を0.0031に設定
                attribute @s[tag=swimming, scores={S.Flying.time=20..39}] gravity base set 0.0031
