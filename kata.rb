STRING_BEGIN = 0
STRING_END = -1
OFFSET_BY_ONE = 1

def split_line(string, split_position)
  string[STRING_BEGIN..split_position-OFFSET_BY_ONE] << "\n"
end

def word_wrap(string, line_length)
  if string.length <= line_length
    return string
  end
  last_space_in_line = string.rindex(" ", line_length)
  if last_space_in_line.nil?
    split_line(string, line_length) <<
      word_wrap(string[line_length..STRING_END], line_length)
  else
    split_line(string, last_space_in_line) <<
      word_wrap(string[last_space_in_line + OFFSET_BY_ONE..STRING_END], line_length)
  end
end
