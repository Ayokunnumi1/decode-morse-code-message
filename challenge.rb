# decode a Morse code character, takes a string parameter, and return the corresponding character in uppercase
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

morse_code_to_test = [
  '.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---',
  '-.-', '.-..', '--', '-.', '---', '.--.', '--.-', '.-.', '...', '-',
  '..-', '...-', '.--', '-..-', '-.--', '--..'
]

morse_code_to_test.each do |morse_code|
  decoded_letter = decode_char(morse_code)
  puts "Morse Code: #{morse_code} => Decoded Letter: #{decoded_letter}"
end

# decode an entire word in Morse code, takes a string parameter, and return the string representation
def decode_word(morse_code)
  decoded_word = ''
  chars = morse_code.split
  chars.each do |char|
    decoded_word += decode_char(char)
  end
  decoded_word
end
