# 動かない
count = database_connection.get_int(<<"EOS" % author.id)
  SELECT COUNT(*)
  FROM book
  WHERE book.author_id = %d
EOS

# 式典会が有効
p <<EOS
  line1\t
  line2
EOS

# 式典会が無効
p <<'EOS'
  line1\t
  line2
EOS

# tab/空白が必要
if something?
  database_connection.search <<- 'SQL'
    SELECT *
    FROM book
    WHERE expired_at <= CURRENT_DATE
  SQL
end
