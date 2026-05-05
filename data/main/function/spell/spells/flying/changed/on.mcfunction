## main:spell/spells/flying/changed/on
# 切り替え処理(ON)

# 処理
    # タグ(changed.flying)を付与
        tag @s add changed.flying
    
    # スコア(S.Flying.swch)の値を1に設定
        scoreboard players set @s S.Flying.swch 1
    
    # スコア(S.Flying.time)の値を0に設定
        scoreboard players set @s S.Flying.time 0
