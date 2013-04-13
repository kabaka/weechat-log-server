class String
  def fix_encoding!
    encode! 'ASCII-8BIT',
      :invalid => :replace,
      :undef   => :replace
  end
end
