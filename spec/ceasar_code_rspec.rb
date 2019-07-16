require_relative '../lib/ceasar_code.rb'

# METHODES
# methode verif_si_lettre
# - verifier si lettre et pas de integer
# - if false = "une lettre"

# describe "is_user_letter_a_string_class? method" do
# 	it "should return TRUE if user_letter is a string" do
# 		expect(is_user_letter_a_string?("a")).to eq(true)
# 		expect(is_user_letter_a_string?("t")).to eq(true)
# 	end

# 	it "should return FALSE if user_letter is not a string" do
# 		expect(is_user_letter_a_string_class?("a")).to eq(false)
# 		expect(is_user_letter_a_string?("t")).to eq(false)
# 	end
# end

# methode convert_to_ascii
# - convert to ascII
describe "is convert_to_ascii method" do
	it "should convert the letter in ascii system" do
		expect(convert_to_ascii("e")).to eq(101)
		expect(convert_to_ascii("H")).to eq(72)
	end
end

# methode ajout_clé
# - décale ascii en fonction du nombre de la clé
describe "is the add_key_to_ascii method" do
	it "should move the elements of number of the key" do
		expect(add_key_to_ascii(101, 5)).to eq(106)
		expect(add_key_to_ascii(72, 2)).to eq(74)
	end
end

# methode convert_to_letter
# - reconvert de ascii en lettre
describe "is convert_to_letter method" do
	it "should convert the new_ascii_num in letter" do
		expect(convert_to_letter(111)).to eq("o")
		expect(convert_to_letter(119)).to eq("w")
	end
end

#methode combinant les method lettre pour une lettre
describe "is test_for_one_letter method" do
	it "should apply the ceasar method to a letter" do
		expect(test_for_one_letter("g",5)).to eq("l")
		expect(test_for_one_letter("D",5)).to eq("I")
	end
end

describe "is caesar_cipher method" do
	it "should apply the caesar_cipher method to a sentence" do
		expect(caesar_cipher("a", 3)).to eq("d")
		expect(caesar_cipher("A", 3)).to eq("D")
		expect(caesar_cipher("aa", 3)).to eq("dd")
		expect(caesar_cipher("aa bb", 3)).to eq("dd ee")
		expect(caesar_cipher("y", 3)).to eq("b")
		expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
	end
end



