def is_multiple_of_3_or_5?(current_number)

	if current_number%3 == 0 or current_number%5 == 0
		true
	else
		false
	end

end

def sum_of_3_or_5_multiples(user_number)

 	if user_number.class == Integer
 		


 	 final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro

  		for current_number in (0...user_number)
	# Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
  	# cette boucle indente à chaque tour une variable (par exemple "current_number") qui vaudra 0 puis 1 puis 2 ... etc.

    		if is_multiple_of_3_or_5?(current_number) == true
    	final_sum += current_number
      # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".

    # else

      # si la réponse est "false"…ben y a pas de else : ce "current_number" n'est pas multiple,
      # donc on passe au suivant en oubliant celui-là. On repart dans la boucle.
    		end

  		end
  		return final_sum 

  	else 
  		return "Only integer!"
  	end
  #ci, positionne la fin de la boucle

  		
  #on retourne la variable qui contient la somme du tout

end

