dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.common_script_path.."tools.lua")


MainPanel = {"ccMainPanel",LockOn_Options.script_path.."mainpanel_init.lua"}


creators    = {}
--creators[devices.TEST]	= {"avLuaDevice", LockOn_Options.script_path.."Systems/Avionics.lua"}
creators[devices.PROJECTION_SCREEN]	= {"avLuaDevice", LockOn_Options.script_path.."SlideScreen/device/SlideScreen.lua"}
creators[devices.SOUNDS]	= {"avLuaDevice", LockOn_Options.script_path.."Systems/Sounds.lua"}
creators[devices.INTERCOM]      = {"avIntercom"             ,LockOn_Options.script_path.."Systems/Intercom.lua", {devices.RADIO1} }
creators[devices.RADIO1]    	= {"avUHF_ARC_164"          ,LockOn_Options.script_path.."Systems/Radio1.lua", {devices.INTERCOM} }
creators[devices.ANIMATIONS]	= {"avLuaDevice", LockOn_Options.script_path.."Systems/Animations.lua"}

indicators = {}
indicators[#indicators + 1] = {"ccIndicator" ,LockOn_Options.script_path.."SlideScreen/Indicator/init.lua",nil,
 {	
	{nil,nil,nil}, -- initial geometry anchor , triple of connector names 
	{sx_l =  -0.78,  -- center position correction in meters (forward , backward) 
	 sy_l =  1.62,  -- center position correction in meters (up , down)
	 sz_l =  2.65,  -- center position correction in meters (left , right)
	 sh   =  0,  -- half height correction 
	 sw   =  0,  -- half width correction 
	 rz_l =  0,  -- rotation corrections in degrees
	 rx_l =  0,
	 ry_l =  180}
  }
}

dofile(LockOn_Options.common_script_path.."KNEEBOARD/declare_kneeboard_device.lua")
