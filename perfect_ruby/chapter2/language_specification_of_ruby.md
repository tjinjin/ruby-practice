## Chapter2 rubyの言語仕様
### レシーバ

> Ruby ではメソッドを object.method() という形式で呼び出します。Smalltalk 流のオブジェクト指向ではメソッドの呼び出しを「オブジェクトにメッセージを送る」と表現します。メッセージを受け取るオブジェクトのことを「レシーバ (receiver) 」といい、Ruby ではドット ( . ) の左側の object がレシーバになります。Ruby の組み込み関数はレシーバを付けて呼び出すことができません。これは組み込み関数を Object クラスの private メソッドとして定義しているためです。private メソッドを呼び出す場合、レシーバには暗黙のうちに self が用いられます。Object はすべてのクラスのスーパークラスになるので、self がどんなクラスのオブジェクトでも組み込み関数を呼び出すことができるわけです。実は、トップレベルで定義される関数も Object クラスの private メソッドになります。したがって、トップレベルで定義された関数はどこからでも呼び出すことができるわけです。ちなみに、トップレベルにおける self の値は main で、これは Object クラスのインスタンスになります。

* http://www.geocities.jp/m_hiroi/light/abcruby11.html

レシーバはオブジェクト指向での考え方とのこと。まだしっくりこない

> オブジェクト指向では処理はメッセージのやり取りによって行うという考え方があります。 car の run メソッドを呼び出すというのをメッセージの観点からいうと  car に run のメッセージを送る となります。 このため、car はメッセージの受け取り側なので、「レシーバー」と呼ばれています。

* https://teratail.com/questions/1687

## Proc

* [[Ruby] ブロックやProcの使いどころを理解する - Qiita] (http://qiita.com/kidach1/items/15cfee9ec66804c3afd2)]
* [Procを制する者がRubyを制す（嘘）] (http://melborne.github.io/2014/04/28/proc-is-the-path-to-understand-ruby/)]

## 外部ファイルの読み込み
* requireは$LOAD_PATHに登録されているディレクトリからファイルを探す

## 擬似変数
self
__FILE__ : 現在実行中のソースのファイル名
__LINE__ : 現在実行中の行番号
__ENCODING__ : 現在のソースでのスクリプトエンコーディング
cf. __dir__というものもある。
