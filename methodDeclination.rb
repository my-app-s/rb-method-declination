# Copyright (C) 2026 my-app-s
# Licensed under the GNU AGPLv3

# Get the number from command line arguments.
# Defaults to 0 if no argument is provided.
total_number = ARGV[0].to_i

# Returns a string with the correctly declined noun based on the provided number.
#
# @param number [Integer] The number to determine the noun's form.
# @param form_one [String] Nominative singular (e.g., "crocodile").
# @param form_two [String] Genitive singular (e.g., "crocodiles" in some contexts).
# @param form_three [String] Genitive plural (e.g., "crocodiles").
#
# @return [String] A formatted string: "Number Noun!"
#
# @example
#   declination(12, "apple", "apples", "apples") #=> "12 apples!"
#
def declination(number, form_one, form_two, form_three)
  number = number.to_i
  
  # Handle Russian language exceptions for numbers 11 to 14
  if (number % 100).between?(11, 14)
    return "#{number} #{form_three}!"
  end

  remainder = number % 10

  case remainder
  when 1
    "#{number} #{form_one}!"
  when 2..4
    "#{number} #{form_two}!"
  else
    "#{number} #{form_three}!"
  end
end

# Output the result to the console
puts declination(total_number, "crocodile", "crocodiles", "crocodiles")