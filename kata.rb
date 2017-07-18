def split_line(string, split_position, offset, line_length)
  line_begin = 0
  line_end = -1 
  string[line_begin..split_position-1] << "\n" << word_wrap(string[split_position+offset..line_end], line_length)
end

def word_wrap(string, line_length)
  if string.length <= line_length
    return string
  end
  last_space = string.rindex(" ", line_length)
  split_offset = 0
  if last_space.nil?
    split_line(string, line_length, split_offset, line_length)
  else
    split_offset = 1
    split_line(string, last_space, split_offset, line_length)
  end
end
