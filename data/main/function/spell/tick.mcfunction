## main:spell/tick
# 魔法専用の持続処理

# 処理
    # アイテム(Wand)
        # 発動
            # 空を飛ぶ魔法
                scoreboard players set @a[scores={O-RCF=1, SSS=1, SS_1=1, S.Flying.swch=0}] S.Flying.swch 1
                scoreboard players set @a[scores={O-RCF=1, SSS=1, SS_1=1, S.Flying.swch=1}] S.Flying.swch 0
    
    # アイテム(Grimoire)
        # スコア(S.Flying.trgg)
            # 1
                execute as @a[scores={S.Flying=0, S.Flying.trgg=1}] run tellraw @s [{"text": "この魔法はまだ覚えていません。", "color": "red"}]
                execute as @a[scores={S.Flying=1, S.Flying.trgg=1}] unless items entity @s weapon.offhand music_disc_11[custom_data={"text": "Wand"}] run tellraw @s [{"text": "オフハンドに杖を所持してください。", "color": "red"}]
                execute as @a[scores={S.Flying=1, S.Flying.trgg=1, SSS=1}] if items entity @s weapon.offhand music_disc_11[custom_data={"text": "Wand"}] run scoreboard players set @s SS_1 1
                execute as @a[scores={S.Flying=1, S.Flying.trgg=1, SSS=2}] if items entity @s weapon.offhand music_disc_11[custom_data={"text": "Wand"}] run scoreboard players set @s SS_2 1
                execute as @a[scores={S.Flying=1, S.Flying.trgg=1, SSS=3}] if items entity @s weapon.offhand music_disc_11[custom_data={"text": "Wand"}] run scoreboard players set @s SS_3 1
                execute as @a[scores={S.Flying=1, S.Flying.trgg=1, SSS=4}] if items entity @s weapon.offhand music_disc_11[custom_data={"text": "Wand"}] run scoreboard players set @s SS_4 1
                execute as @a[scores={S.Flying=1, S.Flying.trgg=1, SSS=5}] if items entity @s weapon.offhand music_disc_11[custom_data={"text": "Wand"}] run scoreboard players set @s SS_5 1
            
            # 有効化 & 初期化
                scoreboard players enable @a S.Flying.trgg
                scoreboard players set @a[scores={S.Flying.trgg=1}] S.Flying.trgg 0
