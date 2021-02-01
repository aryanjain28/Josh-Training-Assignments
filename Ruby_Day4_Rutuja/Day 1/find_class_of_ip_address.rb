def find_class(str)
    str = str.split('.')[0]
    if (str >= '0' && str <= '127')
        return "Class A"
    elsif (str > '127' && str <= '191')
        return "Class B"
    elsif (str > '191' && str <= '223')
        return "Class C"
    elsif (str > '223' && str <= '239')
        return "Class D"
    else (str > '127' && str <= '191')
        return "Class E"
    end
end