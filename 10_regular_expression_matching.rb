# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
    re = Regexp.new("^#{p}$")
    return false if (re =~ s)==nil
    return true
end