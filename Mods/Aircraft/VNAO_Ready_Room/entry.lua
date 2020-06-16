local self_ID = "VNAO_Ready_Room"
declare_plugin(self_ID,
{
dirName			= current_mod_path,
displayName		= _("VNAO Ready Room"),
fileMenuName	= _("Ready Room"),
version 		= "0.16",
state			= "installed",
developerName	= _("VNAO  |  Particleman"),
info			= _("VNAO Ops Ready Room"),

binaries	 =
{ 
'VNAO_RR',
},
Skins =
{
	{
		name	= "VNAO Ready Room",
		dir		= "Theme"
	},
},
LogBook =
{
	{
		name	= _("VNAO Ready Room"),
		type	= "VNAO_Ready_Room",
	},
},

InputProfiles = 
{
	["VNAO_Ready_Room"]		= current_mod_path .. '/Input/VNAO_Ready_Room',	
},

})

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures")
mount_vfs_texture_path  (current_mod_path.."/Textures/RR_Chair_Headrest")
mount_vfs_texture_path  (current_mod_path.."/Textures/RR_Flags")
mount_vfs_texture_path  (current_mod_path.."/Textures/RR_Pilots")
mount_vfs_texture_path  (current_mod_path.."/Textures/RR_Room_Base_Textures")

mount_vfs_texture_path  (current_mod_path.."/Theme/ME")
mount_vfs_texture_path  (current_mod_path.."/DROP_SLIDES_HERE")

dofile(current_mod_path..'/VNAO_Ready_Room.lua')
dofile(current_mod_path..'/Views.lua')
make_view_settings('VNAO_Ready_Room', ViewSettings, SnapViews)

local FM =
{
	[1] = self_ID,
	[2] = "VNAO_RR", -- name of dll
	center_of_mass 	  = {0.0, 0.0, 0.0},  -- center of mass position relative to object 3d model center for empty aircraft  -- {forward/back,up/down,left/right} 
	moment_of_inertia = {100000,100000, 100000, 100}, -- moment of inertia of empty (Ix,Iy,Iz,Ixy)	in kgm^2 
}

make_flyable('VNAO_Ready_Room', current_mod_path..'/Cockpit/Scripts/',FM, current_mod_path..'/comm.lua')
plugin_done()
