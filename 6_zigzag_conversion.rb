# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    each_line = Array.new(num_rows, "")
    direction = 1 #1 means up to down, -1 means down to up
    max_c = num_rows - 1
    current = 0
    s.each_char do |i|
    	each_line[current] += i
    	current += direction
    	if(current < 0 || current > max_c)
    		direction *= -1
    		current += direction*2
    	end
    end
    return_string = ""
    each_line.each do |s|
    	return_string << s
    end
    return return_string
end

p convert("PAYPALISHIRING", 3)