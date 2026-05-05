## main:tick
# 持続処理

# 処理
    # ファイル(main:spell/tick)を実行
        function main:spell/tick

    # アイテム(Wand)
        # 右クリック
            # メインハンド
                # スコア(M-RCF)の値が0のプレイヤーのスコア(M-RCL)の値を0に設定
                    scoreboard players set @a[scores={M-RCF=0}] M-RCL 0
                
                # スコア(M-RCF)の値が1以上のプレイヤーのスコア(M-RCL)の値を1追加
                    scoreboard players add @a[scores={M-RCF=1..}] M-RCL 1
                
                # スコア(M-RCF)の値がスコア(M-RCL)の値より小さいとき、スコア(M-RCF)の値を0に設定
                    execute as @a if score @s M-RCF < @s M-RCL run scoreboard players set @s M-RCF 0
            
            # オフハンド
                # スコア(O-RCF)の値が0のプレイヤーのスコア(O-RCL)の値を0に設定
                    scoreboard players set @a[scores={O-RCF=0}] O-RCL 0
                
                # スコア(O-RCF)の値が1以上のプレイヤーのスコア(O-RCL)の値を1追加
                    scoreboard players add @a[scores={O-RCF=1..}] O-RCL 1
                
                # スコア(O-RCF)の値がスコア(O-RCL)の値より小さいとき、スコア(O-RCF)の値を0に設定
                    execute as @a if score @s O-RCF < @s O-RCL run scoreboard players set @s O-RCF 0
        
        # スペルスロット
            # ファイル(ss)を実行
                function main:spell/text/ss
            
            # スコア(M-RCF)の値が1のプレイヤーのスコア(SSS)の値を1追加
                scoreboard players add @a[scores={M-RCF=1}] SSS 1
                scoreboard players set @a[scores={SSS=6..}] SSS 1
            
            # タグ(have.wand)のないプレイヤーがアイテム(Wand)をメイン/オフハンドに所持しているとき、タグ(have.wand)を付与
                execute as @a[tag=!have.wand] if items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run tag @s add have.wand
            
            # タグ(have.wand)のあるプレイヤーがアイテム(Wand)をメイン/オフハンドに所持していないとき、アクションバーを非表示 & タグ(have.wand)を剥奪
                execute as @a[tag=have.wand] unless items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run title @s actionbar [{"text": ""}]
                execute as @a[tag=have.wand] unless items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run tag @s remove have.wand
            
            # タグ(have.wand)のあるプレイヤーのアクションバーにテキスト(スコア(SSS): スコア(SS_ [1/../5]))を表示
                execute as @a[tag=have.wand, scores={SSS=1}] run title @s actionbar [{"text": "1: "}, {"score": {"name": "@s", "objective": "SS_1"}}]
                execute as @a[tag=have.wand, scores={SSS=2}] run title @s actionbar [{"text": "2: "}, {"score": {"name": "@s", "objective": "SS_2"}}]
                execute as @a[tag=have.wand, scores={SSS=3}] run title @s actionbar [{"text": "3: "}, {"score": {"name": "@s", "objective": "SS_3"}}]
                execute as @a[tag=have.wand, scores={SSS=4}] run title @s actionbar [{"text": "4: "}, {"score": {"name": "@s", "objective": "SS_4"}}]
                execute as @a[tag=have.wand, scores={SSS=5}] run title @s actionbar [{"text": "5: "}, {"score": {"name": "@s", "objective": "SS_5"}}]
    
    # アイテム(Scroll)
        # ファイル(s)を実行
            function main:spell/text/s
    
    # アイテム(Grimoire)
        # タグ(update.grimoire)のあるプレイヤーがホットバー/オフハンドにアイテム(Grimoire)を所持しているとき、アイテム(Grimoire)を更新
            execute as @a[tag=update.grimoire] if items entity @s hotbar.0 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.0 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.grimoire] if items entity @s hotbar.1 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.1 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.grimoire] if items entity @s hotbar.2 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.2 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.grimoire] if items entity @s hotbar.3 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.3 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.grimoire] if items entity @s hotbar.4 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.4 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.grimoire] if items entity @s hotbar.5 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.5 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.grimoire] if items entity @s hotbar.6 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.6 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.grimoire] if items entity @s hotbar.7 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.7 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.grimoire] if items entity @s hotbar.8 written_book[custom_data={"text": "Grimoire"}] run item replace entity @s hotbar.8 with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            execute as @a[tag=update.grimoire] if items entity @s weapon.offhand written_book[custom_data={"text": "Grimoire"}] run item replace entity @s weapon.offhand with written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
            
            execute as @a[tag=update.grimoire] if items entity @s hotbar.* written_book[custom_data={"text": "Grimoire"}] run tag @s remove update.grimoire
            execute as @a[tag=update.grimoire] if items entity @s weapon.offhand written_book[custom_data={"text": "Grimoire"}] run tag @s remove update.grimoire
    
    # プレイヤーの状態
        # 通常状態のとき、タグ(sneaking, swimming)を剥奪 & タグ(standing)を付与
            execute as @a at @s positioned ~ ~1.5 ~ if entity @s[dy=0] run tag @s remove sneaking
            execute as @a at @s positioned ~ ~1.5 ~ if entity @s[dy=0] run tag @s remove swimming
            execute as @a at @s positioned ~ ~1.5 ~ if entity @s[dy=0] run tag @s add standing
        
        # スニーク状態のとき、タグ(standing, swimming)を剥奪 & タグ(sneaking)を付与
            execute as @a at @s positioned ~ ~1.5 ~ unless entity @s[dy=0] at @s positioned ~ ~1 ~ if entity @s[dy=0] run tag @s remove standing
            execute as @a at @s positioned ~ ~1.5 ~ unless entity @s[dy=0] at @s positioned ~ ~1 ~ if entity @s[dy=0] run tag @s remove swimming
            execute as @a at @s positioned ~ ~1.5 ~ unless entity @s[dy=0] at @s positioned ~ ~1 ~ if entity @s[dy=0] run tag @s add sneaking
        
        # 水泳状態のとき、タグ(standing, sneaking)を剥奪 & タグ(swimming)を付与
            execute as @a at @s positioned ~ ~1 ~ unless entity @s[dy=0] run tag @s remove standing
            execute as @a at @s positioned ~ ~1 ~ unless entity @s[dy=0] run tag @s remove sneaking
            execute as @a at @s positioned ~ ~1 ~ unless entity @s[dy=0] run tag @s add swimming
