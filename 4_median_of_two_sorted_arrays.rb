# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
	find(nums1, nums2)
end

def find(nums1, nums2)
	nums1 = [] if nums1==nil
	nums2 = [] if nums2==nil
	p [nums1, nums2]
	return find(nums2, nums1) if(nums1.length>nums2.length)
	if(nums1.length==0 && nums2.length==0)
		return 0
	elsif((n_sum = nums1.length+nums2.length)<3)
		sum = 0
		nums1.each do |i|
			sum += i
		end
		nums2.each do |i|
			sum += i
		end
		return sum*1.0/n_sum
	elsif(nums1.length==0)
		half = nums2.length/2
		return find(nums2[0,half], nums2[half,nums2.length-half])
	elsif(nums2.length==0)
		half = nums1.length/2
		return find(nums1[0,half], nums1[half,nums1.length-half])
	end
	p1 = 0
	p2 = 0
	len1 = nums1.length
	len2 = nums2.length
	cut = 1
	if(nums1[p1]<nums2[p2])
		p1 += cut
		len1 -= cut
	else
		p2 += cut
		len2 -= cut
	end
	if(nums1[-1]>nums2[-1])
		len1 -= cut
	else
		len2 -= cut
	end
	return find(nums1[p1,len1], nums2[p2,len2])
end

p find_median_sorted_arrays([1,2,3,8], [4,5,6,7])