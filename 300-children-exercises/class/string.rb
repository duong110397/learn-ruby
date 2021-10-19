input = gets.chomp.to_s.bytes
string = []
input.each_with_index do |a, i|
  if i == 0 || input[i-1] == 32
    string.push((a-32).chr) if a >= 97
  elsif a == 32
    string.push(a.chr)
  else
     a <= 90 ? string.push((a+32).chr) : string.push(a.chr)
  end
end

puts string.join
