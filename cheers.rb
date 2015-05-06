#!/usr/bin/env ruby
require_relative 'lib/cheer'
# This file is for I/O, and delegates logic to our tested classes (in lib).

puts "Hello, what's your name?"
name = gets
puts Cheer.for_person(name)
puts "Hey #{name}, what's your birthday? (mm/dd)"
birthday_string = gets
puts Cheer.for_birthday(birthday_string)