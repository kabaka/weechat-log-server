class String
  def fix_encoding!
    encode! 'ASCII-8BIT',
      :invalid => :replace,
      :undef   => :replace
  end

  def hyperlinks!
    gsub! /(https?:\/\/[^\s]+[^\.])(\s|$)/i, '<a href="\1">\1</a>\2'
  end

  def hyperlinks
    gsub /(https?:\/\/[^\s]+[^\.](\s|$))/i, '<a href="\1">\1</a>\2'
  end
end
