## main:_load
# 起動処理

# 処理
    # 読み込み通知
        # タグ(logged-in)のないプレイヤー
            tellraw @a[tag=!logged-in] [{"text": "[Umber's Spells]", "color": "gold"}, {"text": "が読み込まれました。", "color": "green"}]
        
        # タグ(logged-in)のあるプレイヤー
            tellraw @a[tag=logged-in] [{"text": "[Umber's Spells]", "color": "gold"}, {"text": "が読み込まれました。", "color": "green"}]
    
    # アイテム(Wand)
        # 右クリック
            # スコア([M/O] -RC [F/L])を追加
                scoreboard objectives add M-RCF dummy
                scoreboard objectives add M-RCL dummy
                scoreboard objectives add O-RCF dummy
                scoreboard objectives add O-RCL dummy
            
            # タグ(logged-in)のないプレイヤーのスコア([M/O] -RC [F/L])の値を0に設定
                scoreboard players set @a[tag=!logged-in] M-RCF 0
                scoreboard players set @a[tag=!logged-in] M-RCL 0
                scoreboard players set @a[tag=!logged-in] O-RCF 0
                scoreboard players set @a[tag=!logged-in] O-RCL 0
        
        # スペルスロット
            # スコア(SSS, SS_ [1~5])を追加
                scoreboard objectives add SSS dummy
                scoreboard objectives add SS_1 dummy
                scoreboard objectives add SS_2 dummy
                scoreboard objectives add SS_3 dummy
                scoreboard objectives add SS_4 dummy
                scoreboard objectives add SS_5 dummy
            
            # タグ(logged-in)のないプレイヤーのスコア(SSS)の値を1に設定
                scoreboard players set @a[tag=!logged-in] SSS 1
            
            # タグ(logged-in)のないプレイヤーのスコア(SS_ [1~5])の値を0に設定
                scoreboard players set @a[tag=!logged-in] SS_1 0
                scoreboard players set @a[tag=!logged-in] SS_2 0
                scoreboard players set @a[tag=!logged-in] SS_3 0
                scoreboard players set @a[tag=!logged-in] SS_4 0
                scoreboard players set @a[tag=!logged-in] SS_5 0
    
    # タグ(logged-in)のないプレイヤーに、タグ(logged-in)を付与
        tag @a[tag=!logged-in] add logged-in
