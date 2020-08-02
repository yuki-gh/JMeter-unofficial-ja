#! /usr/bin/ruby

in1=open(ARGV[0], "r")
in2=open(ARGV[1], "r")

line1=in1.gets
line2=in2.gets

while line1 != nil && line2 != nil
	key1 = line1.split("=")[0]
	key2 = line2.split("=")[0]
	if key1 < key2
		puts line1
		line1=in1.gets
	elsif key1 > key2
		puts line2
		line2=in2.gets
	else
		puts line2
		line1=in1.gets
		line2=in2.gets
	end
end

