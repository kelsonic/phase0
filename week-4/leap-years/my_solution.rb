# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def leap_year?(input)
  year = input.to_f
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        p true
      else
        p false
      end
    else
      p true
    end
  else
    p false
  end
end

leap_year?(2015)