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
        count += 1
    elsif n - DIMES >= 0
        n -= DIMES
        count += 1
    elsif n - NICKELS >= 0
        n -= NICKELS
        count += 1
    else
        n -= PENNIES
        count += 1
    end
end

puts(count)