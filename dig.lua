function text()
        shell.run("clear")
        print("Fuel Level: ".. turtle.getFuelLevel())
        print ""
end
 
function dig()
		turtle.dig()
		turtle.forward()
		sleep(.6)
		x = 0;
		while turtle.detectUp() do
			turtle.digUp()
			sleep(.6)
			turtle.up()
			sleep(.6)
			x = x + 1
		end
		for j = 0, x do
			turle.down()
			sleep(.6)
		end
		sleep(.6)
end
 
 
function autoFuel()
        io.write "Turn auto-fuel on? (y/n): "
        f = io.read()
        if f ~= "y" then
                if f ~= "n" then
                        print ""
                        print "Please enter a valid response"
                        print ""
                        autoFuel()
                else
                start()
                end
        else
        start()
        end
end
 
function start()
        io.write "Length of Landscape: "
        d = io.read()
        if not tonumber(d) then
                print ""
                print "Please enter a valid number"
                print ""
                start()
        else
                d = tonumber(d)
        end
		
		io.write "Width of Landscape: "
		e not tonumber(e) then
				print ""
				print "Please enter a valid number"
				print ""
				start()
		else
			e = tonumber(e)
		end
				
		
        if d < 1 then
                print ""
                print "Number is not valid"
                print ""
                start()
        end
		
		if e < 1 then
				print ""
                print "Number is not valid"
                print ""
                start()
		end
end
 
function addFuel()
        print ""
        print "Add fuel to continue..."
        turtle.select(1)
        while turtle.getFuelLevel() == 0 do
                turtle.refuel()
                sleep(1)
        end
        print ""
        print "Continuing to Mine"
        print ""
end
 
 
function fuelCheck()
        if turtle.getFuelLevel() == 0 then
                if f == "y" then
                        for i = 1, 16 do
                                turtle.select(i)
                                turtle.refuel(1)
                                if turtle.getFuelLevel() > 0 then
                                        turtle.select(1)
                                        break
                                end
                        end
                if turtle.getFuelLevel() == 0 then
                        addFuel()
                end
                else
                        addFuel()
                end
        end
end

t = 0
text()
autoFuel()
turtle.refuel()
print ""
print "Beginning Landscape Process"
for z = 1, e do
	for i = 1, d do
			fuelCheck()
			dig()
	end
	t = t + 1
	if t%2 == 0
		turtle.turnLeft();
		dig();
		turtle.turnLeft();
	else
		turtle.turnRight();
		dig();
		turtle.turnRight();
	end
end

print ""
print "Lanscaping Complete!"
print "Timothy Roe Jr."