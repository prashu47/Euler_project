digits_to_alphabets = { "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five",
         "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine", "10" => "ten",
         "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen",
         "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen",
         "19" => "nineteen", "20" => "twenty", "30" => "thirty", "40" => "forty",
         "50" => "fifty", "60" => "sixty", "70" => "seventy", "80" => "eighty",
         "90" => "ninety" }

class Alphabets

  def to_words(digits_to_alphabets)
    str = ""

    if self >= 100
      str = "#{digits_to_alphabets[self / 100]}hundred"


  end
for n in (1..1000)
  s = ""
  if (know[n.to_s] != nil)
    s = know[n.to_s]
  elsif (n < 20)
    s = know[n.to_s[1..1]] + "teen"
  elsif (n < 100)
    s = know[n.to_s[0..0] + "0"] + know[n.to_s[1..1]]
  elsif (n < 1000)
    s = know[n.to_s[0..0]] + "hundred"
    if (n % 100 != 0)
      s += "and"
      if (know[n.to_s[1..2]] != nil)
        s += know[n.to_s[1..2]]
      elsif (n.to_s[1..1] == "0")
        s += know[n.to_s[2..2]]
      else
        s += know[n.to_s[1..1] + "0"] + know[n.to_s[2..2]]
      end
    end
  end

  total += s.length
  #print s + "\n"
end

print total
