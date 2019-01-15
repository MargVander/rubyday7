def caesar_cipher(a, b)
	arr = []
	a.each_byte do |byte|
		if byte == 32
			arr << " "
		elsif byte == 33
			arr << "!"
		elsif byte == 46
			arr << "."
		elsif (byte + b) >= 65 && (byte + b) <= 90
			letter = (byte+b).chr 
			arr << letter
		elsif (byte + b) > 90 && byte <= 90
			i = 90 - byte
			j = b - i
			letter = (64 + j).chr
			arr << letter
		elsif (byte + b) >= 97 && (byte + b) <= 122
			letter = (byte+b).chr 
			arr << letter
		elsif (byte + b) > 122 && byte <= 122
			i = 122 - byte
			j = b - i
			letter = (96 + j).chr
			arr << letter
		end
	end 
	return arr.join("")
end