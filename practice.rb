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

# New, empty hash
balances = {}
# Define the transactions
for transaction in blockchain
  from_user = transaction["from_user"]
  to_user = transaction["to_user"]
# If the 'from_user' is nil, it means this transaction is from the ICO
  if from_user == nil
    # If to_user has no balance 
    if balances[to_user] == nil
      balances[to_user] = transaction["amount"]
    else
    # If to_user has a balance already, add to the balance
      balances[to_user] += transaction["amount"]
    end
  else
  # If from_user is not nil, it means the transaction is from another user and not from the ICO
      balances[from_user] -= transaction["amount"]
    # If to_user has no balance
    if balances[to_user] == nil
      balances[to_user] = transaction["amount"]
    else
    # If to_user has a balance already, add to the balance
      balances[to_user] += transaction["amount"]
    end
  end
end
# Prints the balance from balances for every user in the blockchain
for user, balance in balances
  puts "#{user}'s KelloggCoin balance is #{balance}"
end