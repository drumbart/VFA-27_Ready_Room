VNAO_Ready_Room = {
	Name				=	'VNAO_Ready_Room',
	DisplayName			=	_('VNAO_Ready_Room'),
	
	shape_table_data 	= {
		{
			file  	    = 'VNAO_Ready_Room';
			username    = 'VNAO_Ready_Room';
			desrt		= 'Fighter-2-crush';
			index       =  WSTYPE_PLACEHOLDER;
			life  	    = 16; --   The strength of the object (ie. lifebar *)
			vis   	    = 3; -- Visibility factor (For a small objects is better to put lower nr).
			fire  	    = { 300, 2}; -- Fire on the ground after destoyed: 300sec 4m
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
	},
	Picture				= 'VNAO_Ready_Room.png',	-- Mission editor loadout picture
	mapclasskey 		= "P0091000037", -- found in MissionEditor/data/NewMap/images/themes/nato/P91000037
	attribute  			= {wsType_Air, wsType_Helicopter, wsType_Battleplane, WSTYPE_PLACEHOLDER ,"Attack helicopters",},
	Categories 			= {},
	Rate 				= 0,  -- RewardPoint in Multiplayer
	Countries 			= {"USA"},


	net_animation = {   --transmits draw arguments over multiplyer for others to see
					387, -- Room Lighting
					398, 
					400,
					401,
					402,
					403,
					404,
					405,
					406,
					407,
					408,
					399, -- slide number test
					},
					
	crew_size = 25,
	crew_members = 
	{
			[1] =
			{	ejection_seat_name	=	0, -- name of object file used for pilot ejection
				drop_canopy_name	=	0, -- name of object file used for canopy jettison
				pos = 	{0.97, 1.65, 4.90}, -- used for ejection location {forward/back,up/down,left/right}
				can_be_playable  = true,	
				role = "briefer",
				role_display_name = _("Briefer"), 
			},
			[2] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.324, 1.161, 6.193},
				can_be_playable  = true,	
				role = "seat 01",
				role_display_name = _("seat 01"), 
			},
			[3] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.324, 1.161, 5.561},
				can_be_playable  = true,	
				role = "seat 02",
				role_display_name = _("seat 02"), 
			},
			[4] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "seat 03",
				role_display_name = _("seat 03"), 
			},
			[5] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "seat 04",
				role_display_name = _("seat 04"), 
			},
			[6] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Pilot 5"), 
			},
			[7] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Pilot 6"), 
			},
			[8] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Pilot 7"), 
			},
			[9] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[10] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[11] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[12] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[13] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[14] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[15] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[16] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[17] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[18] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[19] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[20] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[21] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[22] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "boss",
				role_display_name = _("Desk"), 
			},
			[23] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[24] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},
			[25] =
			{	ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.0, 0.0, 0.0},
				can_be_playable  = true,	
				role = "pilot",
				role_display_name = _("Instructor pilot"), 
			},			
	},

	length				=	9.8, -- meters
		height				=	3.0,
		rotor_height		=	2.7,
		rotor_diameter		=	8.33, --m
		blade_chord			=	0.171,
		blades_number		=	5,
		blade_area			=	0.712, --m^2
		rotor_RPM			=	470,
		engines_count		=	1,
		rotor_MOI			=	1500,
		rotor_pos 			= 	{0,	0.86, 0},
		thrust_correction	=	0.55,
		M_empty				=	722, --kg
		M_nominal			=	1200, --kg
		M_max				=	1610, --kg		
		M_fuel_max			=	362, -- kg	1 litre = 0.79 kg	62 gal (~185kg) main tank, + 62 gal internal backseat tank (60 usable)
		RCS					=	3, -- Radar Cross Section m^2
		IR_emission_coeff	=	0.3, -- 1 is IR emission of Su-27
		
		fuselage_Cxa0	=	0.4,
		fuselage_Cxa90	=	3,
		fuselage_area	=	1.4, 
		
		centering		=	0,
		tail_pos 		= 	{-4.564,	0.163,	0},
		tail_fin_area	=	0.467,
		tail_stab_area	=	0.66,

		------------------ AI defs ------------------------------
		V_max				=	78.3, -- m/s max speed for AI
		V_max_cruise		=	70,	-- cruise speed
		Vy_max				=	10.5, --Max climb speed in m/s 
		H_stat_max_L		=	5070,
		H_max 				=	5500, --km, max operation height
		H_stat_max			=	3040,
		H_din_two_eng		=	5500,
		H_din_one_eng		=	5500,
		range				=	430, --km, for AI
		flight_time_typical	=	140,
		flight_time_maximum	=	189,
		Vy_land_max			=	12.8, -- landing speed
		Ny_max				=	3.5, --max G for AI
	Sensors = {	
           nil
	},
	CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_AVERAGE),
	 	
	nose_gear_pos 		= { 7,	0,	0}, -- used for starting placement on ground {forward/back,up/down,left/right}
	main_gear_pos 		= { -6,	0,	20},
	
	fires_pos =
		{ 
			[1] = 	{0,	0,	0}, 
		},		

	engines_nozzles = 
	{
		{
		pos     	= {0,0, 0}, -- important for heatblur effect
		diameter      = 0.01, 
		engine_number = 1  ,
		smokiness_level = 0,
		}
	},

	Pylons = {
	nil
	},
		
	Tasks = { 		-- defined in db_units_planes.lua
        aircraft_task(Reconnaissance),
    },	
	DefaultTask = aircraft_task(Reconnaissance),
	
	LandRWCategories = 	-- adds these takeoff and landing options avaliable in mission editor
    {	[1] = 
        {
           Name = "HelicopterCarrier",
        },
        [2] = 
        {
           Name = "AircraftCarrier",
        },
    },
	TakeOffRWCategories = 
    {	[1] = 
        {
            Name = "HelicopterCarrier",
        },
        [2] = 
        {
           Name = "AircraftCarrier",
        },
    },
	
	Damage = verbose_to_dmg_properties( --index meaning see in Scripts\Aircrafts\_Common\Damage.lua
	{		
		["MAIN"]  			= {critical_damage = 100, args = {151}}, 
	}),
		
	
	engine_data = 
	{  -- most of these are unknown right now
			power_take_off	=	473,
			power_max	=	473,
			power_WEP	=	473,
			power_TH_k = 
			{
				[1] = 	{0,	-230,	2245},
				[2] = 	{0,	-230,	2245},
				[3] = 	{0,	-325,	2628},
				[4] = 	{0,	-235,	1931},
			},
			SFC_k = 	{0,	-0.001,	0.9},
			power_RPM_k = 	{-0.08,	0.2,	0.8},
			power_RPM_min	=	9.1,
			
	},
	HumanRadio 	={
        frequency     = 305.0,
        editable     = true,
        minFrequency     = 30.000,
        maxFrequency     = 399.975,
		rangeFrequency = {
			{min = 30.0,  max = 87.975},
			{min = 108.0, max = 173.975},
			{min = 225.0, max = 399.975},
		},
        modulation     = MODULATION_AM
	},
		
	panelRadio = {
			[1] = {  
				name = _("VHF/UHF AN/ARC-182"),
				range = {{min = 30.0, max = 87.975},
					 {min = 108.0, max = 173.975},
					 {min = 225.0, max = 399.975}},
				channels = {
                [1] = { name = _("Channel 1"), default = 225.0, connect = true}, -- default
                [2] = { name = _("Channel 2"), default = 258.0},
                [3] = { name = _("Channel 3"), default = 260.0},-- batumi : 131.0, 260.0
                [4] = { name = _("Channel 4"), default = 270.0},-- beslan : 141.0, 270.0
                [5] = { name = _("Channel 5"), default = 255.0},-- gelenjik : 126.0, 255.0
                [6] = { name = _("Channel 6"), default = 259.0},-- gudauta : 130.0, 259.0
                [7] = { name = _("Channel 7"), default = 262.0},-- kabuleti : 133.0, 262.0
                [8] = { name = _("Channel 8"), default = 257.0},-- krasnodar-pashk. : 128.0, 257.0
                [9] = { name = _("Channel 9"), default = 253.0},-- krymsk : 124.0, 253.0
                [10] = { name = _("Channel 10"), default = 263.0},-- kutaisi : 134.0, 263.0
                [11] = { name = _("Channel 11"), default = 267.0},	-- lochini : 138.0, 267.0
                [12] = { name = _("Channel 12"), default = 254.0},-- maykop : 125.0, 254.0
                [13] = { name = _("Channel 13"), default = 264.0},-- min. water : 135.0, 264.0
                [14] = { name = _("Channel 14"), default = 266.0},-- mozdok : 137.0, 266.0
                [15] = { name = _("Channel 15"), default = 265.0},-- nalchik : 136.0, 265.0
                [16] = { name = _("Channel 16"), default = 252.0},
                [17] = { name = _("Channel 17"), default = 268.0},-- soginlug : 139.0, 268.0
                [18] = { name = _("Channel 18"), default = 269.0},-- vaziani : 140.0, 269.0
                [19] = { name = _("Channel 19"), default = 268.0},
                [20] = { name = _("Channel 20"), default = 269.0},
                [21] = { name = _("Channel 21"), default = 225.0},
                [22] = { name = _("Channel 22"), default = 258.0},
                [23] = { name = _("Channel 23"), default = 260.0},
                [24] = { name = _("Channel 24"), default = 270.0},
                [25] = { name = _("Channel 25"), default = 255.0},
                [26] = { name = _("Channel 26"), default = 259.0},
                [27] = { name = _("Channel 27"), default = 262.0},
                [28] = { name = _("Channel 28"), default = 257.0},
                [29] = { name = _("Channel 29"), default = 253.0},
                [30] = { name = _("Channel 30"), default = 263.0},
				
				}
			},
		},
		
	AddPropAircraft = {
		{id = "SoloFlight", control = 'checkbox' , label = _('Solo Flight'), defValue = false, weightWhenOn = 0},
		{id = "NetCrewControlPriority" , control = 'comboList', label = _('Aircraft Control Priority'), playerOnly = true,
		  values = {{id =  0, dispName = _("Pilot")},
					{id =  1, dispName = _("Instructor")},
					{id = -1, dispName = _("Ask Always")},
					{id = -2, dispName = _("Equally Responsible")}},
		  defValue  = 1,
		  wCtrl     = 150
		},
	},
}

add_aircraft(VNAO_Ready_Room)