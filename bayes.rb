#!/usr/bin/env ruby

def read_probability(msg)
  print(msg)
  n = gets
  n.to_f / 100.0
end

def read_inference
  x = read_probability("Prior probability: ")
  y = read_probability("Probability of observation given prior is true: ")
  z = read_probability("Probability of observation given prior is false: ")
  Inference.new(x,y,z)
end

def print_inference(i)
  if i.posterior > 1
    puts "New probability: #{i.posterior.round(2)}%"
  else
    puts "New probability: #{i.posterior}%"
  end
end

class Inference
  attr_accessor :x, :y, :z

  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

  def posterior
    ((x * y) / ((x * y) + z * (1-x))) * 100.0
  end
end

Signal.trap("INT") do
  puts "\nkeep it classy!"
  exit
end

i = read_inference
print_inference(i)

loop do
  print "More Evidence? "
  if gets.strip.match(/y/i)
    i.x = i.posterior / 100.0
    print_inference(i)
  else
    break
  end
end
