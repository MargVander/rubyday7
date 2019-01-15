def is_multiple_of_3_or_5?(n)
  if n % 3 == 0 || n % 5 == 0
  	answer = true
  elsif n % 3 != 0 && n % 5 != 0
  	answer = false
  end

  		
  return answer
end

def sum_of_3_or_5_multiples(n)
  i = 0
  sum = 0
  if n != n.to_i || n < 0
  	return "Yo ! Je ne prends que les entiers naturels. TG"
  else
  	while i < n
  		if is_multiple_of_3_or_5?(i)
  			answer = true
  			sum += i
  			i += 1
  		else
  			i += 1
  		end
  	end
  	return sum
  end
end