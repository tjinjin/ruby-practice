=begin
準備→処理→後処理の流れの共通化にも使える

* ファイルのopen/close
* DBへの接続/接断
* トランザクションの開始/終了
* ロックと開放
=end

def write_with_lock
  File.open 'time.txt', 'w' do |f|
    f. flock File::LOCK_EX
    yield f

    f.flock File::LOCK_UN
  end
end

write_with_lock do |f|
  f.puts Time.now
end
