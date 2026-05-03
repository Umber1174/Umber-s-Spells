## main:item/grimoire
# アイテム(Grimoire)

# 処理
    # アイテム(Grimoire)を付与
        give @p written_book[max_stack_size=1, custom_data={"text": "Grimoire"}, written_book_content={title:"",author:"",pages:[{"score":{"name":"@s","objective":"S.Flying"},"bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"score":{"name":"@s","objective":"S.Flying.desc"}}]},"click_event":{"action":"run_command","command":"trigger S.Flying.trgg set 1"}}]}] 1
