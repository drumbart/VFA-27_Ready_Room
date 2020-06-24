livery = {

	{"F16_bl50_Kil", 0 ,"F16_bl50_Kil", false};
	{"F16_bl50_Kil", ROUGHNESS_METALLIC, "F16_bl50_RoughMet", false};

	{"F16_bl50_Main_1", 0 ,"F16_bl50_Main_1",false};
	{"F16_bl50_Main_1", ROUGHNESS_METALLIC, "F16_bl50_RoughMet", false};

	{"F16_bl50_Main_2", 0 ,"F16_bl50_Main_2",false};
	{"F16_bl50_Main_2", ROUGHNESS_METALLIC, "f16_bl50_RoughMet", false};

	{"F16_bl50_Main_3", 0 ,"F16_bl50_Main_3",false};
	{"F16_bl50_Main_3", ROUGHNESS_METALLIC, "f16_bl50_RoughMet", false};

	{"F16_bl50_wing_L", 0 ,"F16_bl50_wing_L",false};
	{"F16_bl50_wing_L", ROUGHNESS_METALLIC, "F16_bl50_RoughMet", false};

	{"F16_bl50_wing_R", 0 ,"F16_bl50_wing_R",false};
	{"F16_bl50_wing_R", ROUGHNESS_METALLIC, "F16_bl50_RoughMet", false};

	-- UPDATE THESE FOR CUSTOM ENGINE FLAME, PILOT DECALS AND TANK PAINT -- 
	-- {"F16_bl50_Engine", 0, "f16_bl50_engine", false};
	-- {"F16_bl50_Engine", 13 ,"F16_bl50_Engine_RoughMet",false};

	-- {"pilot_F16_patch", 0 ,"pilot_F16_patch",false};

	{"Tank_370", DIFFUSE, "fuel_tank_370gal_diff", false};
	{"Tank_370", ROUGHNESS_METALLIC, "fuel_tank_370gal_diff_RoughMet", false};
	{"PTB_300Gal", 0, "fuel_tank_300gal", false};
	{"PTB_300Gal", ROUGHNESS_METALLIC, "fuel_tank_300gal_roughmet", false};




	
}
custom_args = 
{
[1000] = 1.0, -- change of type of board number (0.0 -default USA, 0.1, 0.2, 0.3, 1.0 not drawn)
[1001] = 1.0, -- vis refuel board number (0.0 drawn, 1.0 not drawn)
[1002] = 1.0, -- change of type intake board number (0.0 two digits, 0.1 three digits, 1.0 not drawn)
[1003] = 1.0, -- vis nouse board number (0.0 drawn, 1.0 not drawn)
}

name = "Wildcats 14FS Bishop"
countries = {"USA"}