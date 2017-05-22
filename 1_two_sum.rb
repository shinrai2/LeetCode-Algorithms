# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
	hash1 = Hash.new
	nums.each_with_index do |n, i|
		return [hash1[target - n], i] if(hash1[target - n] != nil)
		hash1[n] = i
	end
	return []
end