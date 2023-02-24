class Remind
  def message
    contents = 
    [
      "日焼け止めの塗り直し時間をお知らせします!",
      "日焼け止めの塗り直し時間をお伝えします☀️",
      "日焼け止めの塗り直し時間になりました！",
      "そろそろ、日焼け止めの塗り直しをしてください☀️",
      "日焼け止めの塗り直し時間をお知らせします。お手隙のタイミングで塗り直しをしてくださいね☀️",
      "日焼け止めの塗り直しの時間になりました。お手隙のタイミングで塗り直しをしてくださいね☀️",
      "#{Time.now.hour}時をお知らせします。日焼け止めの塗り直しをお願いします☀️",
      "日焼け止めの塗り直しの時間になりました。塗り直しが面倒なときはスプレータイプの日焼け止めがおすすめです。さっと塗り直しができます！",
      "日焼け止めの塗り直し時間です！お家にいる時も窓ガラスから紫外線は入ってきます。家から1歩も出ない日も日焼け止めは欠かせません！",
      "#{Time.now.hour}時になりました☀️日焼け止めの塗り直しをお願いします！",
      "⭐️⭐️当たりです⭐️⭐️ちゃんと日焼け止めを塗り直せば、いいことあるかも！"
    ]
    contents.sample
  end

  def stamp
    stamp_id = 
    [
      10855,
      10856,
      10857,
      10858,
      10863,
      10864,
      10874,
      10876,
      10891,
      10878
    ]
    stamp_id.sample
  end
end
