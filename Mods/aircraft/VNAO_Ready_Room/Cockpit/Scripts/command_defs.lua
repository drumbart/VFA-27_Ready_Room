local function counter()
	count = count + 1
	return count
end

count = 10000

device_commands = 
{
	PreviousSlide = counter(),
	NextSlide = counter(),
	Lights = counter(),
	lightAxis = counter(),
}

