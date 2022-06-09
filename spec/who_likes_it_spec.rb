require 'who_likes_it'

describe WhoLikesIt do 

	subject = WhoLikesIt.new

	it 'returns /no one likes this/ for an empty array' do

		expect(subject.execute([])).to eq 'no one likes this' 

	end

	it 'returns /no one likes this/ for an empty array' do

		expect(subject.execute(["Sam"])).to eq 'Sam likes this' 

	end

end