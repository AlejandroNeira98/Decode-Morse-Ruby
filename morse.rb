$morse = {
  ".-" => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E",
  "..-." => "F",
  "--." => "G",
  "...." => "H",
  ".." => "I",
  ".---" => "J",
  "-.-" => "K",
  ".-.." => "L",
  "--" => "M",
  "-." => "N",
  "---" => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-." => "R",
  "..." => "S",
  "-" => "T",
  "..-" => "U",
  "...-" => "V",
  ".--" => "W",
  "--..--" => "X",
  "-.--" => "Y",
  "--.." => "Z",
  ".----" => "1",
  "..---" => "2",
  "...--" => "3",
  "....-" => "4",
  "....." => "5",
  "-...." => "6",
  "--..." => "7",
  "---.." => "8",
  "----." => "9",
  "-----" => "0",
}

def decode_char(x)
  return $morse[x]
end

def decode_word(word)
  chars = word.split(' ')
  result = ''
  chars.each { |c|
    result += decode_char(c)
  }
  return result
end

print decode_word("-- -.--") 