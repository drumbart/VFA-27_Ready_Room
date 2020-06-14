dofile(LockOn_Options.script_path.."SlideScreen/Indicator/definitions.lua")


Slide_01_page  	= MakeMaterial("slide_01",{255,255,255,255})
Slide_02_page  	= MakeMaterial("slide_02",{255,255,255,255}) 
Slide_03_page  	= MakeMaterial("slide_03",{255,255,255,255}) 
Slide_04_page  	= MakeMaterial("slide_04",{255,255,255,255}) 
Slide_05_page  	= MakeMaterial("slide_05",{255,255,255,255}) 
Slide_06_page  	= MakeMaterial("slide_06",{255,255,255,255}) 
Slide_07_page  	= MakeMaterial("slide_07",{255,255,255,255}) 
Slide_08_page  	= MakeMaterial("slide_08",{255,255,255,255}) 
Slide_09_page  	= MakeMaterial("slide_09",{255,255,255,255}) 
Slide_10_page  	= MakeMaterial("slide_10",{255,255,255,255})
Slide_11_page  	= MakeMaterial("slide_11",{255,255,255,255})
Slide_12_page  	= MakeMaterial("slide_12",{255,255,255,255}) 
Slide_13_page  	= MakeMaterial("slide_13",{255,255,255,255}) 
Slide_14_page  	= MakeMaterial("slide_14",{255,255,255,255}) 
Slide_15_page  	= MakeMaterial("slide_15",{255,255,255,255}) 
Slide_16_page  	= MakeMaterial("slide_16",{255,255,255,255}) 
Slide_17_page  	= MakeMaterial("slide_17",{255,255,255,255}) 
Slide_18_page  	= MakeMaterial("slide_18",{255,255,255,255}) 
Slide_19_page  	= MakeMaterial("slide_19",{255,255,255,255}) 
Slide_20_page  	= MakeMaterial("slide_20",{255,255,255,255}) 



local page1   		= CreateElement "ceTexPoly" 
page1.name 			= create_guid_string() 
page1.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page1.indices		= {0,1,2,2,3,0}
page1.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page1.material		= Slide_01_page	
page1.element_params = {"Slide_Number"} 
page1.controllers    = {{"parameter_in_range",0,0}}
--page1.parent_element = origin.name 
AddElement(page1)

local page2   		= CreateElement "ceTexPoly" 
page2.name 			= create_guid_string() 
page2.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page2.indices		= {0,1,2,2,3,0}
page2.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page2.material		= Slide_02_page	
page2.element_params = {"Slide_Number"} 
page2.controllers    = {{"parameter_in_range",0,0.05}}
--page2.parent_element = origin.name 
AddElement(page2)

local page3   		= CreateElement "ceTexPoly" 
page3.name 			= create_guid_string() 
page3.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page3.indices		= {0,1,2,2,3,0}
page3.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page3.material		= Slide_03_page	
page3.element_params = {"Slide_Number"} 
page3.controllers    = {{"parameter_in_range",0,0.1}}
--page3.parent_element = origin.name 
AddElement(page3)

local page4   		= CreateElement "ceTexPoly" 
page4.name 			= create_guid_string() 
page4.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page4.indices		= {0,1,2,2,3,0}
page4.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page4.material		= Slide_04_page	
page4.element_params = {"Slide_Number"} 
page4.controllers    = {{"parameter_in_range",0,0.15}}
--page4.parent_element = origin.name 
AddElement(page4)

local page5   		= CreateElement "ceTexPoly" 
page5.name 			= create_guid_string() 
page5.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page5.indices		= {0,1,2,2,3,0}
page5.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page5.material		= Slide_05_page	
page5.element_params = {"Slide_Number"} 
page5.controllers    = {{"parameter_in_range",0,0.2}}
--page5.parent_element = origin.name 
AddElement(page5)

local page6   		= CreateElement "ceTexPoly" 
page6.name 			= create_guid_string() 
page6.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page6.indices		= {0,1,2,2,3,0}
page6.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page6.material		= Slide_06_page	
page6.element_params = {"Slide_Number"} 
page6.controllers    = {{"parameter_in_range",0,0.25}}
--page6.parent_element = origin.name 
AddElement(page6)

local page7   		= CreateElement "ceTexPoly" 
page7.name 			= create_guid_string() 
page7.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page7.indices		= {0,1,2,2,3,0}
page7.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page7.material		= Slide_07_page	
page7.element_params = {"Slide_Number"} 
page7.controllers    = {{"parameter_in_range",0,0.3}}
--page7.parent_element = origin.name 
AddElement(page7)

local page8   		= CreateElement "ceTexPoly" 
page8.name 			= create_guid_string() 
page8.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page8.indices		= {0,1,2,2,3,0}
page8.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page8.material		= Slide_08_page	
page8.element_params = {"Slide_Number"} 
page8.controllers    = {{"parameter_in_range",0,0.35}}
--page8.parent_element = origin.name 
AddElement(page8)

local page9   		= CreateElement "ceTexPoly" 
page9.name 			= create_guid_string() 
page9.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page9.indices		= {0,1,2,2,3,0}
page9.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page9.material		= Slide_09_page	
page9.element_params = {"Slide_Number"} 
page9.controllers    = {{"parameter_in_range",0,0.4}}
--page9.parent_element = origin.name 
AddElement(page9)

local page10   		= CreateElement "ceTexPoly" 
page10.name 			= create_guid_string() 
page10.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page10.indices		= {0,1,2,2,3,0}
page10.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page10.material		= Slide_10_page	
page10.element_params = {"Slide_Number"} 
page10.controllers    = {{"parameter_in_range",0,0.45}}
--page10.parent_element = origin.name 
AddElement(page10)

local page11  		= CreateElement "ceTexPoly" 
page11.name 			= create_guid_string() 
page11.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page11.indices		= {0,1,2,2,3,0}
page11.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page11.material		= Slide_11_page	
page11.element_params = {"Slide_Number"} 
page11.controllers    = {{"parameter_in_range",0,0.5}}
--page11.parent_element = origin.name 
AddElement(page11)

local page12  		= CreateElement "ceTexPoly" 
page12.name 			= create_guid_string() 
page12.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page12.indices		= {0,1,2,2,3,0}
page12.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page12.material		= Slide_12_page	
page12.element_params = {"Slide_Number"} 
page12.controllers    = {{"parameter_in_range",0,0.55}}
--page12.parent_element = origin.name 
AddElement(page12)

local page13  		= CreateElement "ceTexPoly" 
page13.name 			= create_guid_string() 
page13.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page13.indices		= {0,1,2,2,3,0}
page13.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page13.material		= Slide_13_page	
page13.element_params = {"Slide_Number"} 
page13.controllers    = {{"parameter_in_range",0,0.6}}
--page13.parent_element = origin.name 
AddElement(page13)

local page14  		= CreateElement "ceTexPoly" 
page14.name 			= create_guid_string() 
page14.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page14.indices		= {0,1,2,2,3,0}
page14.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page14.material		= Slide_14_page	
page14.element_params = {"Slide_Number"} 
page14.controllers    = {{"parameter_in_range",0,0.65}}
--page14.parent_element = origin.name 
AddElement(page14)

local page15  		= CreateElement "ceTexPoly" 
page15.name 			= create_guid_string() 
page15.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page15.indices		= {0,1,2,2,3,0}
page15.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page15.material		= Slide_15_page	
page15.element_params = {"Slide_Number"} 
page15.controllers    = {{"parameter_in_range",0,0.7}}
--page15.parent_element = origin.name 
AddElement(page15)

local page16  		= CreateElement "ceTexPoly" 
page16.name 			= create_guid_string() 
page16.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page16.indices		= {0,1,2,2,3,0}
page16.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page16.material		= Slide_16_page	
page16.element_params = {"Slide_Number"} 
page16.controllers    = {{"parameter_in_range",0,0.75}}
--page16.parent_element = origin.name 
AddElement(page16)

local page17  		= CreateElement "ceTexPoly" 
page17.name 			= create_guid_string() 
page17.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page17.indices		= {0,1,2,2,3,0}
page17.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page17.material		= Slide_17_page	
page17.element_params = {"Slide_Number"} 
page17.controllers    = {{"parameter_in_range",0,0.8}}
--page17.parent_element = origin.name 
AddElement(page17)

local page18  		= CreateElement "ceTexPoly" 
page18.name 			= create_guid_string() 
page18.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page18.indices		= {0,1,2,2,3,0}
page18.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page18.material		= Slide_18_page	
page18.element_params = {"Slide_Number"} 
page18.controllers    = {{"parameter_in_range",0,0.85}}
--page18.parent_element = origin.name 
AddElement(page18)

local page19  		= CreateElement "ceTexPoly" 
page19.name 			= create_guid_string() 
page19.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page19.indices		= {0,1,2,2,3,0}
page19.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page19.material		= Slide_19_page	
page19.element_params = {"Slide_Number"} 
page19.controllers    = {{"parameter_in_range",0,0.9}}
--page19.parent_element = origin.name 
AddElement(page19)

local page20  		= CreateElement "ceTexPoly" 
page20.name 			= create_guid_string() 
page20.vertices   	= {{-screenHalfSizeX, screenHalfSize}, -- affects sizing
					{ screenHalfSizeX, screenHalfSize},
					{ screenHalfSizeX,-screenHalfSize},
					{-screenHalfSizeX,-screenHalfSize}}
page20.indices		= {0,1,2,2,3,0}
page20.tex_coords	= {{0,0},{1,0},{1,1},{0,1}}
page20.material		= Slide_20_page	
page20.element_params = {"Slide_Number"} 
page20.controllers    = {{"parameter_in_range",0,0.95}}
--page20.parent_element = origin.name 
AddElement(page20)