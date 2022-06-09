class WhoLikesIt

	def execute(names)

		output = ' likes this'

		return output.prepend('no one') if names.empty?
		
		output.prepend(names.join(', ').sub(/.*\K,/,' and'))

	end

end