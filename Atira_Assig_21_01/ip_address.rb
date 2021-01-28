

#sub_pattern = /^(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.)$/

ipv4_regex = /\A(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.)(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.)(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.)(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]))\z/


ipv4 = "123.45.67.9"

if ipv4.match(ipv4_regex)
	puts ("valid IPV4")
else
	puts("invalid IPV4")
end

#sub_pattern = /^[0-9a-fA-F]{1,4}\:$/

ipv6_regex = /\A[0-9a-fA-F]{1,4}\:[0-9a-fA-F]{1,4}\:[0-9a-fA-F]{1,4}\:[0-9a-fA-F]{1,4}\z/


ipv6 = "12:a:432:45"

if ipv6.match(ipv6_regex)
	puts ("valid IPV6")
else
	puts("invalid IPV6")
end


