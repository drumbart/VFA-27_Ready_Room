dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

dev = GetSelf()
local update_time_step = 0.2
make_default_activity(update_time_step)


local Slide_Number = get_param_handle("Slide_Number")
Slide_Number:set(0)

function post_initialize()
	local birth = LockOn_Options.init_conditions.birth_place	
end

dev:listen_command(device_commands.PreviousSlide)
dev:listen_command(device_commands.NextSlide)
local slideInput = 0
function SetCommand(command,value)  

	if command == device_commands.PreviousSlide then      
        slideInput = Slide_Number:get()-0.05
		if slideInput < 0 then slideInput = 0 end
	elseif command == device_commands.NextSlide then
		slideInput = Slide_Number:get()+0.05
		if slideInput > 1 then slideInput = 1 end
	end
	
	set_aircraft_draw_argument_value(399, slideInput)
end



function update()	
	local readArg = get_aircraft_draw_argument_value(399)
	local outputArg = (math.floor(readArg*100+0.5))/100 -- fix non-rounded number
	Slide_Number:set(outputArg)
 --print_message_to_user("slide arg number: "..get_aircraft_draw_argument_value(399)..", output: "..outputArg)
end

need_to_be_closed = false