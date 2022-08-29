# List of small Ruby Utility methods to write tests for

# Method to check if a string is a number
def number?(string)
  true if Float(string)
rescue StandardError
  false
end

# Method to check if number is even
def even?(number)
  number.even?
end

# Method to check if number is prime
def prime?(number)
  return false if number < 2

  (2..Math.sqrt(number)).each { |i| return false if (number % i).zero? }
  true
end

# Method to check if string is palindrome
def palindrome?(string)
  string == string.reverse
end

# Method to check if current day is weekend
def weekend?
  [0, 6].include? Time.now.wday
end

# Method to check if current day is weekday
def weekday?
  !weekend?
end

# Method to check if current year is leap year
def leap_year?
  year = Time.now.year
  ((year % 4).zero? && year % 100 != 0) || (year % 400).zero?
end

# Method to check if string is a valid email
def email?(string)
  string =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end

# Returns number of calories burned for given weight and time
def calories_burned(weight, time)
  (weight * 0.0175) * time
end

# Returns number of capital letters in a string
def capital_letters_count(string)
  string.scan(/[A-Z]/).count
end

# Returns a hash of number of capital letters in a string
def capital_letters_count_hash(string)
  string.scan(/[A-Z]/).each_with_object(Hash.new(0)) { |letter, hash| hash[letter] += 1 }
end

# Accepts two hashes of user details and returns a merged hash if they have the same age
def merge_users(user1, user2)
  user1.merge(user2) if user1[:age] == user2[:age]
end

# Accepts a hash of user details and returns a hash with the key :age deleted
def delete_age(user)
  user.tap { |hash| hash.delete(:age) }
end

# Accepts a hash of restaurant reviews and returns an array of restaurant names if rating is higher than 5/10
def good_reviews(reviews)
  reviews.select { |_name, rating| rating > 5 }.keys
end
