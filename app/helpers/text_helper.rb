module TextHelper
  def remove_unusual_characters(text)
    # ひらがな、カタカナ、漢字、全角数字、全角記号、全角英字にマッチする正規表現
    pattern = /[\p{hiragana}\p{katakana}\p{Han}０-９Ａ-Ｚａ-ｚ、。！？（）「」【】・]+/

    # マッチした文字だけを残して連結
    clean_text = text.scan(pattern).join('')

    clean_text
  end
end
