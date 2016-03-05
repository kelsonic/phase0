def essay_writer(title, topic, date, thesis_statement, gender)
  
  if gender == "female"
    pronoun1 = "she"
    pronoun2 = "her"
  elsif gender == "male"
    pronoun1 = "he"
    pronoun2 = "his"
  else
    raise ArgumentError, "gender must be male or female" unless gender == "male" || gender == "female"
  end
  
  p title, "#{topic} was an important person in #{date}. #{pronoun1.capitalize} did a lot. I want to learn more about #{pronoun2}. #{thesis_statement} #{topic.partition(" ").first}'s contribution is incredible."
  
end

essay_writer("The First Novelist", "Shikibu Murasaki", 1000, "She wrote the world's first novel, the Tale of Genji, between 1000 and 1012 and was a lady-in-waiting in the Heian Imperial court.", "female")