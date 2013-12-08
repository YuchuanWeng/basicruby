#times (do...end)
3.times do |i|
  puts 'Cheers!'
end

#Proc: a block of code, wrap it up in an object, store it in a variable
# or pass it to a method
toast = Proc.new do
  puts 'Cheers!Proc!'
end

toast.call
toast.call
toast.call

#Blocks
what_do_you_like = Proc.new do |good_stuff|
  puts "I would like to have #{good_stuff}!"
end

what_do_you_like.call 'Chocolate'
what_do_you_like.call 'Ruby'
what_do_you_like.call 'Ice cream'

#Methods that return Procs
def compose proc1, proc2
  Proc.new do |x|
    proc1.call(x).proc2.call #Need to be revise
  end
end

square_it = Proc.new do |x|
  x * x
end

double_it = Proc.new do |x|
  x + x
end

factorial_it = Proc.new do |x|
  def factorial(x)
  return 1 if x.zero?
  1.upto(x).inject(:*)
  end
  x
end

d_then_s = compose double_it, square_it
s_then_f = compose square_it, factorial_it

puts d_then_s
puts s_then_f

#Block
def ring_block &block
  hour = Time.new.hour

  if hour >= 13
    hour = hour - 12
  end

  if hour = 0
    hour = 12
  end

  hour.times do
    block.call
  end
end

ring_block do
  puts "Ding!"
end

#using Yield
def ring_block_2
 yield
 yield
end

ring_block_2 do
  puts 'it\'s a Ding!'
end






























