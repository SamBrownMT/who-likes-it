class WhoLikesIt

	def execute(names)

		return 'no one likes this' if names.empty?

		return names.first + ' likes this' if names.length == 1

		names[0] + ' and ' + names[1] + ' likes this'

	end

end