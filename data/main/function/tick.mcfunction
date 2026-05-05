## main:tick
# 持続処理

# 処理
    # ファイル(main:spell/tick)を実行
        function main:spell/tick
    
    # アイテム(Wand)
        # 右クリック
            # メインハンド
                # スコア(RC.MF)の値が0のプレイヤーのスコア(RC.ML)の値を0に設定
                    scoreboard players set @a[scores={RC.MF=0}] RC.ML 0
                
                # スコア(RC.MF)の値が1以上のプレイヤーのスコア(RC.ML)の値を1追加
                    scoreboard players add @a[scores={RC.MF=1..}] RC.ML 1
                
                # スコア(RC.MF)の値がスコア(RC.ML)の値より小さいとき、スコア(RC.MF)の値を0に設定
                    execute as @a if score @s RC.MF < @s RC.ML run scoreboard players set @s RC.MF 0
            
            # オフハンド
                # スコア(RC.OF)の値が0のプレイヤーのスコア(RC.OL)の値を0に設定
                    scoreboard players set @a[scores={RC.OF=0}] RC.OL 0
                
                # スコア(RC.OF)の値が1以上のプレイヤーのスコア(RC.OL)の値を1追加
                    scoreboard players add @a[scores={RC.OF=1..}] RC.OL 1
                
                # スコア(RC.OF)の値がスコア(RC.OL)の値より小さいとき、スコア(RC.OF)の値を0に設定
                    execute as @a if score @s RC.OF < @s RC.OL run scoreboard players set @s RC.OF 0
        
        # スペルスロット
            # ファイル(ss)を実行
                function main:spell/text/ss
            
            # スコア(RC.MF)の値が1のプレイヤーのスコア(SSS)の値を1追加
                scoreboard players add @a[scores={RC.MF=1}] SSS 1
                scoreboard players set @a[scores={SSS=6..}] SSS 1
            
            # アイテム(Wand)をメイン/オフハンドに所持しているとき、タグ(have.Wand)を付与
                execute as @a if items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run tag @s add have.Wand
            
            # タグ(have.Wand)のあるプレイヤーがアイテム(Wand)をメイン/オフハンドに所持していないとき、アクションバーのテキストを非表示 & タグ(have.Wand)を剥奪
                execute as @a[tag=have.Wand] unless items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run title @s actionbar [{"text": ""}]
                execute as @a[tag=have.Wand] unless items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run tag @s remove have.Wand
            
            # タグ(have.Wand)のあるプレイヤーのアクションバーにテキスト(スコア(SSS): スコア(SS_ [1/../5]))を表示
                execute as @a[tag=have.Wand, scores={SSS=1}] run title @s actionbar [{"text": "1: "}, {"score": {"name": "@s", "objective": "SS_1"}}]
                execute as @a[tag=have.Wand, scores={SSS=2}] run title @s actionbar [{"text": "2: "}, {"score": {"name": "@s", "objective": "SS_2"}}]
                execute as @a[tag=have.Wand, scores={SSS=3}] run title @s actionbar [{"text": "3: "}, {"score": {"name": "@s", "objective": "SS_3"}}]
                execute as @a[tag=have.Wand, scores={SSS=4}] run title @s actionbar [{"text": "4: "}, {"score": {"name": "@s", "objective": "SS_4"}}]
                execute as @a[tag=have.Wand, scores={SSS=5}] run title @s actionbar [{"text": "5: "}, {"score": {"name": "@s", "objective": "SS_5"}}]
    
    # アイテム(Scroll)
        # ファイル(s)を実行
            function main:spell/text/s
    
    # アイテム(Grimoire)
        # タグ(update.Grimoire)のあるプレイヤーがホットバー/オフハンドにアイテム(Grimoire)を所持しているとき、アイテム(Grimoire)を更新
            execute as @a[tag=update.Grimoire] if items entity @s hotbar.0 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.0 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.Grimoire] if items entity @s hotbar.1 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.1 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.Grimoire] if items entity @s hotbar.2 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.2 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.Grimoire] if items entity @s hotbar.3 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.3 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.Grimoire] if items entity @s hotbar.4 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.4 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.Grimoire] if items entity @s hotbar.5 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.5 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.Grimoire] if items entity @s hotbar.6 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.6 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.Grimoire] if items entity @s hotbar.7 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.7 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.Grimoire] if items entity @s hotbar.8 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.8 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.Grimoire] if items entity @s weapon.offhand written_book[custom_data={"text": "Grimoire"}] run item replace entity @s weapon.offhand with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            
            execute as @a[tag=update.Grimoire] if items entity @s hotbar.* written_book[custom_data={"text": "Grimoire"}] run tag @s remove update.Grimoire
            execute as @a[tag=update.Grimoire] if items entity @s weapon.offhand written_book[custom_data={"text": "Grimoire"}] run tag @s remove update.Grimoire
    
    # プレイヤーの状態
        # 通常状態のとき、タグ(Sneaking, Swimming)を剥奪 & タグ(Standing)を付与
            execute as @a at @s positioned ~ ~1.5 ~ if entity @s[dy=0] run tag @s remove Sneaking
            execute as @a at @s positioned ~ ~1.5 ~ if entity @s[dy=0] run tag @s remove Swimming
            execute as @a at @s positioned ~ ~1.5 ~ if entity @s[dy=0] run tag @s add Standing
        
        # スニーク状態のとき、タグ(Standing, Swimming)を剥奪 & タグ(Sneaking)を付与
            execute as @a at @s positioned ~ ~1.5 ~ unless entity @s[dy=0] at @s positioned ~ ~1 ~ if entity @s[dy=0] run tag @s remove Standing
            execute as @a at @s positioned ~ ~1.5 ~ unless entity @s[dy=0] at @s positioned ~ ~1 ~ if entity @s[dy=0] run tag @s remove Swimming
            execute as @a at @s positioned ~ ~1.5 ~ unless entity @s[dy=0] at @s positioned ~ ~1 ~ if entity @s[dy=0] run tag @s add Sneaking
        
        # 水泳状態のとき、タグ(Standing, Sneaking)を剥奪 & タグ(Swimming)を付与
            execute as @a at @s positioned ~ ~1 ~ unless entity @s[dy=0] run tag @s remove Standing
            execute as @a at @s positioned ~ ~1 ~ unless entity @s[dy=0] run tag @s remove Sneaking
            execute as @a at @s positioned ~ ~1 ~ unless entity @s[dy=0] run tag @s add Swimming
