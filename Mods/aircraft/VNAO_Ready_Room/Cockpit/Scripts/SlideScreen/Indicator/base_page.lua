dofile(LockOn_Options.script_path.."SlideScreen/Indicator/definitions.lua")

local screen = MakeMaterial(nil,{4,4,4,128})

verts = {}
verts [1]= {-screenHalfSizeX,-screenHalfSize}
verts [2]= {-screenHalfSizeX,screenHalfSize}
verts [3]= {screenHalfSizeX,screenHalfSize}
verts [4]= {screenHalfSizeX,-screenHalfSize}

base 			 	 = CreateElement "ceMeshPoly"
base.name 			 = "base"
base.vertices 		 = verts
base.indices 		 = {0,1,2, 0,2,3}
base.material		 = screen
base.h_clip_relation = h_clip_relations.REWRITE_LEVEL 
base.level			 = NOCLIP_LEVEL 
base.isdraw			 = true
base.change_opacity  = false
base.isvisible		 = false
Add(base)


background					= CreateElement "ceMeshPoly"
background.name			 	= "background"
background.primitivetype 	= "triangles"
background.vertices 		= verts
background.indices			= {0,1,2, 0,2,3}
background.material			= screen
background.h_clip_relation  = h_clip_relations.INCREASE_IF_LEVEL  
background.level			= NOCLIP_LEVEL   
background.change_opacity	= false
background.isvisible		= true
Add(background)

