## main:spell/advancement/used/flying
# 進捗(used.flying)達成後の処理

# 処理
    # アイテム(Scroll.Flying)を削除
        execute if items entity @s weapon.mainhand music_disc_11[custom_data={"text": "Scroll.Flying"}] unless items entity @s weapon.offhand music_disc_11[custom_data={"text": "Scroll.Flying"}] run item replace entity @s weapon.mainhand with air 1
        execute if items entity @s weapon.offhand music_disc_11[custom_data={"text": "Scroll.Flying"}] unless items entity @s weapon.mainhand music_disc_11[custom_data={"text": "Scroll.Flying"}] run item replace entity @s weapon.offhand with air 1
        execute if items entity @s weapon.mainhand music_disc_11[custom_data={"text": "Scroll.Flying"}] if items entity @s weapon.offhand music_disc_11[custom_data={"text": "Scroll.Flying"}] run item replace entity @s weapon.mainhand with air 1
    
    # スコア(S.Flying [/.desc])の値を1に設定
        scoreboard players set @s S.Flying 1
        scoreboard players set @s S.Flying.desc 1
    
    # タグ(update.Grimoire)を付与
        tag @s add update.Grimoire
