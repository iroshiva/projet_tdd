
# METHODES SPARÉES, DESTINÉÉS À UN CHARACTÈRE, QUE L'ON INJECTE DANS LA GROSSE METHODE CEASAR_CIPHER APRÈS


def convert_to_ascii(user_letter)
	user_letter.ord
	# user_letter == variable un charactère
	#.ord convertit la lettre en num ascii
end
# method qui convertit la lettre en ascii

def add_key_to_ascii(ascii_num, key)
	if (ascii_num + key).between?(91, 96) or (ascii_num + key)> 122
		# si la somme == entre 91 et 96 ou si la somme > à 122
		ascii_num + key - 26
		# soustraire 26
		# fait une boucle entre l'alphabet minuscule et majuscule
		# alphabet minuscule de 97 à 122 : revient à 97 quand > à 12
		# ALPHABET de 65 à 90 : permet de squeezer la tranche 91-96 avec charactère spéciaux
	else
		ascii_num + key 
		# pour le reste, pas de soucis de boucle d'alphabet		
	end
	
end
# méthode qui ajoute le nobre de la clé au num ascii

def convert_to_letter(new_ascii_num)
	new_ascii_num.chr
	# .chr == convertit ascii en lettre
end
# méthod qui convertit le ascii + clé en lettre



# METHOD QUI REPREND LES PETITES METHODES CI-DESSUS POUR UN CHARACTÈRE

def test_for_one_letter(user_letter,key)
	ascii_num = convert_to_ascii(user_letter)
	# appelle la method convert_to_ascii et sort la valeur de sortie de user_letter.ord

	if ascii_num.between?(97, 122) or ascii_num.between?(65, 90)
	# si ascii_num == alphabet ou ALPHABET

		new_letter = add_key_to_ascii(ascii_num, key)
		# valeur de sortie de la method add_key_to_ascii

		convert_to_letter(new_letter)
		# sort la lettre coresspondante à ascii + key

		else
		new_letter = add_key_to_ascii(ascii_num, 0)
		# valeur de sortie de la method add_key_to_ascii
		# concerne les charactères spéciaux qui restent les mêmes == KEY == 0
		convert_to_letter(new_letter)
		# sort la lettre coresspondante à ascii + key
	end
end


# METHOD FINAL QUI REPREND LA MÉTHODE UNE LETTER CI-DESSUS ET QUI L'APPLIQUE À UNE PHRASE


def caesar_cipher(message, key)

	# prendre message et une clé
	# transformer en ascii
	# Ajouter à chaque caractère ascii le nombre de la clé
	# convert les caractères en string

		str_output = String.new
		# création d'une nouvelle string dans laquelle .each_char va mettre chaque lettre de la phrase passée dans la méthode une lettre 

		message.each_char do |letter|
		# each_char sorte de .map pour les strings

	# sortir le message crypté

		str_output << test_for_one_letter(letter, key)
		# string de sortie finale
		end

		str_output	
end