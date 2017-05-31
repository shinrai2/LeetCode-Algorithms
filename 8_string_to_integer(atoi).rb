# @param {String} str
# @return {Integer}
def my_atoi(str)
    i = str.to_i
    int_max = 2147483647
    int_min = -2147483648
    i = int_max if i > int_max
    i = int_min if i < int_min
    i
end

p my_atoi("   	-10  ")