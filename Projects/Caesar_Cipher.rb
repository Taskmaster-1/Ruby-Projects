# Function to encrypt text using a Caesar cipher
def caesar_cipher(text, shift)
    encrypted_text = ""
  
    text.each_char do |char|
      if char.match(/[A-Za-z]/)
        base = char =~ /[A-Z]/ ? 'A' : 'a'
        encrypted_char = (char.ord - base.ord + shift) % 26 + base.ord
        encrypted_text << encrypted_char.chr
      else
        encrypted_text << char
      end
    end
  
    encrypted_text
  end
  
  # Function to play the Caesar cipher game
  def play_caesar_cipher
    puts "Welcome to the Caesar Cipher game!"
    print "Enter your message: "
    message = gets.chomp
  
    print "Enter the shift value (integer): "
    shift = gets.to_i
  
    encrypted_message = caesar_cipher(message, shift)
    puts "Encrypted message: #{encrypted_message}"
  
    decrypted_message = caesar_cipher(encrypted_message, -shift)
    puts "Decrypted message: #{decrypted_message}"
  end
  
  # Main game loop
  play_caesar_cipher
    