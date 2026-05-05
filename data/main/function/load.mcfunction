## main:load
# 起動処理

# 処理
    # 読み込み通知
        # タグ(LoggedIn)のないプレイヤー
            tellraw @a[tag=!LoggedIn] [{"text": "[Umber's Spells]", "color": "gold"}, {"text": "が読み込まれました。", "color": "green"}]
        
        # タグ(LoggedIn)のあるプレイヤー
            tellraw @a[tag=LoggedIn] [{"text": "[Umber's Spells]", "color": "gold"}, {"text": "が読み込まれました。", "color": "green"}]
    
    # アイテム(Wand)
        # 右クリック
            # スコア(RC. [M/O] [F/L])を追加
                scoreboard objectives add RC.MF dummy
                scoreboard objectives add RC.ML dummy
                scoreboard objectives add RC.OF dummy
                scoreboard objectives add RC.OL dummy
            
            # スコア(RC. [M/O] [F/L])の値を0に設定
                scoreboard players set @a[tag=!LoggedIn] RC.MF 0
                scoreboard players set @a[tag=!LoggedIn] RC.ML 0
                scoreboard players set @a[tag=!LoggedIn] RC.OF 0
                scoreboard players set @a[tag=!LoggedIn] RC.OL 0
        
        # スペルスロット
            # スコア(SSS, SS_ [1/../5])を追加
                scoreboard objectives add SSS dummy
                scoreboard objectives add SS_1 dummy
                scoreboard objectives add SS_2 dummy
                scoreboard objectives add SS_3 dummy
                scoreboard objectives add SS_4 dummy
                scoreboard objectives add SS_5 dummy
            
            # スコア(SSS)の値を1に設定
                scoreboard players set @a[tag=!LoggedIn] SSS 1
            
            # スコア(SS_ [1/../5])の値を0に設定
                scoreboard players set @a[tag=!LoggedIn] SS_1 0
                scoreboard players set @a[tag=!LoggedIn] SS_2 0
                scoreboard players set @a[tag=!LoggedIn] SS_3 0
                scoreboard players set @a[tag=!LoggedIn] SS_4 0
                scoreboard players set @a[tag=!LoggedIn] SS_5 0
    
    # アイテム(Scroll)
        # ファイル(main:spell/load)を実行
            function main:spell/load
    
    # コマンドの実行結果を非表示
        gamerule send_command_feedback false
    
    # タグ(LoggedIn)を付与
        tag @a[tag=!LoggedIn] add LoggedIn
