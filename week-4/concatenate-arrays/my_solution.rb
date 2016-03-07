# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
	if array_2.length == 1
		array_1 << array_2[0]
	else
	for i in 0..array_2.length-1
		array_2 << array_2[i]

		 end
	end			
	p array_1
end