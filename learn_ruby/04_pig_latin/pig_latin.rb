def translate(words)
	translation = words.split.map{ |word| translate_word(word) }
	translation.join(" ")
end

def first_vowel_index(word)
	vowels = %w(a e i o u)
	single_phoneme = %w(qu)
	index = 0
	while index < word.length do
		if vowels.include?(word[index]) && !single_phoneme.include?(word[index - 1..index])
			break
		end
		index += 1
	end
	
	index
end

def translate_word(word)
	index = first_vowel_index(word)
	if index == 0
		word + "ay"
	else
		word[index..word.length - 1] + word[0..index - 1] + "ay"
	end
end