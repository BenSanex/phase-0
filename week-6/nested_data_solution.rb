# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][1][0]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do |num|
		if num.is_a?(Integer)
			num += 5
		else
			num.map! do |nest|
				nest += 5
			end
		end
end
p number_array

# # Reflect:
# What are some general rules you can apply to nested arrays?

# Always remember the first item is 0. It not specifically for nested arrays, but they can get confusing.  Also the element after the /[ is always item 0.

# What are some ways you can iterate over nested arrays?

# I used .map because I needed to modify the original array, but I have found for methods work well also because you can specify which array you're looking into and loop through that particular one.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

# I've used .map before, so I didn't learn any new methods. .map is nice because it allows you to modify the exisitng array.