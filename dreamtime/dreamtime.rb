#!/usr/bin/env ruby

# Dreamtime generates random combinations of ideation methods and scenes
# to be used in conjunction with teams generated by Dreamteam.

# command line usage
if ARGV.length != 3
	puts "Usage: <methods filename> <scenes filename> <number of teams>"
	puts "Generates random combinations of ideation methods and scenes."
	exit
end

# get command line options
methods_filename = ARGV[0]
scenes_filename = ARGV[1]
num_teams = ARGV[2]

# read files
methods = File.readlines(methods_filename)
scenes = File.readlines(scenes_filename)

# remove commented out lines
methods.delete_if {|method| method.start_with?("//") }
scenes.delete_if {|scene| scene.start_with?("//") }

puts "group number, method, scene"
# generate random combinations
num_teams.to_i.times do |i|
	method = methods[rand(methods.length)].chomp
	scene = scenes[rand(scenes.length)].chomp
	puts (i+1).to_s + "," + method + "," + scene
end
