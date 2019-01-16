def shakespeare
	return shakespeare = File.read('lib/shakespeare.txt')

end

def dictionary
	dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
end

def dictionarry
	dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
end

def slur
	slur = []
	file = 'lib/slur.txt'
	File.readlines(file).each do |line|
		line = line.chop
		slur << line
	end
	return slur
end


def word_counter(a, b)
	occurance = {}
	b.each do |word|
		nb_it_appear = a.downcase.scan(/(?=#{word})/).length
		if nb_it_appear > 0
			occurance[word] = nb_it_appear
		end
	end
	print occurance
	return occurance
end

word_counter(shakespeare, slur)