## main:_load
# 起動処理

# 処理
    # 読み込み通知
        # タグ(logged-in)のないプレイヤー
            tellraw @a[tag=!logged-in] [{"text": "[Umber's Spells]", "color": "gold"}, {"text": "が読み込まれました。", "color": "green"}]
        
        # タグ(logged-in)のあるプレイヤー
            tellraw @a[tag=logged-in] [{"text": "[Umber's Spells]", "color": "gold"}, {"text": "が読み込まれました。", "color": "green"}]
    
    # タグ(logged-in)を付与
        tag @a[tag=!logged-in] add logged-in
