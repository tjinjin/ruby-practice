# $LOAD_PATH以下を読み込んで最初に見つかったファイルをロードする
require 'erb'

# requireに指定できるのは、.so/.dill/.bundle。拡張子は同名の
# ファイルがなければ省略可能
# 一度requireされると$LOADED_FEATURESに追加される。
#
#実行中のファイルから見た相対パスでrequireする
require_relative 'my_library'

# Kernel.#loadは拡張子を補完せず、requireと違い、何度も同じパスのファイルを
# 読み込める
load __dir__+'/config.rb'
