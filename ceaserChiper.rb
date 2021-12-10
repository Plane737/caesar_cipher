def caesar_cipher(string, number)
  result = ""
  string.chars.map! do |letter|
    index = letter.ord
    # small letters
    if (index >= 96) && (index <= 122)
      index += number%26
      if index > 122
        index -= 26
      end
    end
    # capital letters
    if (index >= 65) && (index <= 90)
      index += number%26
      if index > 90
        index -= 26
      end
    end
    letter = index.chr
    result += letter
  end
  p result
end
caesar_cipher("aaaaaa", -27)
