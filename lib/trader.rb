def day_trader(arr)
	plusgrosbenef = 0
	benef = 1
	biggest = arr.sort[-1]
	positionbiggest = arr.index(biggest)
	if positionbiggest == 0
		i = -2
	else
		i = - 1
	end
	while benef > plusgrosbenef
		biggest = arr.sort[i]
		positionbiggest = arr.index(biggest)
		arrbefore = arr[0, positionbiggest]
		smallest = arrbefore.sort[0]
		benef = biggest - smallest
		plusgrosbenef = benef
		i = i - 1
	end
	return [arr.index(smallest),arr.index(biggest)]
end