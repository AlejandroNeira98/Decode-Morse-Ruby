def decode_char(char)
  morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
    '-----' => '0'
  }
  morse[char]
end

def decode_word(word)
  chars = word.split
  result = ''
  chars.each do |c|
    result += decode_char(c)
  end
  result
end

def decode(sentence)
  words = sentence.split('   ')
  result = ''
  words.each do |word|
    result += decode_word(word)
    result += ' '
  end
  result
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
