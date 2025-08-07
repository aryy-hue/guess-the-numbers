math.randomseed(os.time())
local secret_numbers = math.random(1, 20)
local total_answers = 0

print("Hello! try to guess a numbers between 1 to 20")
print("Goodluck!")

while true do
	print("Input your number:")
	local guess_str = io.read()
	local guess = tonumber(guess_str)

	total_answers = total_answers + 1

	if guess == nil then
		print("Not correct number! try again")
	else
		if guess < secret_numbers then
			print("Too low")
		elseif guess > secret_numbers then
			print("Too high")
		else
			print("Congrats! you win")
			print("You win in " .. total_answers .. " total guess.")
			break
		end
	end
end
