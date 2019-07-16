# def is_user_letter_a_string_class?(user_letter)
# 	if user_letter == String

# end

def convert_to_ascii(user_letter)
	user_letter.ord
end

def add_key_to_ascii(ascii_num, key)
	key.between?(0,25)
	if (ascii_num + key).between?(91, 96) or (ascii_num + key)> 122
		ascii_num + key - 26
	else
		ascii_num + key 		
	end
	
end

def convert_to_letter(new_ascii_num)
	new_ascii_num.chr
end

def test_for_one_letter(user_letter,key)
	ascii_num = convert_to_ascii(user_letter)

	if ascii_num.between?(97, 122) or ascii_num.between?(65, 90)


		new_letter = add_key_to_ascii(ascii_num, key)
		convert_to_letter(new_letter)

		else
		new_letter = add_key_to_ascii(ascii_num, 0)
		convert_to_letter(new_letter)
	end
end

def caesar_cipher(message, key)
	# prendre message
	# transformer en ascii
		# array_chr = message.split
		str_output = String.new

		message.each_char do |letter|
		str_output << test_for_one_letter(letter, key)
		end

		str_output
		# str_output = array_chr.join(' ')
	# Ajouter à chaque caractère ascii le nombre de la clé
	# convert les caractères en string
	# sortir le message crypté 
end