#time_class

time = Time.local(1988,7,26, 07, 01)
time_old = time + 10**9

puts time
puts time_old

#Birthday count
puts 'When were you born? (YYYYMMDD)'
input = gets.chomp

b_year = input[0..3].to_i
b_month = input[4..5].to_i
b_day = input[6..7].to_i

t = Time.new

t_year = t.year
t_month = t.month
t_day = t.day

age = t_year - b_year

if t_month < b_month || (t_month == b_month && t_day < b_day)
  age -= 1
end

if t_month == b_month && t_day == b_day
  puts 'Happy Birthday'
end

age.times {puts 'SPANK!'}




