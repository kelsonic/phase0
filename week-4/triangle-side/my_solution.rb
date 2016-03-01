# I worked on this challenge [by myself, with: Leland].


# Your Solution Below

def valid_triangle?(a, b, c)
  
  side1 = a.to_f
  side2 = b.to_f
  side3 = c.to_f
  
  if (side1 + side2) > side3
    p true
  else
    p false
  end
end

valid_triangle?(50, 70, 200)