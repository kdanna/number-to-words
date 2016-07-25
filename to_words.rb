WORDS = {
	1=>"one",
	2=>"two",
	3=>"three",
	4=>"four",
	5=>"five",
	6=>"six",
	7=>"seven",
	8=>"eight",
	9=>"nine",
	10=>"ten",
	11=>"eleven",
	12=>"twelve",
	13=>"thirteen",
	14=>"fourteen",
	15=>"fifteen",
	16=>"sixteen",
	17=>"seventeen",
	18=>"eighteen",
	19=>"nineteen",
	20=>"twenty",
	30=>"thirty",
	40=>"forty",
	50=>"fifty",
	60=>"sixty",
	70=>"seventy",
	80=>"eighty",
	90=>"ninety",
	100=>"one hundred"
}

def to_words(i)
	my_string = i.to_s
	my_array = my_string.chars
	if my_array.length == 3
		WORDS[100]
	elsif i < 20
		WORDS[i]
	else 
		first_char = my_string[0].to_i * 10
		first_word = WORDS[first_char]
		second_char = (i%10)
		if second_char == 0
			full = first_word
		
		else second_word = WORDS[second_char]
		full = first_word + "-" + second_word
		end
		return full
	end
end

to_words(40)













