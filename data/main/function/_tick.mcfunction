## main:_tick
# 持続処理

# 処理
    # アイテム(Wand)
        # 右クリック
            # メインハンド
                # スコア(M-RCF)の値が0のプレイヤーのスコア(M-RCL)の値を0に設定
                    scoreboard players set @a[scores={M-RCF=0}] M-RCL 0
                
                # スコア(M-RCF)の値が1以上のプレイヤーのスコア(M-RCL)の値を1追加
                    scoreboard players add @a[scores={M-RCF=1..}] M-RCL 1
                
                # スコア(M-RCF)の値がスコア(M-RCL)より小さいとき、スコア(M-RCF)の値を0に設定
                    execute as @a if score @s M-RCF < @s M-RCL run scoreboard players set @s M-RCF 0
            
            # オフハンド
                # スコア(O-RCF)の値が0のプレイヤーのスコア(O-RCL)の値を0に設定
                    scoreboard players set @a[scores={O-RCF=0}] O-RCL 0
                
                # スコア(O-RCF)の値が1以上のプレイヤーのスコア(O-RCL)の値を1追加
                    scoreboard players add @a[scores={O-RCF=1..}] O-RCL 1
                
                # スコア(O-RCF)の値がスコア(O-RCL)より小さいとき、スコア(O-RCF)の値を0に設定
                    execute as @a if score @s O-RCF < @s O-RCL run scoreboard players set @s O-RCF 0
        
        # スペルスロット
            # ファイル(ss)を実行
                function main:text/ss
            
            # スコア(M-RCF)の値が1のプレイヤーのスコア(SSS)の値を1追加
                scoreboard players add @a[scores={M-RCF=1}] SSS 1
                scoreboard players set @a[scores={SSS=6..}] SSS 1
            
            # タイトル
                # タグ(have.wand)のないプレイヤーがメイン/オフハンドにアイテム(Wand)を所持しているとき、タグ(have.wand)を付与
                    execute as @a[tag=!have.wand] if items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run tag @s add have.wand
                
                # タグ(have.wand)のあるプレイヤーがメイン/オフハンドにアイテム(Wand)を所持していないとき、アクションバーを非表示 & タグ(have.wand)を剥奪
                    execute as @a[tag=have.wand] unless items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run title @s actionbar [{"text": ""}]
                    execute as @a[tag=have.wand] unless items entity @s weapon.* music_disc_11[custom_data={"text": "Wand"}] run tag @s remove have.wand
                
                # タグ(have.wand)のあるプレイヤーのアクションバーにテキスト(スコア(SSS): スコア(SS_ [1~5]))を表示
                    execute as @a[tag=have.wand, scores={SSS=1}] run title @s actionbar [{"text": "1: "}, {"score": {"name": "@s", "objective": "SS_1"}}]
                    execute as @a[tag=have.wand, scores={SSS=1}] run title @s actionbar [{"text": "2: "}, {"score": {"name": "@s", "objective": "SS_2"}}]
                    execute as @a[tag=have.wand, scores={SSS=1}] run title @s actionbar [{"text": "3: "}, {"score": {"name": "@s", "objective": "SS_3"}}]
                    execute as @a[tag=have.wand, scores={SSS=1}] run title @s actionbar [{"text": "4: "}, {"score": {"name": "@s", "objective": "SS_4"}}]
                    execute as @a[tag=have.wand, scores={SSS=1}] run title @s actionbar [{"text": "5: "}, {"score": {"name": "@s", "objective": "SS_5"}}]
