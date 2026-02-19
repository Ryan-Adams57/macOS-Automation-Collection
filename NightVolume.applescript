if time string of (current date) contains "10:00:00 PM" then
	set volume 0
else
	set volume 4
	repeat until time string of (current date) contains "10:00:00 PM"
	end repeat
end if
