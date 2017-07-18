def wrap_string(string, line_length, offset)
    string[0, line_length-offset] << "\n" << word_wrap(string[line_length..-1], line_length)
end

def word_wrap(string, line_length)
  if string.length <= line_length
    return string
  end
  if string[line_length-1] == " "
    wrap_string(string, line_length, 1)
  else
    wrap_string(string, line_length, 0)
  end
end
