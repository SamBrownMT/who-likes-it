class WhoLikesIt

	def execute(names)

		@names = names.length <= 3 ? names : 
			names[0,2] | ['2 others']

		output = @names.length <= 1 ? ' likes this' : ' like this'

		return output.prepend('no one') if @names.empty?
		
		output.prepend(@names.join(', ').sub(/.*\K,/,' and'))


	end

end