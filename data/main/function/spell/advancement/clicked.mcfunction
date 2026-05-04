## main:spell/advancement/clicked
# 進捗(clicked)達成後の処理

# 処理
    # 進捗(clicked)を剥奪
        advancement revoke @s only main:clicked
    
    # メインハンドにアイテム(Wand)を所持しているとき、スコア(M-RCF)の値を1追加
        execute if items entity @s weapon.mainhand music_disc_11[custom_data={"text": "Wand"}] run scoreboard players add @s M-RCF 1
    
    # オフハンドにアイテム(Wand)を所持しているかつメインハンドにアイテム(Wand)を所持していないとき、スコア(O-RCF)の値を1追加
        execute if items entity @s weapon.offhand music_disc_11[custom_data={"text": "Wand"}] unless items entity @s weapon.mainhand music_disc_11[custom_data={"text": "Wand"}] run scoreboard players add @s O-RCF 1
