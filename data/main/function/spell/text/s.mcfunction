## main:spell/text/s
# スコア(S.)の値に表示するテキストの設定

# 処理
    # 0
        # Flying [/.desc]
            scoreboard players display numberformat @a[scores={S.Flying=0}] S.Flying fixed [{"text": "???"}]
            scoreboard players display numberformat @a[scores={S.Flying.desc=0}] S.Flying.desc fixed [{"text": "???"}]
    
    # 1
        # Flying [/.desc]
            scoreboard players display numberformat @a[scores={S.Flying=1}] S.Flying fixed [{"text": "空を飛ぶ魔法"}]
            scoreboard players display numberformat @a[scores={S.Flying.desc=1}] S.Flying.desc fixed [{"text": "空を飛べるよ！"}]
