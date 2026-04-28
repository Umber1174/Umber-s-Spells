## main:_tick
# 持続処理

# 処理
    # アイテム(Wand)
        # 右クリック
            # メインハンド
                # スコア(main-RCF)の値が0のプレイヤーのスコア(main-RCL)の値を0に設定
                    scoreboard players set @a[scores={main-RCF=0}] main-RCL 0
                
                # スコア(main-RCF)の値が1以上のプレイヤーのスコア(main-RCL)の値を1追加
                    scoreboard players add @a[scores={main-RCF=1..}] main-RCL 1

                # スコア(main-RCF)の値がスコア(main-RCL)より小さいとき、スコア(main-RCF)の値を0に設定
                    execute as @a if score @s main-RCF < @s main-RCL run scoreboard players set @s main-RCF 0
            
            # オフハンド
                # スコア(off-RCF)の値が0のプレイヤーのスコア(off-RCL)の値を0に設定
                    scoreboard players set @a[scores={off-RCF=0}] off-RCL 0
                
                # スコア(off-RCF)の値が1以上のプレイヤーのスコア(off-RCL)の値を1追加
                    scoreboard players add @a[scores={off-RCF=1..}] off-RCL 1
                
                # スコア(off-RCF)の値がスコア(off-RCL)より小さいとき、スコア(off-RCF)の値を0に設定
                    execute as @a if score @s off-RCF < @s off-RCL run scoreboard players set @s off-RCF 0
        
        # 
            # ファイル(spell-slot)を実行
                function main:text/spell-slot
            
            # スコア(main-RCF)の値が1のプレイヤーのスコア(SelectedSpellSLot)の値を1追加
                scoreboard players add @a[scores={main-RCF=1}] SelectedSpellSlot 1
                scoreboard players set @a[scores={SelectedSpellSlot=6..}] SelectedSpellSlot 1
            
            # タイトル
                # タグ(have.wand)のないプレイヤーがメイン/オフハンドにアイテム(Wand)を所持しているとき、タグ(have.wand)を付与
                    execute as @a[tag=!have.wand] if items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run tag @s add have.wand
                
                # タグ(have.wand)のあるプレイヤーがメイン&オフハンドにアイテム(Wand)を所持していないとき、アクションバーに無のテキストを表示 & タグ(have.wand)を剥奪
                    execute as @a[tag=have.wand] unless items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run title @s actionbar [{"text": ""}]
                    execute as @a[tag=have.wand] unless items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run tag @s remove have.wand
                
                # タグ(have.wand)のあるプレイヤーがメイン/オフハンドにアイテム(Wand)を所持しているとき、アクションバーにテキスト(スコア(SelectedSpellSlot): スコア(SpellSLot_ [1~5]))を表示
                    execute as @a[tag=have.wand, scores={SelectedSpellSlot=1}] if items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run title @s actionbar [{"text": "1: "}, {"score": {"name": "@s", "objective": "SpellSLot_1"}}]
                    execute as @a[tag=have.wand, scores={SelectedSpellSlot=2}] if items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run title @s actionbar [{"text": "2: "}, {"score": {"name": "@s", "objective": "SpellSLot_2"}}]
                    execute as @a[tag=have.wand, scores={SelectedSpellSlot=3}] if items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run title @s actionbar [{"text": "3: "}, {"score": {"name": "@s", "objective": "SpellSLot_3"}}]
                    execute as @a[tag=have.wand, scores={SelectedSpellSlot=4}] if items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run title @s actionbar [{"text": "4: "}, {"score": {"name": "@s", "objective": "SpellSLot_4"}}]
                    execute as @a[tag=have.wand, scores={SelectedSpellSlot=5}] if items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run title @s actionbar [{"text": "5: "}, {"score": {"name": "@s", "objective": "SpellSLot_5"}}]
