# Create a simple random walk:
# https://www.youtube.com/watch?v=PPl-7_RL0Ko
# https://ocw.mit.edu/courses/mathematics/18-s096-topics-in-mathematics-with-applications-in-finance-fall-2013/lecture-notes/MIT18_S096F13_lecnote17.pdf

start_value = 0
num_steps = 1000
step_size = 1

value = start_value
num_steps.times do |time|
  value += (rand > 0.5  ? step_size : -1 * step_size)
  File.write('./output/simple_random_walk.txt', "#{time}\t#{value}\n", mode: 'a')
end
