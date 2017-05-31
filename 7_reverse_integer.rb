# @param {Integer} x
# @return {Integer}
def reverse(x)
	negative = x<0?true:false
	x = -x if negative
    result = 0
    while(x != 0) do
    	# p result
    	tail = x % 10
    	result = result * 10 + tail
    	x /= 10
    end
    result = -result if negative
    #ruby没有位限制，只要内存允许就可以跑，因此加上约束
    result = 0 if result < -2147483648 || result > 2147483647
    result
end

p reverse(1534236469)