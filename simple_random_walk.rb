# Create a simple random walk:
# https://www.youtube.com/watch?v=PPl-7_RL0Ko

start_value = 0
num_steps = 1000
step_size = 1

value = start_value
num_steps.times do |time|
  value += (rand > 0.5  ? step_size : -1 * step_size)
  File.write('./output/simple_random_walk.txt', "#{time}\t#{value}\n", mode: 'a')
end
