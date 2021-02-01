#regex for mobile no,email address,email,name,gender and amount

number = "9890565393"

number.match(/\d{10}/) ? "success" : "Fail"

name.match(/[a-zA-Z]{2,}\s[a-zA-z]{1,}'?-?[a-zA-Z]{2,}\s?[a-zA-Z]{1,}\z/) ? "Success" : "Fail"

gender.match(/(m|f)/) ? "success" : "Fail"

amount.match(/\A[1-9]\d*\.\d*\z/) ? "success" : "Fail"

gmail_id.match(/\A(\w\.?\-?)+@[a-z]+\.[a-z]+\z/) ? "success" : "Fail"

