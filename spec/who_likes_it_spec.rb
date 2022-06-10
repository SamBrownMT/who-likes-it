require 'who_likes_it'

describe WhoLikesIt do 

	subject = WhoLikesIt.new

	it 'returns \'no one likes this\' for an empty array' do

		expect(subject.execute([])).to eq 'no one likes this' 

	end

	it 'returns \'Sam likes this\' for a simple array' do

		expect(subject.execute(["Sam"])).to eq 'Sam likes this' 

	end

	it 'returns \'Sam and Alan likes this\' for an array of length 2' do

		expect(subject.execute(["Sam",'Alan'])).to eq 'Sam and Alan likes this' 

	end

	it 'returns \'Sam, Alan and Turing likes this\' for an array of length 3' do

		expect(subject.execute(["Sam",'Alan','Turing'])).to eq 'Sam, Alan and Turing likes this' 

	end

	it 'returns \'Sam, Alan and 2 others likes this\' for an array of length 4' do

		expect(subject.execute(["Sam",'Alan','Turing','Christopher'])).
		to eq 'Sam, Alan and 2 others likes this' 

	end

end