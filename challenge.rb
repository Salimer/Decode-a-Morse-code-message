def decode_char(morse_code)
  morse_letters = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
    '-..' => 'D', '.'     => 'E', '..-.'  => 'F',
    '--.' => 'G', '....'  => 'H', '..'    => 'I',
    '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--'   => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..'  => 'Z'
  }
  morse_letters[morse_code]
end

def decode_word(morse_code)
  decoded_word = ''
  chars = morse_code.split
  chars.each do |char|
    decoded_word += decode_char(char)
  end
  decoded_word
end

def decode_message(morse_code)
  decoded_message = ''
  words = morse_code.split('   ')
  words.each do |word|
    decoded_message += "#{decode_word(word)} "
  end
  decoded_message
end

# Example usage
char = decode_char('.-')
puts char

word = decode_word('-- -.--')
puts word

message = decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts message
