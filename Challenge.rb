$morse_letters = {
  ".-"    => "A", "-..."  => "B", "-.-."  => "C",
  "-.."   => "D", "."     => "E", "..-."  => "F",
  "--."   => "G", "...."  => "H", ".."    => "I",
  ".---"  => "J", "-.-"   => "K", ".-.."  => "L",
  "--"    => "M", "-."    => "N", "---"   => "O",
  ".--."  => "P", "--.-"  => "Q", ".-."   => "R",
  "..."   => "S", "-"     => "T", "..-"   => "U",
  "...-"  => "V", ".--"   => "W", "-..-"  => "X",
  "-.--"  => "Y", "--.."  => "Z"
}

def decode_char(morse_code)
  letter = $morse_letters[morse_code]
  letter.nil? ? "" : letter.upcase
end

# Example usage
decoded_char = decode_char(".-")
puts decoded_char
