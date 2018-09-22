class User
	attr_accessor :prenom, :amis
end

alice = User.new
alice.prenom = "Alice"
alice.amis = ["Bob", "Jane", "Marie"]

bob = User.new
bob.prenom = "Bob"
bob.amis =["Jane"]

jane = User.new
jane.prenom = "Jane"
jane.amis = ["Alice", "Norbert"]

def print_number_of_friends(user)
	i = 0
	while (i < user.amis.length)
		i += 1
	end
	puts "#{user.prenom} a #{i} amis"
end

def is_friend_with(user1, user2)
	i = 0
	while (i < user1.amis.length)
		if (user1.amis[i] == user2.prenom)
			return puts "#{user1.prenom} est amis avec #{user2.prenom}"
		end
		i += 1
	end
	return puts "#{user1.prenom} n'est pas amis avec #{user2.prenom}"
end

print_number_of_friends(alice)
print_number_of_friends(jane)
print_number_of_friends(bob)

is_friend_with(bob, alice)
