## main:clicked
# アイテム(Wand)の右クリック後の処理

# 処理
    # 進捗(clicked)を剥奪
        advancement revoke @s only main:clicked
    
    # スコアボード
        # アイテム(Wand)をメインハンドに所持しているとき、スコア(M-RCF)の値を1追加
            execute if items entity @s weapon.mainhand music_disc_11[custom_data={"text": "Wand"}] run scoreboard players add @s M-RCF 1
        
        # アイテム(Wand)をオフハンドに所持しているかつメインハンドに所持していないとき、スコア(O-RCF)の値を1追加
            execute if items entity @s weapon.offhand music_disc_11[custom_data={"text": "Wand"}] unless items entity @s weapon.mainhand music_disc_11[custom_data={"text": "Wand"}] run scoreboard players add @s O-RCF 1
