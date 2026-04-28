## main:_load
# 起動処理

# 処理
    # データパックが読み込まれたことを通知
        # タグ(logged-in)のないプレイヤー
            tellraw @a[tag=!logged-in] [{"text": "[Umber's Spells]", "color": "gold"}, {"text": "データパックが読み込まれました。", "color": "green"}]
        
        # タグ(logged-in)のあるプレイヤー
            tellraw @a[tag=logged-in] [{"text": "[Umber's Spells]", "color": "gold"}, {"text": "データパックが読み込まれました。", "color": "green"}]
    
    # アイテム(Wand)
        # 右クリック
            # スコア([main/off] -RC [F/L])を追加
                scoreboard objectives add main-RCF dummy
                scoreboard objectives add main-RCL dummy
                scoreboard objectives add off-RCF dummy
                scoreboard objectives add off-RCL dummy
            
            # タグ(logged-in)のないプレイヤーのスコア([main/off] -RC [F/L])の値を0に設定
                scoreboard players set @a[tag=!logged-in] main-RCF 0
                scoreboard players set @a[tag=!logged-in] main-RCL 0
                scoreboard players set @a[tag=!logged-in] off-RCF 0
                scoreboard players set @a[tag=!logged-in] off-RCL 0
        
        # 
            # スコア(SelectedSpellSlot, SpellSlot_ [1~5])を追加
                scoreboard objectives add SelectedSpellSlot dummy
                scoreboard objectives add SpellSLot_1 dummy
                scoreboard objectives add SpellSLot_2 dummy
                scoreboard objectives add SpellSLot_3 dummy
                scoreboard objectives add SpellSLot_4 dummy
                scoreboard objectives add SpellSLot_5 dummy
            
            # タグ(logged-in)のないプレイヤーのスコア(SelectedSpellSlot)の値を1に設定
                scoreboard players set @a[tag=!logged-in] SelectedSpellSlot 1
            
            # タグ(logged-in)のないプレイヤーのスコア(SpellSLot_ [1~5])の値を0に設定
                scoreboard players set @a[tag=!logged-in] SpellSLot_1 0
                scoreboard players set @a[tag=!logged-in] SpellSLot_2 0
                scoreboard players set @a[tag=!logged-in] SpellSLot_3 0
                scoreboard players set @a[tag=!logged-in] SpellSLot_4 0
                scoreboard players set @a[tag=!logged-in] SpellSLot_5 0
    
    # タグ(logged-in)のないプレイヤーに、タグ(logged-in)を付与
        tag @a[tag=!logged-in] add logged-in
