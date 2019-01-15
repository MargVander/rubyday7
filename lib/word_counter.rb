def dictionary
	dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
end


def word_counter(a, dictionary)
	occurance = {}
	dictionary.each do |word|
		nb_it_appear = a.downcase.scan(/(?=#{word})/).length
		if nb_it_appear > 0
			occurance[word] = nb_it_appear
		end
	end
	return occurance
end