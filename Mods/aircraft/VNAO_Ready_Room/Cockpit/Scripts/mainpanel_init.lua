shape_name   	   = "Cockpit_VNAO_Ready_Room" 


dusk_border					 = 0.5

draw_pilot			= false
render_debug_info	= false


day_texture_set_value   = 0.0
night_texture_set_value = 0.1

local controllers = LoRegisterPanelControls()

mirrors_data = 
{
    center_point 	= {30.0,14.0,10.0}, --F/B,U/D,L/R location of reflection image generation
    width			= math.rad(160), -- horizontal FOV
    aspect 		 	= 2.23, 
	rotation 	 	= math.rad(165); -- vertical rotation (negative is down into cockpit more)
	near_clip 		= 0.1; -- removes polys within this distance
	--middle_clip		= 10;
	--far_clip		= 60000;
	--arg_value_when_on	= 1.0,
	--animation_speed = 2.0;
}

fan1							= CreateGauge("parameter")
fan1.arg_number					= 380
fan1.input						= {0, 1}
fan1.output						= {0, 1}
fan1.parameter_name				= "fanSpin"

fan2							= CreateGauge("parameter")
fan2.arg_number					= 381
fan2.input						= {0, 1}
fan2.output						= {0, 1}
fan2.parameter_name				= "fanSpin"

fan3							= CreateGauge("parameter")
fan3.arg_number					= 382
fan3.input						= {0, 1}
fan3.output						= {0, 1}
fan3.parameter_name				= "fanSpin"

clockHour							= CreateGauge("parameter")
clockHour.arg_number				= 385
clockHour.input						= {0, 1}
clockHour.output					= {0, 1}
clockHour.parameter_name			= "clockHour"

clockMin						= CreateGauge("parameter")
clockMin.arg_number				= 383
clockMin.input					= {0, 1}
clockMin.output					= {0, 1}
clockMin.parameter_name			= "clockMins"

clockSec						= CreateGauge("parameter")
clockSec.arg_number				= 384
clockSec.input					= {0, 1}
clockSec.output					= {0, 1}
clockSec.parameter_name			= "clockSec"

lights							= CreateGauge("parameter")
lights.arg_number				= 387
lights.input					= {0, 1}
lights.output					= {0, 1}
lights.parameter_name			= "roomLights"

pilot_draw                      = CreateGauge()
pilot_draw.arg_number    		= 50
pilot_draw.input				= {0.0, 1.0}
pilot_draw.output				= {0.0, 1.0}
pilot_draw.controller			= controllers.pilot_draw

-- HeadRotation						= CreateGauge("parameter")
-- HeadRotation.arg_number				= 39
-- HeadRotation.input					= {-1, 1}
-- HeadRotation.output					= {-1, 1}
-- HeadRotation.parameter_name			= "HEAD_ROT"

-- HeadTilt							= CreateGauge("parameter")
-- HeadTilt.arg_number					= 99
-- HeadTilt.input						= {-1, 1}
-- HeadTilt.output						= {-1, 1}
-- HeadTilt.parameter_name				= "HEAD_TILT"

--[[
Seat3Vis							= CreateGauge("parameter")
Seat3Vis.arg_number					= 16
Seat3Vis.input						= {0, 1}
Seat3Vis.output						= {0, 1}
Seat3Vis.parameter_name				= "SEAT_3_VIS"

Seat4Vis							= CreateGauge("parameter")
Seat4Vis.arg_number					= 20
Seat4Vis.input						= {0, 1}
Seat4Vis.output						= {0, 1}
Seat4Vis.parameter_name				= "SEAT_4_VIS"

HeadRotation						= CreateGauge("parameter")
HeadRotation.arg_number				= 25
HeadRotation.input					= {-1, 1}
HeadRotation.output					= {-1, 1}
HeadRotation.parameter_name			= "HEAD_ROT"

HeadTilt							= CreateGauge("parameter")
HeadTilt.arg_number					= 26
HeadTilt.input						= {-1, 1}
HeadTilt.output						= {-1, 1}
HeadTilt.parameter_name				= "HEAD_TILT"
]]

need_to_be_closed = true -- close lua state after initialization 

livery = "default"

--[[ available functions 

 --base_gauge_RadarAltitude
 --base_gauge_BarometricAltitude
 --base_gauge_AngleOfAttack
 --base_gauge_AngleOfSlide
 --base_gauge_VerticalVelocity
 --base_gauge_TrueAirSpeed
 --base_gauge_IndicatedAirSpeed
 --base_gauge_MachNumber
 --base_gauge_VerticalAcceleration --Ny
 --base_gauge_HorizontalAcceleration --Nx
 --base_gauge_LateralAcceleration --Nz
 --base_gauge_RateOfRoll
 --base_gauge_RateOfYaw
 --base_gauge_RateOfPitch
 --base_gauge_Roll
 --base_gauge_MagneticHeading
 --base_gauge_Pitch
 --base_gauge_Heading
 --base_gauge_EngineLeftFuelConsumption
 --base_gauge_EngineRightFuelConsumption
 --base_gauge_EngineLeftTemperatureBeforeTurbine
 --base_gauge_EngineRightTemperatureBeforeTurbine
 --base_gauge_EngineLeftRPM
 --base_gauge_EngineRightRPM
 --base_gauge_WOW_RightMainLandingGear
 --base_gauge_WOW_LeftMainLandingGear
 --base_gauge_WOW_NoseLandingGear
 --base_gauge_RightMainLandingGearDown
 --base_gauge_LeftMainLandingGearDown
 --base_gauge_NoseLandingGearDown
 --base_gauge_RightMainLandingGearUp
 --base_gauge_LeftMainLandingGearUp
 --base_gauge_NoseLandingGearUp
 --base_gauge_LandingGearHandlePos
 --base_gauge_StickRollPosition
 --base_gauge_StickPitchPosition
 --base_gauge_RudderPosition
 --base_gauge_ThrottleLeftPosition
 --base_gauge_ThrottleRightPosition
 --base_gauge_HelicopterCollective
 --base_gauge_HelicopterCorrection
 --base_gauge_CanopyPos
 --base_gauge_CanopyState
 --base_gauge_FlapsRetracted
 --base_gauge_SpeedBrakePos
 --base_gauge_FlapsPos
 --base_gauge_TotalFuelWeight

--]]
