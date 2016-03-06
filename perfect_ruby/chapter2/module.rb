module Brainfsck
  class Parser
    puts 'Brainfsck::Parser'
  end
end

module Whitespace
  class Parser
    puts 'Whitespace::Parser'
  end
end

Brainfsck::Parser
Whitespace::Parser

=begin
moduleの使いドコロ

* あるクラスのインスタンスメソッドとして取り込む
* あるオブジェクトのメソッドとして取り込む
* モジュール関数として使う

=end
