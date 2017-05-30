# @param {String} s
# @return {String}
def longest_palindrome(s)
	return s if s.length < 2
	max_len = s.length
	max_s = [0, 0]
	max_len.times do |i|
		tmp = compare(s, i, i)
		tmp2 = compare(s, i, i+1)
		max_s = tmp if tmp[1]-tmp[0] > max_s[1]-max_s[0]
		max_s = tmp2 if tmp2[1]-tmp2[0] > max_s[1]-max_s[0]
	end
	return s[max_s[0]..max_s[1]]
end

def compare(s, i, j)
	while(i>=0 && j<s.length && s[i] == s[j])
		i -= 1
		j += 1
	end
	return [i+1,j-1]
end