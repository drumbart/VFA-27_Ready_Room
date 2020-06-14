dofile(LockOn_Options.script_path.."command_defs.lua")


local dev = GetSelf()
local sensor_data = get_base_data()
local update_time_step = 1  
make_default_activity(update_time_step)


function post_initialize()
  
	sndhost = create_sound_host("ambient","3D",0,0,0)
    ambientSound = sndhost:create_sound("RR_Ambient_Audio")
	
	
end


function SetCommand(command,value)   

end



function update()	
	ambientSound:play_continue()
end

need_to_be_closed = false 

--get_cockpit_draw_argument_value
--get_aircraft_draw_argument_value
--set_aircraft_draw_argument_value