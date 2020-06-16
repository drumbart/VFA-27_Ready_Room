dofile(LockOn_Options.common_script_path.."devices_defs.lua")
indicator_type  = indicator_types.COMMON
init_pageID     = 1
purposes 	   = {render_purpose.GENERAL,render_purpose.HUD_ONLY_VIEW}

--subset ids
BASE    = 1
SLIDE	= 2


page_subsets  = {
[BASE]    	= LockOn_Options.script_path.."SlideScreen/Indicator/base_page.lua",
[SLIDE]    	= LockOn_Options.script_path.."SlideScreen/Indicator/slide_page.lua",
}

pages ={{BASE,SLIDE},}