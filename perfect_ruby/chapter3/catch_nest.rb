catch :entire do
  catch :process do
    throw :entire # entireブロックを中断する
  end
end
