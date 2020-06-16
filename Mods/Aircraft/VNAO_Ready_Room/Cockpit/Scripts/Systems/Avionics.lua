dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."LogDecode.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local update_time_step = 1  
make_default_activity(update_time_step)

HEAD_ROT  = get_param_handle("HEAD_ROT")
HEAD_ROT:set(0)
HEAD_TILT  = get_param_handle("HEAD_TILT")
HEAD_TILT:set(0)


HorizontalView = 2142
verticalView = 2143

--for i = 2000,2200 do
--dev:listen_command(i)
--end

function post_initialize()
    dev:listen_command(HorizontalView) -- -162 to 162 degrees
	dev:listen_command(verticalView) -- -90 to 110
	
	
	--load_log_file() 
end


function SetCommand(command,value)   
	if command == HorizontalView then
		--print_message_to_user(value)
		--HEAD_ROT:set(value/-180)
	elseif command == verticalView then
		--HEAD_TILT:set(value/90)
	end
end


local base = _G
package.path  = package.path..";.\\LuaSocket\\?.lua;"..'.\\Scripts\\?.lua;'.. '.\\Scripts\\UI\\?.lua;'
package.cpath = package.cpath..";.\\LuaSocket\\?.dll;"

local require           = base.require
--local net               = require('net')


function update()	
	local seat3 = get_aircraft_draw_argument_value(403)
	local seat4 = get_aircraft_draw_argument_value(404)
	--print_message_to_user(seat3.." "..seat4)
	
	--seatState = load_log_file() 
	--if UnitNumber then -- make sure script can be read before changing draw arguments
		--for i = 1,20 do
		--	set_aircraft_draw_argument_value(399+i, seatState[i])
		--end
	--end
	---print_message_to_user(seatState[3]..seatState[4]..seatState[5])
	
	   local _update = {
        name = "",
        side = 0,
    }
--playerID = net.get_my_player_id()
   -- _update.name = net.get_player_info(playerID, "name" )
	--_update.side = net.get_player_info(playerID,"side")
	--print_message_to_user(_update.name.._update.side)
end

need_to_be_closed = false 

--get_cockpit_draw_argument_value
--get_aircraft_draw_argument_value
--set_aircraft_draw_argument_value