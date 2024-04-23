# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

# We'll use a hash to keep track of each user's balance
balance = {}

# Loop through each transaction in the blockchain
blockchain.each do |transaction|
  # Get the from_user and to_user for the current transaction
  from_user = transaction["from_user"]
  to_user = transaction["to_user"]

  # Get the amount of KelloggCoin being transferred
  amount = transaction["amount"]

  # If the from_user doesn't have a balance yet, initialize it to 0
  balance[from_user] ||= 0
  # Subtract the amount from the from_user's balance
  balance[from_user] -= amount

  # If the to_user doesn't have a balance yet, initialize it to 0
  balance[to_user] ||= 0
  # Add the amount to the to_user's balance
  balance[to_user] += amount
end

# Now we can print out each user's balance
puts "Ben's KelloggCoin balance is #{balance['ben']}"
puts "Brian's KelloggCoin balance is #{balance['brian']}"
puts "Evan's KelloggCoin balance is #{balance['evan']}"
puts "Anthony's KelloggCoin balance is #{balance['anthony']}"


# balances = {}

# blockchain.each do |transaction|
#   balances[transaction["to_user"]] = (balances[transaction["to_user"]].to_i + transaction["amount"])
#   balances[transaction["from_user"]] = (balances[transaction["from_user"]].to_i - transaction["amount"]) if transaction["from_user"]
# end

# balances.each do |user, balance|
#   puts "#{user}'s KelloggCoin balance is #{balance}"
# end
# __________________________________________________________________________

# def calculate_balance(blockchain, user)
#   total = 0
#   blockchain.each do |transaction|
#     if transaction["from_user"] == user
#       total -= transaction["amount"]
#     elsif transaction["to_user"] == user
#       total += transaction["amount"]
#     end
#   end
#   total
# end


# puts "Ben's KelloggCoin balance is #{calculate_balance(blockchain, "ben")}"
# puts "Brian's KelloggCoin balance is #{calculate_balance(blockchain, "brian")}"
# puts "Evan's KelloggCoin balance is #{calculate_balance(blockchain, "evan")}"
# puts "Anthony's KelloggCoin balance is #{calculate_balance(blockchain, "anthony")}"

