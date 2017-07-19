StringBegin = 0
StringEnd = -1
OffsetByOne = 1

def split_line(string, split_position)
  string[StringBegin..split_position-OffsetByOne] << "\n"
end

def word_wrap(string, line_length)
  if string.length <= line_length
    return string
  end
  last_space_in_line = string.rindex(" ", line_length)
  if last_space_in_line.nil?
    split_line(string, line_length) << word_wrap(string[line_length..StringEnd], line_length)
  else
    split_line(string, last_space_in_line) << word_wrap(string[last_space_in_line + OffsetByOne..StringEnd], line_length)
  end
end
