def word_wrap(string, line_length)
  if string.length <= line_length
    return string
  end
  space = string.index(" ")
  if space.nil?
    string[0..line_length-1] << "\n" << word_wrap(string[line_length..-1], line_length)
  else
    string[0..space-1] << "\n" << word_wrap(string[space+1..-1], line_length) 
  end
end
