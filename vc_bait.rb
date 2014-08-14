#!/usr/bin/env ruby

# command line usage
if ARGV.length != 3
	puts "Usage: <comparables filename> <use cases filename> <num startups>"
	exit
end

# get command line options
comparables_filename = ARGV[0]
use_cases_filename = ARGV[1]
num_startups = ARGV[2]

# read files
comparables = File.readlines(comparables_filename)
use_cases = File.readlines(use_cases_filename)

# synthesize random new startups
num_startups.to_i.times do
	comparable = comparables[rand(comparables.length)].chomp
	use_case = use_cases[rand(use_cases.length)].chomp
	puts "the " + comparable + " of " + use_case
end
