## main:spell/dc
# 魔法(切り替え)の発動解除

# 処理
    # スコア(DC)の値を0に設定
        scoreboard players set @s DC 0
    
    # 魔法
        # 空を飛ぶ魔法
            function main:spell/spells/flying/changed/off
