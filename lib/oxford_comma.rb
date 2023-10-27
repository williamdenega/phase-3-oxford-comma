require 'pry'

def oxford_comma_v1(array)
    
    if array.length == 1 
        return array[0]
    end
    if array.length == 2 
        return "#{array[0]} and #{array[1]}"
    end
    last = array.pop
    str = array.join(", ")
    str << ", and #{last}"
end
def oxford_comma(array)
    case array.length
    when 0
        ""
    when 1
        array[0]
    when 2 
        "#{array[0]} and #{array[1]}"
    else
        last = array.pop
        "#{array.join(", ")}, and #{last}"
    end
end

binding.pry