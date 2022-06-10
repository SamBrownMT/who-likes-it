require 'who_likes_it'

describe WhoLikesIt do 

	subject = WhoLikesIt.new

	it 'returns \'no one likes this\' for an empty array' do

		expect(subject.execute([])).to eq 'no one likes this' 

	end

	array = ["Sam"]

	it "returns \'Sam likes this\' for a #{array}" do

		expect(subject.execute(["Sam"])).to eq 'Sam likes this' 

	end

	array2 = ["Sam",'Alan']

	it "returns \'Sam and Alan likes this\' for #{array2}" do

		expect(subject.execute(array2)).to eq 'Sam and Alan likes this' 

	end

	array3 = ["Sam",'Alan','Turing']

	it "returns \'Sam, Alan and Turing likes this\' for #{array3}" do

		expect(subject.execute(array3)).to eq 'Sam, Alan and Turing likes this' 

	end

	array4 = ["Sam",'Alan','Turing','Christopher']

	it "returns \'Sam, Alan and 2 others likes this\' for #{array4}" do

		expect(subject.execute(array4)).to eq 'Sam, Alan and 2 others likes this' 

	end

	array5 = ["Sam",'Alan','Turing','Christopher','Robin','Winnie','Eeyore',
						'Piglet','Tigger']

	it "returns \'Sam, Alan and 2 others likes this\' for #{array5}" do

		expect(subject.execute(array5)).to eq 'Sam, Alan and 2 others likes this' 

	end

end