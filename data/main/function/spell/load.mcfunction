## main:spell/load
# 魔法専用の起動処理

# 処理
    # 空を飛ぶ魔法
        # スコア(S.Flying [/.desc/.swch/.trgg])を追加
            scoreboard objectives add S.Flying dummy
            scoreboard objectives add S.Flying.desc dummy
            scoreboard objectives add S.Flying.swch dummy
            scoreboard objectives add S.Flying.trgg trigger
        
        # スコア(S.Flying [/.desc/.swch/.trgg])の値を0に設定
            scoreboard players set @a[tag=!logged-in] S.Flying 0
            scoreboard players set @a[tag=!logged-in] S.Flying.desc 0
            scoreboard players set @a[tag=!logged-in] S.Flying.swch 0
            scoreboard players set @a[tag=!logged-in] S.Flying.trgg 0
