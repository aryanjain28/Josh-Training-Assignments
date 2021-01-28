email_regex = /\A\w[\w.-]+@\w+\.\w+\z/

email = "abc.d@example.com"

#puts email.match?(email_regex)

if email.match(email_regex)
	puts("valid email")
else
	puts("invalid email")
end

mobile_no_regex = /[7-9]{1}[0-9]{9}/

mobile_no = "7234567890"

if mobile_no.match(mobile_no_regex)
	puts("valid mobile no")
else
	puts("invalid mobile no")
end

#name_regex = /^[a-zA-Z]++(?: [a-zA-Z\-\`]++)?$/
name_regex = /^[a-z\s]+$/
name = "abcd bags"

if name.match(name_regex)
	puts("valid name")
else
	puts("invalid name")
end

gender_regex = /^male$|^female$/

gender = "male"

if gender.match(gender_regex)
	puts("valid gender")
else
	puts("invalid gender")
end

amount_regex = /^[1-9]\d*(\.\d*|\d*)$/

amount = "25.00"

if amount.match(amount_regex)
	puts("valid amount")
else
	puts("invalid amount")
end















