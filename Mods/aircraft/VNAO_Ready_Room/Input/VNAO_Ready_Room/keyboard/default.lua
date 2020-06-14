local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

local kneeboard_id = 100
if devices and devices.KNEEBOARD then
   kneeboard_id = devices.KNEEBOARD
end

return {
keyCommands = {


---- Multicrew -----
{combos = {{key = '1'}},	down = iCommandViewCockpitChangeSeat, value_down = 1, name = _('Occupy Briefing Podium'),		category = _('Multicrew')},
{combos = {{key = '2'}},	down = iCommandViewCockpitChangeSeat, value_down = 2, name = _('Occupy Briefing Seat 01'),		category = _('Multicrew')},
{combos = {{key = '3'}},	down = iCommandViewCockpitChangeSeat, value_down = 3, name = _('Occupy Briefing Seat 02'),		category = _('Multicrew')},
{combos = {{key = '4'}},	down = iCommandViewCockpitChangeSeat, value_down = 4, name = _('Occupy Briefing Seat 03'),		category = _('Multicrew')},
{combos = {{key = '5'}},	down = iCommandViewCockpitChangeSeat, value_down = 5, name = _('Occupy Briefing Seat 04'),		category = _('Multicrew')},
{combos = {{key = '6'}},	down = iCommandViewCockpitChangeSeat, value_down = 6, name = _('Occupy Briefing Seat 05'),		category = _('Multicrew')},
{combos = {{key = '7'}},	down = iCommandViewCockpitChangeSeat, value_down = 7, name = _('Occupy Briefing Seat 06'),		category = _('Multicrew')},
{combos = {{key = '8'}},	down = iCommandViewCockpitChangeSeat, value_down = 8, name = _('Occupy Briefing Seat 07'),		category = _('Multicrew')},
{combos = {{key = '9'}},	down = iCommandViewCockpitChangeSeat, value_down = 9, name = _('Occupy Briefing Seat 08'),		category = _('Multicrew')},
{combos = {{key = '0'}},	down = iCommandViewCockpitChangeSeat, value_down = 10, name = _('Occupy Briefing Seat 09'),		category = _('Multicrew')},
{combos = {{key = '1', reformers = {'LShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 11, name = _('Occupy Briefing Seat 10'),		category = _('Multicrew')},
{combos = {{key = '2', reformers = {'LShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 12, name = _('Occupy Briefing Seat 11'),		category = _('Multicrew')},
{combos = {{key = '3', reformers = {'LShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 13, name = _('Occupy Briefing Seat 12'),		category = _('Multicrew')},
{combos = {{key = '4', reformers = {'LShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 14, name = _('Occupy Briefing Seat 13'),		category = _('Multicrew')},
{combos = {{key = '5', reformers = {'LShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 15, name = _('Occupy Briefing Seat 14'),		category = _('Multicrew')},
{combos = {{key = '6', reformers = {'LShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 16, name = _('Occupy Briefing Seat 15'),		category = _('Multicrew')},
{combos = {{key = '7', reformers = {'LShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 17, name = _('Occupy Briefing Seat 16'),		category = _('Multicrew')},
{combos = {{key = '8', reformers = {'LShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 18, name = _('Occupy Briefing Seat 17'),		category = _('Multicrew')},
{combos = {{key = '9', reformers = {'LShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 19, name = _('Occupy Briefing Seat 18'),		category = _('Multicrew')},
{combos = {{key = '0', reformers = {'LShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 20, name = _('Occupy Briefing Seat 19'),		category = _('Multicrew')},
{combos = {{key = '1', reformers = {'RShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 21, name = _('Occupy Briefing Seat 20'),		category = _('Multicrew')},
{combos = {{key = '2', reformers = {'RShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 22, name = _('Occupy Briefing Seat 21'),		category = _('Multicrew')},
{combos = {{key = '3', reformers = {'RShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 23, name = _('Occupy Briefing Seat 22'),		category = _('Multicrew')},
{combos = {{key = '4', reformers = {'RShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 24, name = _('Occupy Briefing Seat 23'),		category = _('Multicrew')},
{combos = {{key = '5', reformers = {'RShift'}}},  down = iCommandViewCockpitChangeSeat, value_down = 25, name = _('Occupy Briefing Seat 24'),		category = _('Multicrew')},
{combos = {{key = 'J'}},	down = iCommandNetCrewRequestControl,				name = _('Request Aircraft Control'),		category = _('Multicrew')},

{combos = {{key = 'Left'}}, down = device_commands.PreviousSlide,  name = _('Previous Slide'), category = _('Projection Screen')},
{combos = {{key = 'Right'}}, down = device_commands.NextSlide,  name = _('Next Slide'), category = _('Projection Screen')},

{combos = {{key = 'L'}}, down = device_commands.Lights,  name = _('Room Lights On/Off'), category = _('General')},


----------------------------------------- From common keyboard bindings lua -------------------------------------------------------------------------
-- Debug
{combos = {{key = '`', reformers = {'LAlt'}}},		down = ICommandToggleConsole,	name = _('Toggle Console'),		category = _('Debug')},
{combos = {{key = 'R', reformers = {'LShift'}}},	down = iCommandMissionRestart,	name = _('Restart Mission'),	category = _('Debug')},

-- General (Gameplay)
{combos = {{key = 'Esc'}},										down = iCommandQuit,							name = _('End mission'),							category = _('General')},
{combos = {{key = 'Pause'}},									down = iCommandBrakeGo,							name = _('Pause'),									category = _('General')},
{combos = {{key = 'Z', reformers = {'LCtrl'}}},					down = iCommandAccelerate,						name = _('Time accelerate'),						category = _('General')},
{combos = {{key = 'Z', reformers = {'LAlt'}}},					down = iCommandDecelerate,						name = _('Time decelerate'),						category = _('General')},
{combos = {{key = 'Z', reformers = {'LShift'}}},				down = iCommandNoAcceleration,					name = _('Time normal'),							category = _('General')},
{combos = {{key = '\''}},										down = iCommandScoresWindowToggle,				name = _('Score window'),							category = _('General')},

{combos = {{key = 'Y',	 reformers = {'LCtrl'}}},				down = iCommandInfoOnOff,						name = _('Info bar view toggle'),					category = _('General')},
{combos = {{key = 'Tab', reformers = {'RCtrl', 'RShift'}}},		down = iCommandRecoverHuman,					name = _('Get new plane - respawn'),				category = _('General')},
{combos = {{key = 'J',	 reformers = {'RAlt'}}},				down = iCommandPlaneJump,						name = _('Jump into selected aircraft'),			category = _('General')},
{combos = {{key = 'SysRQ'}},									down = iCommandScreenShot,						name = _('Screenshot'),								category = _('General'), disabled = true},
{combos = {{key = 'Pause', reformers = {'RCtrl'}}},				down = iCommandGraphicsFrameRate,				name = _('Frame rate counter - Service info'),		category = _('General')},
{combos = {{key = 'Y',	 reformers = {'LAlt'}}},				down = iCommandViewCoordinatesInLinearUnits,	name = _('Info bar coordinate units toggle'),		category = _('General')},
{combos = {{key = 'C',	 reformers = {'LAlt'}}},				down = iCommandCockpitClickModeOnOff,			name = _('Clickable mouse cockpit mode On/Off'),	category = _('General')},
{combos = {{key = 'S',	 reformers = {'LCtrl'}}},				down = iCommandSoundOnOff,						name = _('Sound On/Off'),							category = _('General')},
{combos = {{key = '\'',	 reformers = {'LAlt'}}}, 				down = iCommandMissionResourcesManagement,		name = _('Rearming and Refueling Window'),			category = _('General')},
{combos = {{key = 'B',	 reformers = {'LAlt'}}},				down = iCommandViewBriefing,					name = _('View briefing on/off'),					category = _('General')},
{combos = {{key = 'Pause', reformers = {'LShift', 'LWin'}}},	down = iCommandActivePauseOnOff,				name = _('Active Pause'),							category = _('Cheat')},
{combos = {{key = 'Enter', reformers = {'RCtrl'}}},				down = iCommandPlane_ShowControls,				name = _('Show controls indicator'),				category = _('General')},
{combos = {{key = 'P',	reformers = {'RShift'}}},	down = iCommandCockpitShowPilotOnOff,	name = _('Show pilot body'),	category = _('General')},

-- Communications
{combos = {{key = 'E', reformers = {'LWin'}}},					down = iCommandPlaneDoAndHome,					name = _('Flight - Complete mission and RTB'),		category = _('Communications')},
{																down = iCommandPlaneReturnToBase,				name = _('Flight - RTB'),							category = _('Communications')},
{combos = {{key = 'R', reformers = {'LWin'}}},					down = iCommandPlaneDoAndBack,					name = _('Flight - Complete mission and rejoin'),	category = _('Communications')},
{combos = {{key = 'T', reformers = {'LWin'}}},					down = iCommandPlaneFormation,					name = _('Toggle Formation'),						category = _('Communications')},
{combos = {{key = 'Y', reformers = {'LWin'}}},					down = iCommandPlaneJoinUp,						name = _('Join Up Formation'),						category = _('Communications')},
{combos = {{key = 'Q', reformers = {'LWin'}}},					down = iCommandPlaneAttackMyTarget,				name = _('Attack My Target'),						category = _('Communications')},
{combos = {{key = 'W', reformers = {'LWin'}}},					down = iCommandPlaneCoverMySix,					name = _('Cover Me'),								category = _('Communications')},
{combos = {{key = 'U', reformers = {'LWin'}}},					down = iCommandAWACSHomeBearing,				name = _('Request AWACS Home Airbase'),				category = _('Communications')},
{combos = {{key = 'O', reformers = {'LWin'}}},					down = iCommandAWACSBanditBearing,				name = _('Request AWACS Bogey Dope'),				category = _('Communications')},
{combos = {{key = 'G', reformers = {'LWin'}}},					down = iCommandPlane_EngageGroundTargets,		name = _('Flight - Attack ground targets'),			category = _('Communications')},
{combos = {{key = 'D', reformers = {'LWin'}}},					down = iCommandPlane_EngageAirDefenses,			name = _('Flight - Attack air defenses'),			category = _('Communications')},
{combos = {{key = 'B', reformers = {'LWin'}}},					down = iCommandPlane_EngageBandits,				name = _('Flight - Engage Bandits'),				category = _('Communications')},
{combos = {{key = '\\'}},										down = iCommandToggleCommandMenu,				name = _('Communication menu'),						category = _('Communications')},
{combos = {{key = '\\', reformers = {'LShift'}}},				down = ICommandSwitchDialog,					name = _('Switch dialog'),							category = _('Communications')},
{combos = {{key = '\\', reformers = {'LCtrl'}}},				down = ICommandSwitchToCommonDialog,			name = _('Switch to main menu'),					category = _('Communications')},

-- View
{combos = {{key = 'Num4'}},								pressed = iCommandViewLeftSlow,			up = iCommandViewStopSlow,				name = _('View Left slow'),										category = _('View')},
{combos = {{key = 'Num6'}},								pressed = iCommandViewRightSlow,		up = iCommandViewStopSlow,				name = _('View Right slow'),									category = _('View')},
{combos = {{key = 'Num8'}},								pressed = iCommandViewUpSlow,			up = iCommandViewStopSlow,				name = _('View Up slow'),										category = _('View')},
{combos = {{key = 'Num2'}},								pressed = iCommandViewDownSlow,			up = iCommandViewStopSlow,				name = _('View Down slow'),										category = _('View')},
{combos = {{key = 'Num9'}},								pressed = iCommandViewUpRightSlow,		up = iCommandViewStopSlow,				name = _('View Up Right slow'),									category = _('View')},
{combos = {{key = 'Num3'}},								pressed = iCommandViewDownRightSlow,	up = iCommandViewStopSlow,				name = _('View Down Right slow'),								category = _('View')},
{combos = {{key = 'Num1'}},								pressed = iCommandViewDownLeftSlow,		up = iCommandViewStopSlow,				name = _('View Down Left slow'),								category = _('View')},
{combos = {{key = 'Num7'}},								pressed = iCommandViewUpLeftSlow,		up = iCommandViewStopSlow,				name = _('View Up Left slow'),									category = _('View')},
{combos = {{key = 'Num5'}},								pressed = iCommandViewCenter,													name = _('View Center'),										category = _('View')},

{combos = {{key = 'Num*'}},								pressed = iCommandViewForwardSlow,		up = iCommandViewForwardSlowStop,		name = _('Zoom in slow'),										category = _('View')},
{combos = {{key = 'Num/'}},								pressed = iCommandViewBackSlow,			up = iCommandViewBackSlowStop,			name = _('Zoom out slow'),										category = _('View')},
{combos = {{key = 'NumEnter'}},							down = iCommandViewAngleDefault,												name = _('Zoom normal'),										category = _('View')},
{combos = {{key = 'Num*', reformers = {'RCtrl'}}},		pressed = iCommandViewExternalZoomIn,	up = iCommandViewExternalZoomInStop,	name = _('Zoom external in'),									category = _('View')},
{combos = {{key = 'Num/', reformers = {'RCtrl'}}},		pressed = iCommandViewExternalZoomOut,	up = iCommandViewExternalZoomOutStop,	name = _('Zoom external out'),									category = _('View')},
{combos = {{key = 'NumEnter', reformers = {'RCtrl'}}},	down = iCommandViewExternalZoomDefault,											name = _('Zoom external normal'),								category = _('View')},
{combos = {{key = 'Num*', reformers = {'LAlt'}}},		down = iCommandViewSpeedUp,														name = _('F11 Camera moving forward'),							category = _('View')},
{combos = {{key = 'Num/', reformers = {'LAlt'}}},		down = iCommandViewSlowDown,													name = _('F11 Camera moving backward'),							category = _('View')},

{combos = {{key = 'F1'}},								down = iCommandViewCockpit,														name = _('F1 Cockpit view'),									category = _('View')},
{combos = {{key = 'F1', reformers = {'LCtrl'}}},		down = iCommandNaturalViewCockpitIn,											name = _('F1 Natural head movement view'),						category = _('View')},
{combos = {{key = 'F1', reformers = {'LAlt'}}},			down = iCommandViewHUDOnlyOnOff,												name = _('F1 HUD only view switch'),							category = _('View')},
{combos = {{key = 'F2'}},								down = iCommandViewAir,															name = _('F2 Aircraft view'),									category = _('View')},
{combos = {{key = 'F2', reformers = {'LCtrl'}}},		down = iCommandViewMe,															name = _('F2 View own aircraft'),								category = _('View')},
{combos = {{key = 'F2', reformers = {'RAlt'}}},			down = iCommandViewFromTo,														name = _('F2 Toggle camera position'),							category = _('View')},
{combos = {{key = 'F2', reformers = {'LAlt'}}},			down = iCommandViewLocal,														name = _('F2 Toggle local camera control'),						category = _('View')},
{combos = {{key = 'F3'}},								down = iCommandViewTower,														name = _('F3 Fly-By view'),										category = _('View')},
{combos = {{key = 'F3', reformers = {'LCtrl'}}},		down = iCommandViewTowerJump,													name = _('F3 Fly-By jump view'),								category = _('View')},
{combos = {{key = 'F4'}},								down = iCommandViewRear,														name = _('F4 Look back view'),									category = _('View')},
{combos = {{key = 'F4', reformers = {'LCtrl'}}},		down = iCommandViewChase,														name = _('F4 Chase view'),										category = _('View')},
{combos = {{key = 'F4', reformers = {'LShift'}}},		down = iCommandViewChaseArcade,													name = _('F4 Arcade Chase view'),								category = _('View')},
{combos = {{key = 'F5'}},								down = iCommandViewFight,														name = _('F5 nearest AC view'),									category = _('View')},
{combos = {{key = 'F5', reformers = {'LCtrl'}}},		down = iCommandViewFightGround,													name = _('F5 Ground hostile view'),								category = _('View')},
{combos = {{key = 'F6'}},								down = iCommandViewWeapons,														name = _('F6 Released weapon view'),							category = _('View')},
{combos = {{key = 'F6', reformers = {'LCtrl'}}},		down = iCommandViewWeaponAndTarget,												name = _('F6 Weapon to target view'),							category = _('View')},
{combos = {{key = 'F7'}},								down = iCommandViewGround,														name = _('F7 Ground unit view'),								category = _('View')},
{combos = {{key = 'F8'}},								down = iCommandViewTargets,														name = _('F8 Target view'),										category = _('View')},
{combos = {{key = 'F8', reformers = {'RCtrl'}}},		down = iCommandViewTargetType,													name = _('F8 Player targets/All targets filter'),				category = _('View')},
{combos = {{key = 'F9'}},								down = iCommandViewNavy,														name = _('F9 Ship view'),										category = _('View')},
{combos = {{key = 'F9', reformers = {'LAlt'}}},			down = iCommandViewLndgOfficer,													name = _('F9 Landing signal officer view'),						category = _('View')},
{combos = {{key = 'F10'}},								down = iCommandViewAWACS,														name = _('F10 Theater map view'),								category = _('View')},
{combos = {{key = 'F10', reformers = {'LCtrl'}}},		down = iCommandViewAWACSJump,													name = _('F10 Jump to theater map view over current point'),	category = _('View')},
{combos = {{key = 'F11'}},								down = iCommandViewFree,														name = _('F11 Airport free camera'),							category = _('View')},
{combos = {{key = 'F11', reformers = {'LCtrl'}}},		down = iCommandViewFreeJump,													name = _('F11 Jump to free camera'),							category = _('View')},
{combos = {{key = 'F12'}},								down = iCommandViewStatic,														name = _('F12 Static object view'),								category = _('View')},
{combos = {{key = 'F12', reformers = {'LCtrl'}}},		down = iCommandViewMirage,														name = _('F12 Civil traffic view'),								category = _('View')},
{combos = {{key = 'F12', reformers = {'LShift'}}},		down = iCommandViewLocomotivesToggle,											name = _('F12 Trains/cars toggle'),								category = _('View')},
{combos = {{key = 'F1', reformers = {'LWin'}}},			down = iCommandViewPitHeadOnOff,												name = _('F1 Head shift movement on / off'),					category = _('View')},

{combos = {{key = ']', reformers = {'LShift'}}},		down = iCommandViewFastKeyboard,												name = _('Keyboard Rate Fast'),									category = _('View')},
{combos = {{key = ']', reformers = {'LCtrl'}}},			down = iCommandViewSlowKeyboard,												name = _('Keyboard Rate Slow'),									category = _('View')},
{combos = {{key = ']', reformers = {'LAlt'}}},			down = iCommandViewNormalKeyboard,												name = _('Keyboard Rate Normal'),								category = _('View')},
{combos = {{key = '[', reformers = {'LShift'}}},		down = iCommandViewFastMouse,													name = _('Mouse Rate Fast'),									category = _('View')},
{combos = {{key = '[', reformers = {'LCtrl'}}},			down = iCommandViewSlowMouse,													name = _('Mouse Rate Slow'),									category = _('View')},
{combos = {{key = '[', reformers = {'LAlt'}}},			down = iCommandViewNormalMouse,													name = _('Mouse Rate Normal'),									category = _('View')},
{combos = {{key = 'T', reformers = {'LCtrl', 'LShift'}}},	down = iCommandflushTaxiData,												name = _('Flush taxi data'),									category = _('View')},

-- Cockpit view
{combos = {{key = 'L', reformers = {'LAlt'}}},				down = 3256,	cockpit_device_id = 0,	value_down = 1.0,						name = _('Flashlight'),						category = _('View Cockpit')},

{combos = {{key = 'Num0'}},									down = iCommandViewTempCockpitOn,		up = iCommandViewTempCockpitOff,		name = _('Cockpit panel view in'),			category = _('View Cockpit')},
{combos = {{key = 'Num0', reformers = {'RCtrl'}}},			down = iCommandViewTempCockpitToggle,											name = _('Cockpit panel view toggle'),		category = _('View Cockpit')},
--// Save current cockpit camera angles for fast numpad jumps
{combos = {{key = 'Num0', reformers = {'RAlt'}}},			down = iCommandViewSaveAngles,													name = _('Save Cockpit Angles'),			category = _('View Cockpit')},
{combos = {{key = 'Num8', reformers = {'RShift'}}},			pressed = iCommandViewUp,					up = iCommandViewStop,				name = _('View up'),						category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RShift'}}},			pressed = iCommandViewDown,					up = iCommandViewStop,				name = _('View down'),						category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RShift'}}},			pressed = iCommandViewLeft,					up = iCommandViewStop,				name = _('View left'),						category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RShift'}}},			pressed = iCommandViewRight,				up = iCommandViewStop,				name = _('View right'),						category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RShift'}}},			pressed = iCommandViewUpRight,				up = iCommandViewStop,				name = _('View up right'),					category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RShift'}}},			pressed = iCommandViewDownRight,			up = iCommandViewStop,				name = _('View down right'),				category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RShift'}}},			pressed = iCommandViewDownLeft,				up = iCommandViewStop,				name = _('View down left'),					category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RShift'}}},			pressed = iCommandViewUpLeft,				up = iCommandViewStop,				name = _('View up left'),					category = _('View Cockpit')},

-- Cockpit Camera Motion (Передвижение камеры в кабине)
{combos = {{key = 'Num8', reformers = {'RCtrl','RShift'}}},	pressed = iCommandViewPitCameraMoveUp,		up = iCommandViewPitCameraMoveStop,	name = _('Cockpit Camera Move Up'),			category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RCtrl','RShift'}}},	pressed = iCommandViewPitCameraMoveDown,	up = iCommandViewPitCameraMoveStop,	name = _('Cockpit Camera Move Down'),		category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RCtrl','RShift'}}},	pressed = iCommandViewPitCameraMoveLeft,	up = iCommandViewPitCameraMoveStop,	name = _('Cockpit Camera Move Left'),		category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RCtrl','RShift'}}},	pressed = iCommandViewPitCameraMoveRight,	up = iCommandViewPitCameraMoveStop,	name = _('Cockpit Camera Move Right'),		category = _('View Cockpit')},
{combos = {{key = 'Num*', reformers = {'RCtrl','RShift'}}},	pressed = iCommandViewPitCameraMoveForward,	up = iCommandViewPitCameraMoveStop,	name = _('Cockpit Camera Move Forward'),	category = _('View Cockpit')},
{combos = {{key = 'Num/', reformers = {'RCtrl','RShift'}}, {key = 'Num-', reformers = {'RCtrl','RShift'}}},	pressed = iCommandViewPitCameraMoveBack,	up = iCommandViewPitCameraMoveStop,	name = _('Cockpit Camera Move Back'),	category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RCtrl','RShift'}}},	down = iCommandViewPitCameraMoveCenter,											name = _('Cockpit Camera Move Center'),		category = _('View Cockpit')},

{combos = {{key = 'Num8', reformers = {'RCtrl'}}},			down = iCommandViewCameraUp,				up = iCommandViewCameraCenter,		name = _('Glance up'),						category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RCtrl'}}},			down = iCommandViewCameraDown,				up = iCommandViewCameraCenter,		name = _('Glance down'),					category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RCtrl'}}},			down = iCommandViewCameraLeft,				up = iCommandViewCameraCenter,		name = _('Glance left'),					category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RCtrl'}}},			down = iCommandViewCameraRight,				up = iCommandViewCameraCenter,		name = _('Glance right'),					category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RCtrl'}}},			down = iCommandViewCameraUpLeft,			up = iCommandViewCameraCenter,		name = _('Glance up-left'),					category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RCtrl'}}},			down = iCommandViewCameraDownLeft,			up = iCommandViewCameraCenter,		name = _('Glance down-left'),				category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RCtrl'}}},			down = iCommandViewCameraUpRight,			up = iCommandViewCameraCenter,		name = _('Glance up-right'),				category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RCtrl'}}},			down = iCommandViewCameraDownRight,			up = iCommandViewCameraCenter,		name = _('Glance down-right'),				category = _('View Cockpit')},
{combos = {{key = 'Z', reformers = {'LAlt','LShift'}}},		down = iCommandViewPanToggle,													name = _('Camera pan mode toggle'),			category = _('View Cockpit')},

{combos = {{key = 'Num8', reformers = {'RAlt'}}},			down = iCommandViewCameraUpSlow,												name = _('Camera snap view up'),			category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RAlt'}}},			down = iCommandViewCameraDownSlow,												name = _('Camera snap view down'),			category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RAlt'}}},			down = iCommandViewCameraLeftSlow,												name = _('Camera snap view left'),			category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RAlt'}}},			down = iCommandViewCameraRightSlow,												name = _('Camera snap view right'),			category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RAlt'}}},			down = iCommandViewCameraUpLeftSlow,											name = _('Camera snap view up-left'),		category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RAlt'}}},			down = iCommandViewCameraDownLeftSlow,											name = _('Camera snap view down-left'),		category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RAlt'}}},			down = iCommandViewCameraUpRightSlow,											name = _('Camera snap view up-right'),		category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RAlt'}}},			down = iCommandViewCameraDownRightSlow,											name = _('Camera snap view down-right'),	category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RShift'}}},			down = iCommandViewCameraCenter,												name = _('Center Camera View'),				category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RCtrl'}}},			down = iCommandViewCameraReturn,												name = _('Return Camera'),					category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RAlt'}}},			down = iCommandViewCameraBaseReturn,											name = _('Return Camera Base'),				category = _('View Cockpit')},

{combos = {{key = 'Num0', reformers = {'LWin'}}},			down = iCommandViewSnapView0,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  0'),			category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'LWin'}}},			down = iCommandViewSnapView1,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  1'),			category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'LWin'}}},			down = iCommandViewSnapView2,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  2'),			category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'LWin'}}},			down = iCommandViewSnapView3,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  3'),			category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'LWin'}}},			down = iCommandViewSnapView4,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  4'),			category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'LWin'}}},			down = iCommandViewSnapView5,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  5'),			category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'LWin'}}},			down = iCommandViewSnapView6,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  6'),			category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'LWin'}}},			down = iCommandViewSnapView7,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  7'),			category = _('View Cockpit')},
{combos = {{key = 'Num8', reformers = {'LWin'}}},			down = iCommandViewSnapView8,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  8'),			category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'LWin'}}},			down = iCommandViewSnapView9,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  9'),			category = _('View Cockpit')},

{combos = {{key = 'Num*', reformers = {'RShift'}}},			pressed = iCommandViewForward,				up = iCommandViewForwardStop,		name = _('Zoom in'),						category = _('View Cockpit')},
{combos = {{key = 'Num/', reformers = {'RShift'}}},			pressed = iCommandViewBack,					up = iCommandViewBackStop,			name = _('Zoom out'),						category = _('View Cockpit')},

-- Extended view
{combos = {{key = 'J', reformers = {'LShift'}}},			down = iCommandViewCameraJiggle,	name = _('Camera jiggle toggle'),					category = _('View Extended'), features = {"Camera jiggle"}},
{combos = {{key = 'K', reformers = {'LAlt'}}},				down = iCommandViewKeepTerrain,		name = _('Keep terrain camera altitude'),			category = _('View Extended')},
--{combos = {{key = 'Home', reformers = {'RCtrl','RShift'}}},	down = iCommandViewFriends,			name = _('View friends mode'),						category = _('View Extended')},
{combos = {{key = 'End', reformers = {'RCtrl','RShift'}}},	down = iCommandViewEnemies,			name = _('View enemies mode'),						category = _('View Extended')},
{combos = {{key = 'Delete', reformers = {'RCtrl'}}},		down = iCommandViewAll,				name = _('View all mode'),							category = _('View Extended')},
{combos = {{key = 'Num+', reformers = {'RCtrl'}}},			down = iCommandViewPlus,			name = _('Toggle tracking launched weapon'),		category = _('View Extended')},
{combos = {{key = 'PageDown', reformers = {'LCtrl'}}},		down = iCommandViewSwitchForward,	name = _('Objects switching direction forward '),	category = _('View Extended')},
{combos = {{key = 'PageUp', reformers = {'LCtrl'}}},		down = iCommandViewSwitchReverse,	name = _('Objects switching direction reverse '),	category = _('View Extended')},
{combos = {{key = 'Delete', reformers = {'LAlt'}}},			down = iCommandViewObjectIgnore,	name = _('Object exclude '),						category = _('View Extended')},
{combos = {{key = 'Insert', reformers = {'LAlt'}}},			down = iCommandViewObjectsAll,		name = _('Objects all excluded - include'),			category = _('View Extended')},

-- Padlock
{combos = {{key = 'Num.'}},							down = iCommandViewLock,				name = _('Lock View (cycle padlock)'),	category = _('View Padlock')},
{combos = {{key = 'NumLock'}},						down = iCommandViewUnlock,				name = _('Unlock view (stop padlock)'),	category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RShift'}}},	down = iCommandAllMissilePadlock,		name = _('All missiles padlock'),		category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RAlt'}}},	down = iCommandThreatMissilePadlock,	name = _('Threat missile padlock'),		category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RCtrl'}}},	down = iCommandViewTerrainLock,			name = _('Lock terrain view'),			category = _('View Padlock')},

-- Labels
{combos = {{key = 'F10', reformers = {'LShift'}}},	down = iCommandMarkerState,				name = _('All Labels'),					category = _('Labels')},
{combos = {{key = 'F2', reformers = {'LShift'}}},	down = iCommandMarkerStatePlane,		name = _('Aircraft Labels'),			category = _('Labels')},
{combos = {{key = 'F6', reformers = {'LShift'}}},	down = iCommandMarkerStateRocket,		name = _('Missile Labels'),				category = _('Labels')},
{combos = {{key = 'F9', reformers = {'LShift'}}},	down = iCommandMarkerStateShip,			name = _('Vehicle & Ship Labels'),		category = _('Labels')},

--Kneeboard
{combos = {{key = 'K', reformers = {'RShift'}}},	down = iCommandPlaneShowKneeboard,																				name = _('Kneeboard ON/OFF'),						category = _('Kneeboard')},
{combos = {{key = 'K'}},							down = iCommandPlaneShowKneeboard,	up = iCommandPlaneShowKneeboard,	value_down = 1.0,	value_up = -1.0,	name = _('Kneeboard glance view'),					category = _('Kneeboard')},
{combos = {{key = ']'}},							down = 3001,	cockpit_device_id = kneeboard_id,						value_down = 1.0,						name = _('Kneeboard Next Page'),					category = _('Kneeboard')},
{combos = {{key = '['}},							down = 3002,	cockpit_device_id = kneeboard_id,						value_down = 1.0,						name = _('Kneeboard Previous Page'),				category = _('Kneeboard')},
{combos = {{key = 'K', reformers = {'RCtrl'}}},		down = 3003,	cockpit_device_id = kneeboard_id,						value_down = 1.0,						name = _('Kneeboard current position mark point'),	category = _('Kneeboard')},
--shortcuts navigation
{													down = 3004,	cockpit_device_id = kneeboard_id,						value_down =  1.0,						name = _('Kneeboard Make Shortcut'),				category = _('Kneeboard')},
{													down = 3005,	cockpit_device_id = kneeboard_id,						value_down =  1.0,						name = _('Kneeboard Next Shortcut'),				category = _('Kneeboard')},
{													down = 3005,	cockpit_device_id = kneeboard_id,						value_down = -1.0,						name = _('Kneeboard Previous Shortcut'),			category = _('Kneeboard')},
{													down = 3006,	cockpit_device_id = kneeboard_id,						value_down = 0,							name = _('Kneeboard Jump To Shortcut  1'),			category = _('Kneeboard')},
{													down = 3006,	cockpit_device_id = kneeboard_id,						value_down = 1,							name = _('Kneeboard Jump To Shortcut  2'),			category = _('Kneeboard')},
{													down = 3006,	cockpit_device_id = kneeboard_id,						value_down = 2,							name = _('Kneeboard Jump To Shortcut  3'),			category = _('Kneeboard')},
{													down = 3006,	cockpit_device_id = kneeboard_id,						value_down = 3,							name = _('Kneeboard Jump To Shortcut  4'),			category = _('Kneeboard')},
{													down = 3006,	cockpit_device_id = kneeboard_id,						value_down = 4,							name = _('Kneeboard Jump To Shortcut  5'),			category = _('Kneeboard')},
{													down = 3006,	cockpit_device_id = kneeboard_id,						value_down = 5,							name = _('Kneeboard Jump To Shortcut  6'),			category = _('Kneeboard')},
{													down = 3006,	cockpit_device_id = kneeboard_id,						value_down = 6,							name = _('Kneeboard Jump To Shortcut  7'),			category = _('Kneeboard')},
{													down = 3006,	cockpit_device_id = kneeboard_id,						value_down = 7,							name = _('Kneeboard Jump To Shortcut  8'),			category = _('Kneeboard')},
{													down = 3006,	cockpit_device_id = kneeboard_id,						value_down = 8,							name = _('Kneeboard Jump To Shortcut  9'),			category = _('Kneeboard')},
{													down = 3006,	cockpit_device_id = kneeboard_id,						value_down = 9,							name = _('Kneeboard Jump To Shortcut 10'),			category = _('Kneeboard')},


-- Communications
{combos = {{key = 'I', reformers = {'LWin'}}},											down = iCommandAWACSTankerBearing,	name = _('Request AWACS Available Tanker'),	category = _('Communications')},
{combos = {{key = '\\', reformers = {'RShift'}}, {key = 'M', reformers = {'RShift'}}},	down = iCommandToggleReceiveMode,	name = _('Receive Mode'),					category = _('Communications')},

-- Cockpit Camera Motion (Передвижение камеры в кабине)
{combos = {{key = 'M' }}, down = iCommandToggleMirrors,	name = _('Toggle Plat Cam'), category = _('Deck View') , features = {"Mirrors"}},

-- Auto Lock On 
{combos = {{key = 'F5', reformers = {'RAlt'}}},		down = iCommandAutoLockOnNearestAircraft,		name = _('Auto lock on nearest aircraft'),			category = _('Simplifications')},
{combos = {{key = 'F6', reformers = {'RAlt'}}},		down = iCommandAutoLockOnCenterAircraft,		name = _('Auto lock on center aircraft'),			category = _('Simplifications')},
{combos = {{key = 'F7', reformers = {'RAlt'}}},		down = iCommandAutoLockOnNextAircraft,			name = _('Auto lock on next aircraft'),				category = _('Simplifications')},
{combos = {{key = 'F8', reformers = {'RAlt'}}},		down = iCommandAutoLockOnPreviousAircraft,		name = _('Auto lock on previous aircraft'),			category = _('Simplifications')},
{combos = {{key = 'F9', reformers = {'RAlt'}}},		down = iCommandAutoLockOnNearestSurfaceTarget,	name = _('Auto lock on nearest surface target'),	category = _('Simplifications')},
{combos = {{key = 'F10', reformers = {'RAlt'}}},	down = iCommandAutoLockOnCenterSurfaceTarget,	name = _('Auto lock on center surface target'),		category = _('Simplifications')},
{combos = {{key = 'F11', reformers = {'RAlt'}}},	down = iCommandAutoLockOnNextSurfaceTarget,		name = _('Auto lock on next surface target'),		category = _('Simplifications')},
{combos = {{key = 'F12', reformers = {'RAlt'}}},	down = iCommandAutoLockOnPreviousSurfaceTarget, name = _('Auto lock on previous surface target'),	category = _('Simplifications')},

----------------------------------------- end common keyboard bindings ---------------------------------------------------

},
}