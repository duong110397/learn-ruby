class Exercises	
	def initialize
		puts "Welcome to Children Exercises"
	end
	def nomanlization
		puts "input some words"
		capitalize = []
		up_index = [0]
		input = gets.chomp.to_s.bytes
		input.each_with_index{|a, i| capitalize.push(a >= 65 && a <= 90 ? a + 32 : a) ; up_index.push(i+1) if a == 32} 
		up_index.each{|a| capitalize[a] -= 32}
		puts capitalize.map{|a, i| a.chr}.join
	end
	def repeated
		arr = 10.times.map{rand(-10..10)}
		puts arr.inspect
		result = arr.each_with_object(Hash.new(0)){|num,counts| counts[num] +=1} 
		puts "most repeated elements ist #{arr.max_by{|num| result[num]}} and repeated #{result.values.max} times"
	end
	def fibonacci
		puts "input a number" 
		fib = Hash.new{|hash, key| hash[key] = key < 2 ? key : hash[key-1] + hash[key-2]}
		puts "this fibonacci number of this number is #{fib[gets.chomp.to_i]}" 
	end 
	def equations
		puts <<~_
		Set of Equation: 
			ax + by = c
			dx + ey = f
		please enter a, b, c, d, e, f 
		_
		a = gets.chomp.to_f
		b = gets.chomp.to_f
		c = gets.chomp.to_f
		d = gets.chomp.to_f 
		e = gets.chomp.to_f
		f = gets.chomp.to_f
		dn = a * e - d * b
		dx = c * e - b * f
		dy = a * f - d * c
		if dn == 0
			puts dx + dy == 0 ? "The lines are the same! There are infinitely many solutions" : "No solutions, the lines are parallel"
		else 
			x = dx / dn
			y = dy / dn
			puts "Solutions (x, y) = (#{x},#{y})" 
		end
	end
	def reverse
		puts "Please input number that to reverse"
		n = gets.chomp.to_i
		puts "The reversed number of #{n} is #{n.digits.join.to_i}"
	end
end
n = Exercises.new
puts "Which Exercises do you want to do"
m = gets.chomp.to_i
loop do 
	case m
		when 0 
		break
		when 1
			n.nomanlization
		break	
		when 2
			n.repeated
		break
		when 3
			n.fibonacci
		break
		when 4
			n.equations
		break
		when 5	
			n.reverse
		break
	end
end
	

