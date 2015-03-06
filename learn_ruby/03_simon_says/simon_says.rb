def echo(statement)
	statement
end

def shout(statement)
	statement.upcase
end

def repeat(statement, times = 2)
	repeated = statement
	(times - 1).times do
		repeated += " #{statement}"
	end
	repeated
end

def start_of_word(word, num_of_letters)
	word[0..num_of_letters - 1]
end

def first_word(sentence)
	sentence.split.first
end

def titleize(sentence)
	little_words = ["and", "the", "over"]
	titleized = sentence.split.map do |word|
					if little_words.include?(word.downcase)
						word
					else
						word.capitalize
					end
				end.join(" ")

	titleized[0] = titleized[0].upcase

	titleized
end