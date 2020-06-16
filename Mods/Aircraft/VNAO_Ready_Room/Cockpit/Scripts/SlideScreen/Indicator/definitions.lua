dofile(LockOn_Options.common_script_path.."elements_defs.lua")

SetScale(METERS) --FOV, Milliradians, Meters
DEFAULT_LEVEL = 6
NOCLIP_LEVEL  = DEFAULT_LEVEL - 1

screenHalfSize = 0.6 -- positions are done from center of indicator, so max distance in each direction will be +- half size
screenHalfSizeX = screenHalfSize * 1.5

function AddElement(object)
    object.use_mipfilter    = false
	object.additive_alpha   = false
	object.h_clip_relation  = h_clip_relations.COMPARE
	object.level			= DEFAULT_LEVEL 
	Add(object)
end



--[[
--text_using_parameter {element,format}
--move_up_down_using_parameter{element, amount to move when parameter=1}
--move_left_right_using_parameter
--rotate_using_parameter{element,rotaion amount}
--parameter_in_range
--change_opacity_using_parameter
--change_color_using_parameter

compare_parameters
parameter_compare_with_number
change_color_when_parameter_equal_to_number
change_texture_state_using_parameter
fov_control
utility_set_origin_to_cockpit_shape
increase_render_target_counter
]]