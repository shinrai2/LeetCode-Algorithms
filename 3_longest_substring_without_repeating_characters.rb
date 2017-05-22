# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    h = Hash.new
    max = 0
    j = 0
    s.length.times do |i|
        j=(j>h[s[i]]+1)?j:h[s[i]]+1 if(h[s[i]]!=nil)
        h[s[i]] = i
        max = i-j+1 if((i-j+1)>max)
    end
    return max
end