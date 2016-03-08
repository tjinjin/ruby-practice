#例外が発生したときに何らかの処理（ログを書き出すなど）したいときに便利

begin
  raise StandardError,'hi'
rescue => e
  logger.error.e.message # 例外をログに書き出す処理
  raise # 補足した例外をまた発生させる
end # StandardError: hi
