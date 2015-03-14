class Book
	attr_accessor :title

	def title=(new_title)
		lower_case_words = %w(the a an and in of)
		@title = new_title.split
						  .map do |word|
						  	if lower_case_words.include?(word)
						  		word
						  	else
						  		word.capitalize
						  	end
						  end
						  .join(" ")
		@title[0] = @title[0].upcase
		@title
	end

end