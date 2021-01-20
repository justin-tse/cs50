QUARTERS = 25
DIMES = 10
NICKELS = 5
PENNIES = 1

while true
    print("Change owed: ")
    n = gets.chomp.to_f
    if n > 0
        break
    end
    puts("Input must be positive!") 
end

n = (n * 100).round
count = 0
while n > 0
    if n - QUARTERS >= 0
        n -= QUARTERS
    elsif n - DIMES >= 0
        n -= DIMES
    elsif n - NICKELS >= 0
        n -= NICKELS
    else
        n -= PENNIES
    end
    count += 1
end

puts(count)