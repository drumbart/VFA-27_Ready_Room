dofile(LockOn_Options.script_path.."command_defs.lua")


local dev = GetSelf()
local sensor_data = get_base_data()
local update_time_step = 0.02  
make_default_activity(update_time_step)

local timeHour = get_param_handle("timeHour")
local timeMins = get_param_handle("timeMins")
local timeSec = get_param_handle("timeSec")
local clockHour = get_param_handle("clockHour")
local clockMins = get_param_handle("clockMins")
local clockSec = get_param_handle("clockSec")
local fanSpin = get_param_handle("fanSpin")
local roomLights = get_param_handle("roomLights")

function post_initialize()
end

local lightState = 0

dev:listen_command(device_commands.Lights)
dev:listen_command(device_commands.lightAxis)

function SetCommand(command,value)   
	if command == device_commands.Lights then
		lightState = 1-roomLights:get()
		--roomLights:set(lightState)
	elseif command == device_commands.lightAxis then
		lightState = (-value+1)/2
	end
	
	if lightState < 0 then
		lightState = 0
	elseif lightState > 1 then
		lightState = 1
	end
	
	set_aircraft_draw_argument_value(387, lightState)
end


local spinVal = 0
function update()	
	spinVal = spinVal + update_time_step*2
	if spinVal >= 1 then
		spinVal = 0
	end
	fanSpin:set(spinVal)
	
	
	local abstime = get_absolute_model_time()
    local hour = abstime/3600.0
    timeHour:set(hour)
    local int,frac = math.modf(hour)
    timeMins:set(math.floor(frac*60))
	local int1,frac1 = math.modf(frac*60)
	timeSec:set(frac1*60)
	
	clockHour:set(hour/12)
	clockMins:set(frac)
	clockSec:set(frac1)
	
	
	local readArg = get_aircraft_draw_argument_value(387)
	local outputArg = (math.floor(readArg*100+0.5))/100 -- fix non-rounded number
	roomLights:set(outputArg)
end

need_to_be_closed = false 

--get_cockpit_draw_argument_value
--get_aircraft_draw_argument_value
--set_aircraft_draw_argument_value