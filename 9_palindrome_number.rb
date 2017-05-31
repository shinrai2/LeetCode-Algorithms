# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    return false if x<0 || (x!=0&&x%10==0)
    rev = 0
    while(x>rev)
    	rev = rev*10 + x%10
    	x /= 10
    end
    return (x==rev || x==rev/10)
end