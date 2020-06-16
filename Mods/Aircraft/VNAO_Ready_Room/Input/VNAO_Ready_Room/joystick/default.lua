local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

local kneeboard_id = 100
if devices and devices.KNEEBOARD then
   kneeboard_id = devices.KNEEBOARD
end

return {
--[[
forceFeedback = {
    trimmer = 1.0,
    shake = 0.5,
    swapAxes = false,
    invertX = false,
    invertY = false,
},]]

keyCommands = {


---- Multicrew ------
{	down = iCommandViewCockpitChangeSeat, value_down = 1, name = _('Occupy Briefing Podium'),		category = _('Multicrew')},
{	down = iCommandViewCockpitChangeSeat, value_down = 2, name = _('Occupy Briefing Seat 01'),		category = _('Multicrew')},
{	down = iCommandViewCockpitChangeSeat, value_down = 3, name = _('Occupy Briefing Seat 02'),		category = _('Multicrew')},
{	down = iCommandViewCockpitChangeSeat, value_down = 4, name = _('Occupy Briefing Seat 03'),		category = _('Multicrew')},
{	down = iCommandViewCockpitChangeSeat, value_down = 5, name = _('Occupy Briefing Seat 04'),		category = _('Multicrew')},
{	down = iCommandViewCockpitChangeSeat, value_down = 6, name = _('Occupy Briefing Seat 05'),		category = _('Multicrew')},
{	down = iCommandViewCockpitChangeSeat, value_down = 7, name = _('Occupy Briefing Seat 06'),		category = _('Multicrew')},
{	down = iCommandViewCockpitChangeSeat, value_down = 8, name = _('Occupy Briefing Seat 07'),		category = _('Multicrew')},
{	down = iCommandViewCockpitChangeSeat, value_down = 9, name = _('Occupy Briefing Seat 08'),		category = _('Multicrew')},
{	down = iCommandViewCockpitChangeSeat, value_down = 10, name = _('Occupy Briefing Seat 09'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 11, name = _('Occupy Briefing Seat 10'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 12, name = _('Occupy Briefing Seat 11'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 13, name = _('Occupy Briefing Seat 12'),		category = _('Multicrew')},
{ down = iCommandViewCockpitChangeSeat, value_down = 14, name = _('Occupy Briefing Seat 13'),		category = _('Multicrew')},
{ down = iCommandViewCockpitChangeSeat, value_down = 15, name = _('Occupy Briefing Seat 14'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 16, name = _('Occupy Briefing Seat 15'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 17, name = _('Occupy Briefing Seat 16'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 18, name = _('Occupy Briefing Seat 17'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 19, name = _('Occupy Briefing Seat 18'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 20, name = _('Occupy Briefing Seat 19'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 21, name = _('Occupy Briefing Seat 20'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 22, name = _('Occupy Briefing Seat 21'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 23, name = _('Occupy Briefing Seat 22'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 24, name = _('Occupy Briefing Seat 23'),		category = _('Multicrew')},
{  down = iCommandViewCockpitChangeSeat, value_down = 25, name = _('Occupy Briefing Seat 24'),		category = _('Multicrew')},
{down = iCommandNetCrewRequestControl,				name = _('Request Aircraft Control'),category = _('Multicrew')},

{down = device_commands.PreviousSlide,  name = _('Previous Slide'), category = _('Projection Screen')},
{down = device_commands.NextSlide,  name = _('Next Slide'), category = _('Projection Screen')},

{ down = device_commands.Lights,  name = _('Room Lights On/Off'), category = _('General')},
----------------------------------------- From common keyboard bindings lua ----------------------------------------------------------------------------------------------------
-- Debug
--{	down = ICommandToggleConsole,	name = _('Toggle Console'),		category = _('Debug')},
--{	down = iCommandMissionRestart,	name = _('Restart Mission'),	category = _('Debug')},

-- General (Gameplay)
{									down = iCommandQuit,							name = _('End mission'),							category = _('General')},
{									down = iCommandBrakeGo,							name = _('Pause'),									category = _('General')},
{				down = iCommandAccelerate,						name = _('Time accelerate'),						category = _('General')},
{				down = iCommandDecelerate,						name = _('Time decelerate'),						category = _('General')},
{				down = iCommandNoAcceleration,					name = _('Time normal'),							category = _('General')},
{								down = iCommandScoresWindowToggle,				name = _('Score window'),							category = _('General')},

{				down = iCommandInfoOnOff,						name = _('Info bar view toggle'),					category = _('General')},
{	down = iCommandRecoverHuman,					name = _('Get new plane - respawn'),				category = _('General')},
{				down = iCommandPlaneJump,						name = _('Jump into selected aircraft'),			category = _('General')},
{					down = iCommandScreenShot,						name = _('Screenshot'),								category = _('General'), disabled = true},
{			down = iCommandGraphicsFrameRate,				name = _('Frame rate counter - Service info'),		category = _('General')},
{				down = iCommandViewCoordinatesInLinearUnits,	name = _('Info bar coordinate units toggle'),		category = _('General')},
{				down = iCommandCockpitClickModeOnOff,			name = _('Clickable mouse cockpit mode On/Off'),	category = _('General')},
{				down = iCommandSoundOnOff,						name = _('Sound On/Off'),							category = _('General')},
{				down = iCommandMissionResourcesManagement,		name = _('Rearming and Refueling Window'),			category = _('General')},
{				down = iCommandViewBriefing,					name = _('View briefing on/off'),					category = _('General')},
{	down = iCommandActivePauseOnOff,				name = _('Active Pause'),							category = _('Cheat')},
{			down = iCommandPlane_ShowControls,				name = _('Show controls indicator'),				category = _('General')},

-- Communications
{				down = iCommandPlaneDoAndHome,					name = _('Flight - Complete mission and RTB'),		category = _('Communications')},
{																down = iCommandPlaneReturnToBase,				name = _('Flight - RTB'),							category = _('Communications')},
{				down = iCommandPlaneDoAndBack,					name = _('Flight - Complete mission and rejoin'),	category = _('Communications')},
{					down = iCommandPlaneFormation,					name = _('Toggle Formation'),						category = _('Communications')},
{					down = iCommandPlaneJoinUp,						name = _('Join Up Formation'),						category = _('Communications')},
{				down = iCommandPlaneAttackMyTarget,				name = _('Attack My Target'),						category = _('Communications')},
{					down = iCommandPlaneCoverMySix,					name = _('Cover Me'),								category = _('Communications')},
{					down = iCommandAWACSHomeBearing,				name = _('Request AWACS Home Airbase'),				category = _('Communications')},
{					down = iCommandAWACSBanditBearing,				name = _('Request AWACS Bogey Dope'),				category = _('Communications')},
{				down = iCommandPlane_EngageGroundTargets,		name = _('Flight - Attack ground targets'),			category = _('Communications')},
{				down = iCommandPlane_EngageAirDefenses,			name = _('Flight - Attack air defenses'),			category = _('Communications')},
{				down = iCommandPlane_EngageBandits,				name = _('Flight - Engage Bandits'),				category = _('Communications')},
{										down = iCommandToggleCommandMenu,				name = _('Communication menu'),						category = _('Communications')},
{			down = ICommandSwitchDialog,					name = _('Switch dialog'),							category = _('Communications')},
{			down = ICommandSwitchToCommonDialog,			name = _('Switch to main menu'),					category = _('Communications')},

-- View
{							pressed = iCommandViewLeftSlow,			up = iCommandViewStopSlow,				name = _('View Left slow'),										category = _('View')},
{							pressed = iCommandViewRightSlow,		up = iCommandViewStopSlow,				name = _('View Right slow'),									category = _('View')},
{							pressed = iCommandViewUpSlow,			up = iCommandViewStopSlow,				name = _('View Up slow'),										category = _('View')},
{							pressed = iCommandViewDownSlow,			up = iCommandViewStopSlow,				name = _('View Down slow'),										category = _('View')},
{							pressed = iCommandViewUpRightSlow,		up = iCommandViewStopSlow,				name = _('View Up Right slow'),									category = _('View')},
{						pressed = iCommandViewDownRightSlow,	up = iCommandViewStopSlow,				name = _('View Down Right slow'),								category = _('View')},
{								pressed = iCommandViewDownLeftSlow,		up = iCommandViewStopSlow,				name = _('View Down Left slow'),								category = _('View')},
{							pressed = iCommandViewUpLeftSlow,		up = iCommandViewStopSlow,				name = _('View Up Left slow'),									category = _('View')},
{							pressed = iCommandViewCenter,													name = _('View Center'),										category = _('View')},

{							pressed = iCommandViewForwardSlow,		up = iCommandViewForwardSlowStop,		name = _('Zoom in slow'),										category = _('View')},
{							pressed = iCommandViewBackSlow,			up = iCommandViewBackSlowStop,			name = _('Zoom out slow'),										category = _('View')},
{						down = iCommandViewAngleDefault,												name = _('Zoom normal'),										category = _('View')},
{		pressed = iCommandViewExternalZoomIn,	up = iCommandViewExternalZoomInStop,	name = _('Zoom external in'),									category = _('View')},
{		pressed = iCommandViewExternalZoomOut,	up = iCommandViewExternalZoomOutStop,	name = _('Zoom external out'),									category = _('View')},
{	down = iCommandViewExternalZoomDefault,											name = _('Zoom external normal'),								category = _('View')},
{	down = iCommandViewSpeedUp,														name = _('F11 Camera moving forward'),							category = _('View')},
{	down = iCommandViewSlowDown,													name = _('F11 Camera moving backward'),							category = _('View')},

{							down = iCommandViewCockpit,														name = _('F1 Cockpit view'),									category = _('View')},
{	down = iCommandNaturalViewCockpitIn,											name = _('F1 Natural head movement view'),						category = _('View')},
{		down = iCommandViewHUDOnlyOnOff,												name = _('F1 HUD only view switch'),							category = _('View')},
{								down = iCommandViewAir,															name = _('F2 Aircraft view'),									category = _('View')},
{	down = iCommandViewMe,															name = _('F2 View own aircraft'),								category = _('View')},
{		down = iCommandViewFromTo,														name = _('F2 Toggle camera position'),							category = _('View')},
{		down = iCommandViewLocal,														name = _('F2 Toggle local camera control'),						category = _('View')},
{								down = iCommandViewTower,														name = _('F3 Fly-By view'),										category = _('View')},
{		down = iCommandViewTowerJump,													name = _('F3 Fly-By jump view'),								category = _('View')},
{								down = iCommandViewRear,														name = _('F4 Look back view'),									category = _('View')},
{		down = iCommandViewChase,														name = _('F4 Chase view'),										category = _('View')},
{	down = iCommandViewChaseArcade,													name = _('F4 Arcade Chase view'),								category = _('View')},
{							down = iCommandViewFight,														name = _('F5 nearest AC view'),									category = _('View')},
{	down = iCommandViewFightGround,													name = _('F5 Ground hostile view'),								category = _('View')},
{								down = iCommandViewWeapons,														name = _('F6 Released weapon view'),							category = _('View')},
{	down = iCommandViewWeaponAndTarget,												name = _('F6 Weapon to target view'),							category = _('View')},
{								down = iCommandViewGround,														name = _('F7 Ground unit view'),								category = _('View')},
{								down = iCommandViewTargets,														name = _('F8 Target view'),										category = _('View')},
{		down = iCommandViewTargetType,													name = _('F8 Player targets/All targets filter'),				category = _('View')},
{								down = iCommandViewNavy,														name = _('F9 Ship view'),										category = _('View')},
{			down = iCommandViewLndgOfficer,													name = _('F9 Landing signal officer view'),						category = _('View')},
{							down = iCommandViewAWACS,														name = _('F10 Theater map view'),								category = _('View')},
{		down = iCommandViewAWACSJump,													name = _('F10 Jump to theater map view over current point'),	category = _('View')},
{								down = iCommandViewFree,														name = _('F11 Airport free camera'),							category = _('View')},
{		down = iCommandViewFreeJump,													name = _('F11 Jump to free camera'),							category = _('View')},
{							down = iCommandViewStatic,														name = _('F12 Static object view'),								category = _('View')},
{		down = iCommandViewMirage,														name = _('F12 Civil traffic view'),								category = _('View')},
{	down = iCommandViewLocomotivesToggle,											name = _('F12 Trains/cars toggle'),								category = _('View')},
{		down = iCommandViewPitHeadOnOff,												name = _('F1 Head shift movement on / off'),					category = _('View')},

{		down = iCommandViewFastKeyboard,												name = _('Keyboard Rate Fast'),									category = _('View')},
{			down = iCommandViewSlowKeyboard,												name = _('Keyboard Rate Slow'),									category = _('View')},
{			down = iCommandViewNormalKeyboard,												name = _('Keyboard Rate Normal'),								category = _('View')},
{		down = iCommandViewFastMouse,													name = _('Mouse Rate Fast'),									category = _('View')},
{		down = iCommandViewSlowMouse,													name = _('Mouse Rate Slow'),									category = _('View')},
{			down = iCommandViewNormalMouse,													name = _('Mouse Rate Normal'),									category = _('View')},
{	down = iCommandflushTaxiData,												name = _('Flush taxi data'),									category = _('View')},

-- Cockpit view
{			down = 3256,	cockpit_device_id = 0,	value_down = 1.0,						name = _('Flashlight'),						category = _('View Cockpit')},

{								down = iCommandViewTempCockpitOn,		up = iCommandViewTempCockpitOff,		name = _('Cockpit panel view in'),			category = _('View Cockpit')},
{		down = iCommandViewTempCockpitToggle,											name = _('Cockpit panel view toggle'),		category = _('View Cockpit')},
--// Save current cockpit camera angles for fast numpad jumps
{			down = iCommandViewSaveAngles,													name = _('Save Cockpit Angles'),			category = _('View Cockpit')},
{			pressed = iCommandViewUp,					up = iCommandViewStop,				name = _('View up'),						category = _('View Cockpit')},
{		pressed = iCommandViewDown,					up = iCommandViewStop,				name = _('View down'),						category = _('View Cockpit')},
{		pressed = iCommandViewLeft,					up = iCommandViewStop,				name = _('View left'),						category = _('View Cockpit')},
{		pressed = iCommandViewRight,				up = iCommandViewStop,				name = _('View right'),						category = _('View Cockpit')},
{		pressed = iCommandViewUpRight,				up = iCommandViewStop,				name = _('View up right'),					category = _('View Cockpit')},
{		pressed = iCommandViewDownRight,			up = iCommandViewStop,				name = _('View down right'),				category = _('View Cockpit')},
{		pressed = iCommandViewDownLeft,				up = iCommandViewStop,				name = _('View down left'),					category = _('View Cockpit')},
{		pressed = iCommandViewUpLeft,				up = iCommandViewStop,				name = _('View up left'),					category = _('View Cockpit')},

-- Cockpit Camera Motion (Передвижение камеры в кабине)
{	pressed = iCommandViewPitCameraMoveUp,		up = iCommandViewPitCameraMoveStop,	name = _('Cockpit Camera Move Up'),			category = _('View Cockpit')},
{	pressed = iCommandViewPitCameraMoveDown,	up = iCommandViewPitCameraMoveStop,	name = _('Cockpit Camera Move Down'),		category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveLeft,	up = iCommandViewPitCameraMoveStop,	name = _('Cockpit Camera Move Left'),		category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveRight,	up = iCommandViewPitCameraMoveStop,	name = _('Cockpit Camera Move Right'),		category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveForward,	up = iCommandViewPitCameraMoveStop,	name = _('Cockpit Camera Move Forward'),	category = _('View Cockpit')},
{	pressed = iCommandViewPitCameraMoveBack,	up = iCommandViewPitCameraMoveStop,	name = _('Cockpit Camera Move Back'),	category = _('View Cockpit')},
{	down = iCommandViewPitCameraMoveCenter,											name = _('Cockpit Camera Move Center'),		category = _('View Cockpit')},

{		down = iCommandViewCameraUp,				up = iCommandViewCameraCenter,		name = _('Glance up'),						category = _('View Cockpit')},
{			down = iCommandViewCameraDown,				up = iCommandViewCameraCenter,		name = _('Glance down'),					category = _('View Cockpit')},
{		down = iCommandViewCameraLeft,				up = iCommandViewCameraCenter,		name = _('Glance left'),					category = _('View Cockpit')},
{			down = iCommandViewCameraRight,				up = iCommandViewCameraCenter,		name = _('Glance right'),					category = _('View Cockpit')},
{			down = iCommandViewCameraUpLeft,			up = iCommandViewCameraCenter,		name = _('Glance up-left'),					category = _('View Cockpit')},
{			down = iCommandViewCameraDownLeft,			up = iCommandViewCameraCenter,		name = _('Glance down-left'),				category = _('View Cockpit')},
{			down = iCommandViewCameraUpRight,			up = iCommandViewCameraCenter,		name = _('Glance up-right'),				category = _('View Cockpit')},
{		down = iCommandViewCameraDownRight,			up = iCommandViewCameraCenter,		name = _('Glance down-right'),				category = _('View Cockpit')},
{		down = iCommandViewPanToggle,													name = _('Camera pan mode toggle'),			category = _('View Cockpit')},

{			down = iCommandViewCameraUpSlow,												name = _('Camera snap view up'),			category = _('View Cockpit')},
{			down = iCommandViewCameraDownSlow,												name = _('Camera snap view down'),			category = _('View Cockpit')},
{			down = iCommandViewCameraLeftSlow,												name = _('Camera snap view left'),			category = _('View Cockpit')},
{		down = iCommandViewCameraRightSlow,												name = _('Camera snap view right'),			category = _('View Cockpit')},
{		down = iCommandViewCameraUpLeftSlow,											name = _('Camera snap view up-left'),		category = _('View Cockpit')},
{		down = iCommandViewCameraDownLeftSlow,											name = _('Camera snap view down-left'),		category = _('View Cockpit')},
{			down = iCommandViewCameraUpRightSlow,											name = _('Camera snap view up-right'),		category = _('View Cockpit')},
{		down = iCommandViewCameraDownRightSlow,											name = _('Camera snap view down-right'),	category = _('View Cockpit')},
{	down = iCommandViewCameraCenter,												name = _('Center Camera View'),				category = _('View Cockpit')},
{		down = iCommandViewCameraReturn,												name = _('Return Camera'),					category = _('View Cockpit')},
{		down = iCommandViewCameraBaseReturn,											name = _('Return Camera Base'),				category = _('View Cockpit')},

{			down = iCommandViewSnapView0,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  0'),			category = _('View Cockpit')},
{			down = iCommandViewSnapView1,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  1'),			category = _('View Cockpit')},
{			down = iCommandViewSnapView2,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  2'),			category = _('View Cockpit')},
{			down = iCommandViewSnapView3,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  3'),			category = _('View Cockpit')},
{			down = iCommandViewSnapView4,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  4'),			category = _('View Cockpit')},
{		down = iCommandViewSnapView5,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  5'),			category = _('View Cockpit')},
{		down = iCommandViewSnapView6,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  6'),			category = _('View Cockpit')},
{			down = iCommandViewSnapView7,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  7'),			category = _('View Cockpit')},
{			down = iCommandViewSnapView8,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  8'),			category = _('View Cockpit')},
{			down = iCommandViewSnapView9,				up = iCommandViewSnapViewStop,		name = _('Custom Snap View  9'),			category = _('View Cockpit')},

{		pressed = iCommandViewForward,				up = iCommandViewForwardStop,		name = _('Zoom in'),						category = _('View Cockpit')},
{	pressed = iCommandViewBack,					up = iCommandViewBackStop,			name = _('Zoom out'),						category = _('View Cockpit')},

--[[ Extended view
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
]]

{down = iCommandToggleMirrors,	name = _('Toggle Plat Cam'),		category = _('Deck View') , features = {"Mirrors"}},

-- Padlock
{						down = iCommandViewLock,				name = _('Lock View (cycle padlock)'),	category = _('View Padlock')},
{						down = iCommandViewUnlock,				name = _('Unlock view (stop padlock)'),	category = _('View Padlock')},
{	down = iCommandAllMissilePadlock,		name = _('All missiles padlock'),		category = _('View Padlock')},
{	down = iCommandThreatMissilePadlock,	name = _('Threat missile padlock'),		category = _('View Padlock')},
{	down = iCommandViewTerrainLock,			name = _('Lock terrain view'),			category = _('View Padlock')},

	
},

-- joystick axis 
axisCommands = {

    {action = iCommandViewHorizontalAbs			, name = _('Absolute Camera Horizontal View')},
    {action = iCommandViewVerticalAbs			, name = _('Absolute Camera Vertical View')},
    {action = iCommandViewZoomAbs				, name = _('Zoom View')},
    {action = iCommandViewRollAbs 				, name = _('Absolute Roll Shift Camera View')},
    {action = iCommandViewHorTransAbs 			, name = _('Absolute Horizontal Shift Camera View')},
    {action = iCommandViewVertTransAbs 			, name = _('Absolute Vertical Shift Camera View')},
    {action = iCommandViewLongitudeTransAbs 	, name = _('Absolute Longitude Shift Camera View')},
--	{action = device_commands.Lights			, name = _('Room Lights On/Off')},

    -- from base_joystick_binding.lua...

	{action = device_commands.lightAxis, name = _('Lighting Axis')},

},
}

