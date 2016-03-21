# Mix-inは組み込みクラスにも使われている
# この例ではeachしか実装されてないが、Enumerableをincludeしているので
# countやmapが利用できる

class FriendList
  include Enumerable

  def initialize(*friends)
    @friends = friends
  end

  def each
    for v in @friends
      yield v
    end
  end
end

friend_list = FriendList.new('Alice', 'Bob', 'Charlie')

friend_list.count
p friend_list.map {|v| v.upcase }
p friend_list.find {|v| /b/ === v }
