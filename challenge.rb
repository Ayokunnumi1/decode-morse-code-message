# method to decode a Morse code character, takes a string parameter, and return the corresponding character in uppercase
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

# Method to decode an entire word in Morse code, takes a string parameter, and return the string representation
def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end

# Method to decode the entire message in Morse code,takes a string parameter, and return the string representation
def decode_message(morse_code)
  decoded_message = ''
  words = morse_code.split('   ')
  words.each do |word|
    decoded_message += "#{decode_word(word)} "
  end
  decoded_message
end

# test methods
char = decode_char('.-')
puts char

word = decode_word('-- -.--')
puts word

message = decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts message
