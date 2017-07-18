def word_wrap(string, line_length)
  if string.length <= line_length
    return string
  end
  string[0, line_length] << "\n" << string[line_length..-1]
end
