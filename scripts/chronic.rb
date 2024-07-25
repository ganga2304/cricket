require 'chronic'

# Parse a natural language date
date = Chronic.parse('next Friday')
puts date # Outputs the date for the next Friday from now

# Parse a specific time
time = Chronic.parse('2pm tomorrow')
puts time # Outputs the date and time for 2pm tomorrow

# Parse a date with time
datetime = Chronic.parse('August 15, 2024 10:30 AM')
puts datetime # Outputs August 15, 2024 at 10:30 AM
