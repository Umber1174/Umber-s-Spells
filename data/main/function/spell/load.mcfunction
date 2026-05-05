## main:spell/load
# 魔法専用の起動処理

# 処理
    # 空を飛ぶ魔法
        # スコア(S.Flying [/.desc/.trgg/.swch/.time])を追加
            scoreboard objectives add S.Flying dummy
            scoreboard objectives add S.Flying.desc dummy
            scoreboard objectives add S.Flying.trgg trigger
            scoreboard objectives add S.Flying.swch dummy
            scoreboard objectives add S.Flying.time dummy
        
        # スコア(S.Flying [/.desc/.trgg/.swch/.time])の値を0に設定
            scoreboard players set @a[tag=!LoggedIn] S.Flying 0
            scoreboard players set @a[tag=!LoggedIn] S.Flying.desc 0
            scoreboard players set @a[tag=!LoggedIn] S.Flying.trgg 0
            scoreboard players set @a[tag=!LoggedIn] S.Flying.swch 0
            scoreboard players set @a[tag=!LoggedIn] S.Flying.time 0
