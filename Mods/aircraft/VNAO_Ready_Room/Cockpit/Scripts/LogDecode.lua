
local logPath  = lfs.writedir()..'Logs\\dcs.log'
local RRlogPath  = lfs.writedir()..'Logs\\RR.log'



local seatState = {}
occend = {}
relend = {}
for i = 1,20 do
	seatState[i] = 0
	occend[i] = 0
	relend[i] = 0
end

function load_log_file()

os.execute(string.format('copy "%s" "%s"', logPath, RRlogPath))


	
	logfile = io.open(RRlogPath, "r") -- opens RRtest.log
	local fileData = logfile:read("*a") -- reads entire file
	
	UnitNumber = string.match(fileData, 'spawnLocalPlayer (%d+),VNAO_Ready_Room') -- finds unit number of ready room
	--seatOccupied =  string.match(fileData, "occupied unit "..UnitNumber..'_(%d+)') -- finds what seat is occupied
	
	
	if string.match(fileData, "occupied unit "..UnitNumber) then
			seatState[1] = 1
	end
		
	for i = 1,19 do
		if string.match(fileData, "occupied unit "..UnitNumber..'_'..i, occend[i]) then
			seatState[i+1] = 1
			occStart, occend[i] = string.find(fileData, "occupied unit "..UnitNumber..'_'..i, occend[i])
		end
		if string.match(fileData, "release unit "..UnitNumber..'_'..i, relend[i]) then
			seatState[i+1] = 0
			relStart, relend[i] = string.find(fileData, "release unit "..UnitNumber..'_'..i, relend[i])
		end
		
	end
		
	if logfile then
		logfile:close()
	end
	
	return seatState	
end


