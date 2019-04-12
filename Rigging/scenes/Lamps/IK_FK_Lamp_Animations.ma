//Maya ASCII 2018 scene
//Name: IK_FK_Lamp_Animations.ma
//Last modified: Fri, Apr 12, 2019 01:16:29 PM
//Codeset: 1252
file -rdi 1 -ns "IKFKLampRig" -rfn "IKFKLampRigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/School/Spring2019/DGM2211/Rigging//scenes/Lamps/IKFKLampRig.ma";
file -rdi 2 -ns "lamp_model" -rfn "IKFKLampRig:lamp_modelRN" -op "v=0;" -typ
		 "mayaAscii" "E:/School/Spring2019/DGM2211/Rigging//scenes/Lamps/01-lamp_model.ma";
file -r -ns "IKFKLampRig" -dr 1 -rfn "IKFKLampRigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/School/Spring2019/DGM2211/Rigging//scenes/Lamps/IKFKLampRig.ma";
requires maya "2018";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "5F82C648-4365-06D2-119B-7691B0015701";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.7295842497418494 17.60749510821417 92.957026804277262 ;
	setAttr ".r" -type "double3" -5.138352729596062 2.5999999999974182 -2.4873689175987816e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "206FCFDC-49F0-DDD5-183D-2AA0A4B86FEE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 104.66373837193871;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "78F9DA3F-41DE-6C8C-A01D-58A30866A228";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D09511B4-44F1-5BA8-E49B-C799DB14C236";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "4363FF7F-4619-6FA3-522F-1FB128F7E28D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "60B558B5-498F-1AF0-E694-809163D8363A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "C91E7591-4190-CED6-D1FA-66A8C5668716";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4864EAE8-4E78-3C31-7BF9-66BB89403FDE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "locator1";
	rename -uid "2BD071E6-4650-7BDD-7FEA-B6A6CD8FC228";
	setAttr ".t" -type "double3" -0.010824630036950111 2.724783182144165 0 ;
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "1A9DC378-40AB-575B-6CBB-168FA33A181F";
	setAttr -k off ".v";
createNode transform -n "locator2";
	rename -uid "483DD517-4062-F51F-8870-EB82EC90819D";
	setAttr ".t" -type "double3" 12.872050285339355 10.985021591186523 0 ;
createNode locator -n "locatorShape2" -p "locator2";
	rename -uid "903C8D2E-419A-3430-3386-F8A0C7C5B62F";
	setAttr -k off ".v";
createNode transform -n "locator3";
	rename -uid "CD92E108-4A4D-0DE2-E9CE-6D95C1D499FD";
	setAttr ".t" -type "double3" -1.7064293622970581 20.026866912841797 4.0651492245009479e-32 ;
createNode locator -n "locatorShape3" -p "locator3";
	rename -uid "48F6C450-4065-7E6D-6EFF-56BA16C4E495";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C0EEA8BC-4447-1F23-A948-9C8739B75D88";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E92EBCCD-4DCE-F6B9-8AA0-BE91878D3914";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B8610BF9-41AA-B189-6A02-23B5322C1AF1";
createNode displayLayerManager -n "layerManager";
	rename -uid "F50F8F41-4AE9-3ACE-7ECD-C2AB8FE52792";
createNode displayLayer -n "defaultLayer";
	rename -uid "DD624F27-4086-034A-7DD2-92952127E980";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "83F990FE-4FA5-05C2-B042-3BB6E1F95703";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "83BFD0D1-4276-EC86-C737-188F597CA67D";
	setAttr ".g" yes;
createNode reference -n "IKFKLampRigRN";
	rename -uid "8281C04A-487E-5A82-3B03-41B65963B68E";
	setAttr -s 47 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"IKFKLampRigRN"
		"IKFKLampRig:lamp_modelRN" 0
		"IKFKLampRigRN" 4
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"aiRenderCurve" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"aiCurveWidth" " 0.0099999997764825821"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"aiSampleRate" " 5"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"aiCurveShader" " -type \"float3\" 0 0 0"
		"IKFKLampRig:lamp_modelRN" 11
		2 "|IKFKLampRig:lamp_model:Geometry" "ghosting" " 0"
		2 "|IKFKLampRig:lamp_model:Geometry" "ghostingControl" " 0"
		2 "|IKFKLampRig:lamp_model:Geometry" "ghostColorPreA" " 1"
		2 "|IKFKLampRig:lamp_model:Geometry|IKFKLampRig:lamp_model:base_geo|IKFKLampRig:lamp_model:base_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|IKFKLampRig:lamp_model:Geometry|IKFKLampRig:lamp_model:base_geo|IKFKLampRig:lamp_model:base_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|IKFKLampRig:lamp_model:Geometry|IKFKLampRig:lamp_model:lower_arm_geo|IKFKLampRig:lamp_model:lower_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|IKFKLampRig:lamp_model:Geometry|IKFKLampRig:lamp_model:lower_arm_geo|IKFKLampRig:lamp_model:lower_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|IKFKLampRig:lamp_model:Geometry|IKFKLampRig:lamp_model:upper_arm_geo|IKFKLampRig:lamp_model:upper_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|IKFKLampRig:lamp_model:Geometry|IKFKLampRig:lamp_model:upper_arm_geo|IKFKLampRig:lamp_model:upper_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|IKFKLampRig:lamp_model:Geometry|IKFKLampRig:lamp_model:head_geo|IKFKLampRig:lamp_model:head_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "IKFKLampRig:lamp_model:geo_layer" "displayType" " 2"
		"IKFKLampRigRN" 182
		1 |IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1 
		"blendParent1" "blendParent1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints" "visibility" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt" "ghosting" 
		" 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt" "ghostingControl" 
		" 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:IK_Jnts" 
		"visibility" " 1"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:IK_Jnts|IKFKLampRig:IK_lower_arm_jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:IK_Jnts|IKFKLampRig:IK_lower_arm_jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:IK_Jnts|IKFKLampRig:IK_lower_arm_jnt|IKFKLampRig:IK_upper_arm_jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:IK_Jnts|IKFKLampRig:IK_lower_arm_jnt|IKFKLampRig:IK_upper_arm_jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:IK_Jnts|IKFKLampRig:IK_lower_arm_jnt|IKFKLampRig:IK_upper_arm_jnt|IKFKLampRig:IK_head_jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:IK_Jnts|IKFKLampRig:IK_lower_arm_jnt|IKFKLampRig:IK_upper_arm_jnt|IKFKLampRig:IK_head_jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:IK_Jnts|IKFKLampRig:IK_lower_arm_jnt|IKFKLampRig:IK_upper_arm_jnt|IKFKLampRig:IK_head_jnt|IKFKLampRig:IK_head_rotate_jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:IK_Jnts|IKFKLampRig:IK_lower_arm_jnt|IKFKLampRig:IK_upper_arm_jnt|IKFKLampRig:IK_head_jnt|IKFKLampRig:IK_head_rotate_jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:RK_Jnts|IKFKLampRig:RK_lower_arm_jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:RK_Jnts|IKFKLampRig:RK_lower_arm_jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:RK_Jnts|IKFKLampRig:RK_lower_arm_jnt|IKFKLampRig:RK_upper_arm_jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:RK_Jnts|IKFKLampRig:RK_lower_arm_jnt|IKFKLampRig:RK_upper_arm_jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:RK_Jnts|IKFKLampRig:RK_lower_arm_jnt|IKFKLampRig:RK_upper_arm_jnt|IKFKLampRig:RK_head_jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:RK_Jnts|IKFKLampRig:RK_lower_arm_jnt|IKFKLampRig:RK_upper_arm_jnt|IKFKLampRig:RK_head_jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:RK_Jnts|IKFKLampRig:RK_lower_arm_jnt|IKFKLampRig:RK_upper_arm_jnt|IKFKLampRig:RK_head_jnt|IKFKLampRig:RK_head_rotate_jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:RK_Jnts|IKFKLampRig:RK_lower_arm_jnt|IKFKLampRig:RK_upper_arm_jnt|IKFKLampRig:RK_head_jnt|IKFKLampRig:RK_head_rotate_jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:FK_Jnts1|IKFKLampRig:FK_lower_arm_jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:FK_Jnts1|IKFKLampRig:FK_lower_arm_jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:FK_Jnts1|IKFKLampRig:FK_lower_arm_jnt|IKFKLampRig:FK_upper_arm_jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:FK_Jnts1|IKFKLampRig:FK_lower_arm_jnt|IKFKLampRig:FK_upper_arm_jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:FK_Jnts1|IKFKLampRig:FK_lower_arm_jnt|IKFKLampRig:FK_upper_arm_jnt|IKFKLampRig:FK_head_jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:FK_Jnts1|IKFKLampRig:FK_lower_arm_jnt|IKFKLampRig:FK_upper_arm_jnt|IKFKLampRig:FK_head_jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:FK_Jnts1|IKFKLampRig:FK_lower_arm_jnt|IKFKLampRig:FK_upper_arm_jnt|IKFKLampRig:FK_head_jnt|IKFKLampRig:FK_head_rotate_jnt" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Joints|IKFKLampRig:Root_Jnt|IKFKLampRig:Base_Jnt|IKFKLampRig:FK_Jnts1|IKFKLampRig:FK_lower_arm_jnt|IKFKLampRig:FK_upper_arm_jnt|IKFKLampRig:FK_head_jnt|IKFKLampRig:FK_head_rotate_jnt" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls" "visibility" " 1"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translateX" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translateX" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translateY" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translateZ" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateX" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateY" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateZ" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"visibility" " 1"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translate" " -type \"double3\" 0 -3.71695663853888192 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translateX" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translateY" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translateZ" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotate" " -type \"double3\" 0 0 -15.60493597590490111"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateZ" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateX" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateY" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"blendParent1" " -k 1 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1" 
		"interpType" " 1"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1" 
		"ikHandle1W0" " -k 1 1"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"visibility" " 1"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translate" " -type \"double3\" 0 -3.71695663853888192 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translateX" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translateY" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translateZ" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"aiRenderCurve" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"aiCurveWidth" " 0.0099999997764825821"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"aiSampleRate" " 5"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"aiCurveShader" " -type \"float3\" 0 0 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:root_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:root_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"ghostingControl" " 4"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:root_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:root_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:root_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateX" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:root_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateY" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:root_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateZ" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:root_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:root_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1" 
		"translateX" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1" 
		"translateY" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1" 
		"translateZ" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1" 
		"rotateX" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1" 
		"rotateY" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1" 
		"rotateZ" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotate" " -type \"double3\" 0 0 -13.34767200912829388"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateZ" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotate" " -type \"double3\" -1.36357382494578316 0 18.90713708886996614"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateZ" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateX" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateY" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:head_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotate" " -type \"double3\" 3.53305697207711367 4.69723903639139451 -24.71198608287632226"
		
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:head_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateY" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:head_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateX" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:head_ctrl_grp|IKFKLampRig:nurbsCircle1" 
		"rotateZ" " -av"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:head_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghosting" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:head_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircleShape1" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Switch" "IK_FK_Switch" " -av -k 1 0"
		
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Switch|IKFKLampRig:SwitchShape" "intermediateObject" 
		" 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Switch|IKFKLampRig:SwitchShape" "ghosting" 
		" 0"
		2 "|IKFKLampRig:Skeleton|IKFKLampRig:Switch|IKFKLampRig:SwitchShape" "ghostingControl" 
		" 0"
		2 "|IKFKLampRig:lamp_modelRNfosterParent1|IKFKLampRig:head_geoShapeDeformed" 
		"ghosting" " 0"
		2 "|IKFKLampRig:lamp_modelRNfosterParent1|IKFKLampRig:head_geoShapeDeformed" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:lamp_modelRNfosterParent1|IKFKLampRig:head_geoShapeDeformed" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|IKFKLampRig:lamp_modelRNfosterParent1|IKFKLampRig:upper_arm_geoShapeDeformed" 
		"ghosting" " 0"
		2 "|IKFKLampRig:lamp_modelRNfosterParent1|IKFKLampRig:upper_arm_geoShapeDeformed" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:lamp_modelRNfosterParent1|IKFKLampRig:upper_arm_geoShapeDeformed" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|IKFKLampRig:lamp_modelRNfosterParent1|IKFKLampRig:lower_arm_geoShapeDeformed" 
		"ghosting" " 0"
		2 "|IKFKLampRig:lamp_modelRNfosterParent1|IKFKLampRig:lower_arm_geoShapeDeformed" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:lamp_modelRNfosterParent1|IKFKLampRig:lower_arm_geoShapeDeformed" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|IKFKLampRig:lamp_modelRNfosterParent1|IKFKLampRig:base_geoShapeDeformed" 
		"ghosting" " 0"
		2 "|IKFKLampRig:lamp_modelRNfosterParent1|IKFKLampRig:base_geoShapeDeformed" 
		"ghostingControl" " 0"
		2 "|IKFKLampRig:lamp_modelRNfosterParent1|IKFKLampRig:base_geoShapeDeformed" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		3 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1.constraintTranslateX" 
		"|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.translateX" 
		""
		3 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1.constraintTranslateY" 
		"|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.translateY" 
		""
		3 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1.constraintTranslateZ" 
		"|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.translateZ" 
		""
		3 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1.constraintRotateX" 
		"|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateX" 
		""
		3 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1.constraintRotateY" 
		"|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateY" 
		""
		3 "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1.constraintRotateZ" 
		"|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateZ" 
		""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateX" 
		"IKFKLampRigRN.placeHolderList[1]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateY" 
		"IKFKLampRigRN.placeHolderList[2]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateZ" 
		"IKFKLampRigRN.placeHolderList[3]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateX" 
		"IKFKLampRigRN.placeHolderList[4]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateY" 
		"IKFKLampRigRN.placeHolderList[5]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateZ" 
		"IKFKLampRigRN.placeHolderList[6]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1.translateX" 
		"IKFKLampRigRN.placeHolderList[7]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1.translateY" 
		"IKFKLampRigRN.placeHolderList[8]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1.translateZ" 
		"IKFKLampRigRN.placeHolderList[9]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateX" 
		"IKFKLampRigRN.placeHolderList[10]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateY" 
		"IKFKLampRigRN.placeHolderList[11]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateZ" 
		"IKFKLampRigRN.placeHolderList[12]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.translateX" 
		"IKFKLampRigRN.placeHolderList[13]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.translateY" 
		"IKFKLampRigRN.placeHolderList[14]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.translateZ" 
		"IKFKLampRigRN.placeHolderList[15]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateZ" 
		"IKFKLampRigRN.placeHolderList[16]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateX" 
		"IKFKLampRigRN.placeHolderList[17]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateY" 
		"IKFKLampRigRN.placeHolderList[18]" ""
		5 3 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.blendParent1" 
		"IKFKLampRigRN.placeHolderList[19]" ""
		5 3 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1.constraintRotateZ" 
		"IKFKLampRigRN.placeHolderList[20]" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.rz"
		
		5 3 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1.constraintRotateX" 
		"IKFKLampRigRN.placeHolderList[21]" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.rx"
		
		5 3 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1.constraintRotateY" 
		"IKFKLampRigRN.placeHolderList[22]" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.ry"
		
		5 3 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1.constraintTranslateX" 
		"IKFKLampRigRN.placeHolderList[23]" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.tx"
		
		5 3 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1.constraintTranslateY" 
		"IKFKLampRigRN.placeHolderList[24]" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.ty"
		
		5 3 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:nurbsCircle1_parentConstraint1.constraintTranslateZ" 
		"IKFKLampRigRN.placeHolderList[25]" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:head_rotate_ctrl_grp|IKFKLampRig:nurbsCircle1.tz"
		
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1.translateX" 
		"IKFKLampRigRN.placeHolderList[26]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1.translateY" 
		"IKFKLampRigRN.placeHolderList[27]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:ik_handle_ctrl_grp|IKFKLampRig:nurbsCircle1.translateZ" 
		"IKFKLampRigRN.placeHolderList[28]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:root_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateX" 
		"IKFKLampRigRN.placeHolderList[29]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:root_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateY" 
		"IKFKLampRigRN.placeHolderList[30]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:root_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateZ" 
		"IKFKLampRigRN.placeHolderList[31]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1.translateX" 
		"IKFKLampRigRN.placeHolderList[32]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1.translateY" 
		"IKFKLampRigRN.placeHolderList[33]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1.translateZ" 
		"IKFKLampRigRN.placeHolderList[34]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1.rotateX" 
		"IKFKLampRigRN.placeHolderList[35]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1.rotateY" 
		"IKFKLampRigRN.placeHolderList[36]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:IK_controls|IKFKLampRig:ik_main_ctrl_grp|IKFKLampRig:pv_ctrl_grp|IKFKLampRig:offset|IKFKLampRig:nurbsCircle1.rotateZ" 
		"IKFKLampRigRN.placeHolderList[37]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateZ" 
		"IKFKLampRigRN.placeHolderList[38]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateX" 
		"IKFKLampRigRN.placeHolderList[39]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateY" 
		"IKFKLampRigRN.placeHolderList[40]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateZ" 
		"IKFKLampRigRN.placeHolderList[41]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateX" 
		"IKFKLampRigRN.placeHolderList[42]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateY" 
		"IKFKLampRigRN.placeHolderList[43]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:head_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateY" 
		"IKFKLampRigRN.placeHolderList[44]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:head_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateX" 
		"IKFKLampRigRN.placeHolderList[45]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Controls|IKFKLampRig:transform_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:cog_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:Base_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:FK_Controls|IKFKLampRig:lower_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:upper_arm_ctrl_grp|IKFKLampRig:nurbsCircle1|IKFKLampRig:head_ctrl_grp|IKFKLampRig:nurbsCircle1.rotateZ" 
		"IKFKLampRigRN.placeHolderList[46]" ""
		5 4 "IKFKLampRigRN" "|IKFKLampRig:Skeleton|IKFKLampRig:Switch.IK_FK_Switch" 
		"IKFKLampRigRN.placeHolderList[47]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "nurbsCircle1_translateX";
	rename -uid "01B02117-401D-7AA0-53AA-499D548E930D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 15 0 20 0 25 0 30 0 35 0 40 0 47 0 50 0
		 120 0 130 0 132 0 133 0 165 0 318 0 328 0 348 0 368 0 387 0 398 0 400 0 422 0 424 0
		 446 0;
	setAttr -s 24 ".kit[0:23]"  18 18 1 1 18 18 1 1 
		1 1 1 1 18 10 1 18 18 1 18 1 18 1 18 1;
	setAttr -s 24 ".kot[0:23]"  18 18 1 1 18 18 1 1 
		1 1 1 1 18 10 1 18 18 1 18 1 18 1 1 1;
	setAttr -s 24 ".kix[2:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 24 ".kiy[2:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 24 ".kox[2:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 24 ".koy[2:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTL -n "nurbsCircle1_translateX1";
	rename -uid "8CC0A075-47E6-5DC9-97C4-F4BEC78427F7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 74 ".ktv[0:73]"  1 0 5 0 15 0 26 0 30 0 35 0 40 0 45 0 47 0
		 50 0 55 0 59 0 64 0 65 0 67 0 69 0 72 0 75 0 79 0 84 0 85 0 87 0 89 0 92 0 93 0 97 0
		 103 0 104 0 108 0 112 0 114 0 115 0 120 0 125 0 130 0 132 0 133 0 137 0 138 0 142 0
		 148 0 149 0 153 0 157 0 159 0 160 0 165 0 170 0 174 0 175 0 182 0 281 0 317 0 318 0
		 328 0 338 0 348 0 358 0 368 0 378 0 387 0 398 0 400 0 402 0 407 -10.667910287924204
		 412 4.3960484052716318 417 2.0735814829736441 422 0 424 0 426 0 431 -10.667910287924204
		 436 2.783480261981893 441 8.9519611931194198 446 0;
	setAttr -s 74 ".kit[0:73]"  18 18 18 18 18 18 1 1 
		1 1 10 10 10 1 10 10 10 10 10 10 1 10 10 10 1 
		10 10 1 10 10 10 1 10 10 10 10 18 10 10 10 10 10 
		10 10 10 10 10 10 1 1 18 1 1 1 18 18 1 1 1 
		1 18 1 18 18 18 18 18 1 18 18 18 18 18 1;
	setAttr -s 74 ".kot[0:73]"  18 18 18 18 18 18 1 1 
		1 1 10 10 10 1 10 10 10 10 10 10 1 10 10 10 1 
		10 10 1 10 10 10 1 10 10 10 10 18 10 10 10 10 10 
		10 10 10 10 10 10 1 1 1 1 1 1 18 18 1 1 1 
		1 1 1 18 18 18 18 18 1 1 18 18 18 18 1;
	setAttr -s 74 ".kix[6:73]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.094359195424751199 
		1 1 1 1 0.021232184860810605 1 1;
	setAttr -s 74 ".kiy[6:73]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.995538217367266 
		0 0 0 0 0.99977457175407125 0 0;
	setAttr -s 74 ".kox[6:73]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.094359195424751199 
		1 1 1 1 0.021232184860810605 1 1;
	setAttr -s 74 ".koy[6:73]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.995538217367266 
		0 0 0 0 0.99977457175407125 0 0;
createNode animCurveTL -n "nurbsCircle1_translateY";
	rename -uid "E74E704B-42AE-3085-49F4-2C8C5885FEEE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 15 0 20 0 25 0 30 0 35 0 40 0 47 0 50 0
		 120 0 130 0 132 0 133 0 165 0 318 0 328 0 348 0 368 0 387 0 398 0 400 0 422 0 424 0
		 446 0;
	setAttr -s 24 ".kit[0:23]"  18 18 1 1 18 18 1 1 
		1 1 1 1 18 10 1 18 18 1 18 1 18 1 18 1;
	setAttr -s 24 ".kot[0:23]"  18 18 1 1 18 18 1 1 
		1 1 1 1 18 10 1 18 18 1 18 1 18 1 1 1;
	setAttr -s 24 ".kix[2:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 24 ".kiy[2:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 24 ".kox[2:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 24 ".koy[2:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTL -n "nurbsCircle1_translateY1";
	rename -uid "31684637-4B34-02DF-6613-67A743FF58C4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 74 ".ktv[0:73]"  1 -3.7169566385388819 5 5.8382842324541011
		 15 -8.7350961443994173 26 -12.705686003764566 30 -12.684626570841299 35 -11.863228518469752
		 40 -8.7350961443994173 45 -3.7169566385388819 47 -3.7169566385388819 50 -3.7169566385388819
		 55 -11.84415565524807 59 -3.7006752431877246 64 -12.0071381842973 65 -12.0071381842973
		 67 -8.0307698874224833 69 -3.7802928184872897 72 -13.087429982274966 75 -14.51288247839646
		 79 3.4958473182047562 84 -12.0071381842973 85 -12.0071381842973 87 -1.9824158656185054
		 89 -3.7802928184872897 92 -13.087429982274966 93 -13.087429982274966 97 11.736267717669527
		 103 -14.501359954405167 104 -14.501359954405167 108 4.3294266354610684 112 -7.3413344641836922
		 114 -14.972002375146484 115 -14.972002375146484 120 -3.7169566385388819 125 -0.036489121470253849
		 130 -3.7169566385388819 132 -3.7169566385388819 133 -3.7169566385388819 137 -13.087429982274966
		 138 -13.087429982274966 142 11.736267717669527 148 -14.501359954405167 149 -14.501359954405167
		 153 4.3294266354610684 157 -7.3413344641836922 159 -14.972002375146484 160 -14.972002375146484
		 165 -3.7169566385388819 170 -0.036489121470253849 174 -3.7169566385388819 175 -3.7169566385388819
		 182 -3.7169566385388819 281 -3.7169566385388819 317 -3.7169566385388819 318 -3.7169566385388819
		 328 -6.93604550901469 338 -3.6439935278544091 348 -6.93604550901469 358 -3.6439935278544091
		 368 -6.93604550901469 378 -3.6439935278544091 387 -6.93604550901469 398 -3.7169566385388819
		 400 -3.7169566385388819 402 -10.641883654395411 407 1.843778394465891 412 -10.579048333847783
		 417 2.0068384317899817 422 -3.7169566385388819 424 -3.7169566385388819 426 -10.641883654395411
		 431 1.843778394465891 436 -10.579048333847783 441 2.0068384317899817 446 -3.7169566385388819;
	setAttr -s 74 ".kit[0:73]"  1 1 1 1 1 1 1 1 
		1 1 10 10 10 1 10 10 10 10 10 10 1 10 10 10 1 
		10 10 1 10 10 10 1 10 10 10 10 18 10 10 10 10 10 
		10 10 10 10 10 10 1 1 18 1 1 1 18 18 1 1 1 
		1 18 1 18 18 18 18 18 1 18 18 18 18 18 1;
	setAttr -s 74 ".kot[0:73]"  1 1 1 1 1 1 1 1 
		1 1 10 10 10 1 10 10 10 10 10 10 1 10 10 10 1 
		10 10 1 10 10 10 1 10 10 10 10 18 10 10 10 10 10 
		10 10 10 10 10 10 1 1 1 1 1 1 18 18 1 1 1 
		1 1 1 18 18 18 18 18 1 1 18 18 18 18 1;
	setAttr -s 74 ".kix[0:73]"  0.04445040753327259 0.044804809537031691 
		0.10419485612797359 0.96759654944702211 0.85844442873054261 0.1028623016261425 0.043931768773500544 
		0.043682593254678395 0.043992187333137714 0.04445040753327259 0.9990588101262845 
		0.91712455343669019 1 0.054663237916046714 0.020254723157253022 0.041164867589467635 
		0.023287222551629679 0.017585279441221048 0.14800784772666886 1 0.060734210850952319 
		0.020254723157253074 0.018756993868044084 1 0.021477468760649081 0.28266886483039522 
		1 0.061761598222456644 0.046504400784983566 0.012951322510315716 1 0.091583297590335913 
		0.027886863478157234 1 1 1 1 1 1 0.28266886483039522 1 1 0.046504400784983566 0.012951322510315716 
		1 1 0.027886863478157234 1 0.056514659529692882 0.056514659529692882 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 74 ".kiy[0:73]"  0.99901159216003388 0.99899576027245995 
		-0.99455690232206961 0.25250132177518714 0.51290658289935465 0.99469560514972244 
		0.99903453378370843 0.99904545994991945 0.99903187509390612 0.99901159216003388 0.043376190577927701 
		-0.39860074445935467 0 -0.99850484746972235 0.99979485205207119 -0.99915236759782622 
		-0.99972881586249729 0.99984536701780757 0.9889861864613273 0 -0.99815397390999361 
		0.99979485205207119 -0.99982407211520674 0 0.99976933256408473 -0.95921755241211881 
		0 -0.99809093021878914 0.99891808508387192 -0.99991612810536956 0 0.99579741895753071 
		0.99961108579554614 0 0 0 0 0 0 -0.95921755241211881 0 0 0.99891808508387192 -0.99991612810536956 
		0 0 0.99961108579554614 0 -0.99840176945868986 -0.99840176945868986 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 74 ".kox[0:73]"  0.044450388126215511 0.044804809922650193 
		0.10419475013590949 0.9675965483195581 0.8584444580134879 0.10286230338390402 0.043931767303391274 
		0.043682570719406254 0.043992169964289257 0.044450388126215511 0.9990588101262845 
		0.91712455343669019 1 0.054663237916046714 0.020254723157253022 0.041164867589467635 
		0.023287222551629679 0.017585279441221048 0.14800784772666886 1 0.060734210850952319 
		0.020254723157253074 0.018756993868044084 1 0.021477468760649081 0.28266886483039522 
		1 0.061761598222456644 0.046504400784983566 0.012951322510315716 1 0.091583297590335913 
		0.027886863478157234 1 1 1 1 1 1 0.28266886483039522 1 1 0.046504400784983566 0.012951322510315716 
		1 1 0.027886863478157234 1 0.056514659529692882 0.056514659529692882 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 74 ".koy[0:73]"  0.99901159302353892 0.99899576025516512 
		-0.99455691342633357 0.25250132609568043 0.51290653388890373 0.99469560496795084 
		0.99903453384835539 0.99904546093525903 0.99903187585874009 0.99901159302353892 0.043376190577927701 
		-0.39860074445935467 0 -0.99850484746972235 0.99979485205207119 -0.99915236759782622 
		-0.99972881586249729 0.99984536701780757 0.9889861864613273 0 -0.99815397390999361 
		0.99979485205207119 -0.99982407211520674 0 0.99976933256408473 -0.95921755241211881 
		0 -0.99809093021878914 0.99891808508387192 -0.99991612810536956 0 0.99579741895753071 
		0.99961108579554614 0 0 0 0 0 0 -0.95921755241211881 0 0 0.99891808508387192 -0.99991612810536956 
		0 0 0.99961108579554614 0 -0.99840176945868986 -0.99840176945868986 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateZ";
	rename -uid "EE96EF89-44E4-44F3-83F0-3DA976CE6E97";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 15 0 20 5 25 -5 30 5 35 -5 40 0 47 0
		 50 0 120 0 130 0 132 0 133 0 165 0 318 0 328 0 348 -7.4979308493914285 368 0 387 6.164599907063419
		 398 0 400 0 422 0 424 0 446 0;
	setAttr -s 24 ".kit[0:23]"  18 18 1 1 18 18 1 1 
		1 1 1 1 18 10 1 18 18 1 18 1 18 1 18 1;
	setAttr -s 24 ".kot[0:23]"  18 18 1 1 18 18 1 1 
		1 1 1 1 18 10 1 18 18 1 18 1 18 1 1 1;
	setAttr -s 24 ".kix[2:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 24 ".kiy[2:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 24 ".kox[2:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 24 ".koy[2:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTL -n "nurbsCircle1_translateZ1";
	rename -uid "F8C7E879-455D-0E31-0BC7-EEA377E71852";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 74 ".ktv[0:73]"  1 0 5 0 15 0 26 0.85900874951017414 30 2.525434271714285
		 35 2.5945031829067196 40 0 45 0 47 0 50 0 55 0 59 0 64 0 65 0 67 0 69 0 72 0 75 0
		 79 0 84 0 85 0 87 0 89 0 92 0 93 0 97 0 103 0 104 0 108 0 112 0 114 0 115 0 120 0
		 125 0 130 0 132 0 133 0 137 0 138 0 142 0 148 0 149 0 153 0 157 0 159 0 160 0 165 0
		 170 0 174 0 175 0 182 0 281 0 317 0 318 0 328 0 338 0 348 0 358 0 368 0 378 0 387 0
		 398 0 400 0 402 0 407 0 412 0 417 0 422 0 424 0 426 0 431 0 436 0 441 0 446 0;
	setAttr -s 74 ".kit[0:73]"  18 18 18 18 18 18 1 1 
		1 1 10 10 10 1 10 10 10 10 10 10 1 10 10 10 1 
		10 10 1 10 10 10 1 10 10 10 10 18 10 10 10 10 10 
		10 10 10 10 10 10 1 1 18 1 1 1 18 18 1 1 1 
		1 18 1 18 18 18 18 18 1 18 18 18 18 18 1;
	setAttr -s 74 ".kot[0:73]"  18 18 18 18 18 18 1 1 
		1 1 10 10 10 1 10 10 10 10 10 10 1 10 10 10 1 
		10 10 1 10 10 10 1 10 10 10 10 18 10 10 10 10 10 
		10 10 10 10 10 10 1 1 1 1 1 1 18 18 1 1 1 
		1 1 1 18 18 18 18 18 1 1 18 18 18 18 1;
	setAttr -s 74 ".kix[6:73]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 74 ".kiy[6:73]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
	setAttr -s 74 ".kox[6:73]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 74 ".koy[6:73]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX";
	rename -uid "E6CEE114-4952-EA12-7B7A-71930C1CBF75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode pairBlend -n "pairBlend1";
	rename -uid "AEE699FF-48DC-89F6-F439-A987DE0A701A";
	setAttr ".it1" -type "double3" 2.2204460492503131e-16 0 0 ;
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "ED88A9F7-429C-AD65-9A4D-BBB50942F19F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  1 0 6 1.1999340786076762 10 -1.633534358130289
		 14 -6.2897708783578343 20 -3.1255068235001708 25 17.557181212056093 30 -14.078768832683435
		 35 13.310887741867148 40 2.2676319150898285 45 0 47 0 50 0 55 0 61 1.8740853777041366
		 64 -2.3784753386346833 75 0 83 1.519548902553854 89 0.71818940297231892 92 1.1493591248472956
		 97 1.4278544107126936 103 0.8625840355566714 109 0.33982644352024938 113 0.062764654090748093
		 121 0.11547038876127788 130 0 132 0 133 0 137 1.1493591248472956 142 1.4278544107126936
		 148 0.8625840355566714 154 0.33982644352024938 158 0.062764654090748093 166 0.11547038876127788
		 174 0 175 0 182 0 281 0 317 0 318 0 328 0 338 0 348 27.518532709271646 358 0 368 0
		 378 6.0341484432699426 387 -12.558255311952028 398 0 400 0 407 0 412 0 417 0 422 0
		 424 0 431 0 436 0 441 0 446 0;
	setAttr -s 57 ".kit[9:56]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 1 18 10 10 10 10 10 10 1 
		1 18 1 1 1 18 18 18 1 1 18 18 1 18 18 1 18 
		1 18 18 1 18 1;
	setAttr -s 57 ".kot[9:56]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 1 18 10 10 10 10 10 10 1 
		1 1 1 1 1 18 18 18 1 1 18 18 1 18 18 1 18 
		1 1 18 1 18 1;
	setAttr -s 57 ".kix[9:56]"  1 1 1 1 1 1 0.99632775455928047 1 1 0.99931035659307821 
		1 0.9992795641279153 0.9994392546791796 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 57 ".kiy[9:56]"  0 0 0 0 0 0 0.085621291130547575 0 0 0.037132347162747145 
		0 -0.0379519790830945 -0.033483969393218398 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 57 ".kox[9:56]"  1 1 1 1 1 1 0.99632775455928058 1 1 0.99931035659307821 
		1 0.9992795641279153 0.99943925467917949 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 57 ".koy[9:56]"  0 0 0 0 0 0 0.085621291130547575 0 0 0.037132347162747145 
		0 -0.0379519790830945 -0.033483969393218391 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX1";
	rename -uid "F255DBC2-40F0-BF0F-CCD6-2FA083E77564";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 40 0 47 0 50 0 120 0 130 0 132 0 133 0
		 165 0 174 0 175 0 318 0 398 0;
	setAttr -s 13 ".kit[0:12]"  18 18 1 1 1 1 1 18 
		10 1 1 1 1;
	setAttr -s 13 ".kot[0:12]"  18 18 1 1 1 1 1 18 
		10 1 1 1 1;
	setAttr -s 13 ".kix[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX2";
	rename -uid "FEE1B4B2-4EEB-9F4D-EB2E-77B8FA11D38D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  1 0 59 0 79 0 133 0 177 0 400 0 402 0 407 0
		 412 0 417 0 422 0 424 0 426 0 431 0 436 0 441 0 446 0;
	setAttr -s 17 ".kit[1:16]"  10 10 18 1 18 18 18 18 
		18 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[1:16]"  10 10 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18;
	setAttr -s 17 ".kix[4:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[4:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[4:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[4:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX3";
	rename -uid "B28A20BC-43DC-27CA-08FE-6EA954ED34D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "nurbsCircle1_rotateY";
	rename -uid "1F876509-4BB5-DB2D-5978-DB9B325C42D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pairBlend1_inRotateY1";
	rename -uid "3F4FC7CA-42E2-D9ED-DFFA-F08E1EC08DAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  1 0 6 2.8726332589568715 10 7.4601897617025825
		 14 11.320456002140086 20 17.876581077080523 25 -22.728675545765817 30 2.4959660367447407
		 35 -30.438814680647234 40 -6.708371978809275 45 0 47 0 50 0 55 0 61 0.14365795306845752
		 64 3.4100317789369061 75 0 83 0.95313576290628566 89 1.4747072934728058 92 -0.18892571786415632
		 97 -0.16445934630610468 103 0.55588337223299811 109 0.6559812695927717 113 0.62023195397332664
		 121 0.26520614639111545 130 0 132 0 133 0 137 -0.18892571786415632 142 -0.16445934630610468
		 148 0.55588337223299811 154 0.6559812695927717 158 0.62023195397332664 166 0.26520614639111545
		 174 0 175 0 182 0 281 0 317 0 318 0 328 0 338 0 348 41.321571873600611 358 0 368 0
		 378 -20.626357637055754 387 -30.81482909573127 398 0 400 0 407 0 412 0 417 0 422 0
		 424 0 431 0 436 0 441 0 446 0;
	setAttr -s 57 ".kit[9:56]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 1 18 10 10 10 10 10 10 1 
		1 18 1 1 1 18 18 18 1 1 18 18 1 18 18 1 18 
		1 18 18 1 18 1;
	setAttr -s 57 ".kot[9:56]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 1 18 10 10 10 10 10 10 1 
		1 1 1 1 1 18 18 18 1 1 18 18 1 18 18 1 18 
		1 1 18 1 18 1;
	setAttr -s 57 ".kix[9:56]"  1 1 1 1 0.99954767370245767 1 1 0.99902799333492476 
		1 1 0.999981095006091 0.99978031823301061 1 0.99993693852398591 0.99988324335985623 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.82717571159633374 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 57 ".kiy[9:56]"  0 0 0 0 0.030074041896711857 0 0 0.044080251056381345 
		0 0 0.0061489536036137653 0.020959849090586385 0 -0.011230270489995269 -0.01528069527784541 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.56194336204380846 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 57 ".kox[9:56]"  1 1 1 1 0.99954767370245767 1 1 0.99902799333492465 
		1 1 0.99998109500609089 0.99978031823301061 1 0.99993693852398591 0.99988324335985634 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.82717571159633385 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 57 ".koy[9:56]"  0 0 0 0 0.030074041896711857 0 0 0.044080251056381345 
		0 0 0.0061489536036137644 0.020959849090586385 0 -0.011230270489995269 -0.01528069527784541 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.56194336204380846 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY1";
	rename -uid "61A3BEFA-4819-7A4B-4DB1-AEAD99416870";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 40 0 47 0 50 0 120 0 130 0 132 0 133 0
		 165 0 174 0 175 0 318 0 398 0;
	setAttr -s 13 ".kit[0:12]"  18 18 1 1 1 1 1 18 
		10 1 1 1 1;
	setAttr -s 13 ".kot[0:12]"  18 18 1 1 1 1 1 18 
		10 1 1 1 1;
	setAttr -s 13 ".kix[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY2";
	rename -uid "51C0E9D9-47D7-F0C2-6A84-1682143DC6D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  1 0 59 0 79 0 133 0 177 0 400 0 402 0 407 0
		 412 0 417 0 422 0 424 0 426 0 431 0 436 0 441 0 446 0;
	setAttr -s 17 ".kit[1:16]"  10 10 18 1 18 18 18 18 
		18 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[1:16]"  10 10 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18;
	setAttr -s 17 ".kix[4:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[4:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[4:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[4:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY3";
	rename -uid "15FA6B31-4C5E-F05C-3838-7A9D677FFD22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ";
	rename -uid "B6A04EBD-4233-1B18-8FF2-A48AAD086215";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "70D500BF-46B2-A993-B82F-C1A721BE4A7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  1 -15.604935975904901 6 0.86930380809255403
		 10 -48.571895399652121 14 -63.826707050565837 20 -41.905096434731732 25 -44.313754162067013
		 30 -39.531315241438485 35 -48.327124954723935 40 -34.634973076170432 45 -3.3452988084250888
		 47 -15.604935975904901 50 -15.604935975904901 55 -11.635405307478065 61 -18.992404941812079
		 64 -42.33266497795158 75 -53.535681660567441 83 -47.23666970929056 92 -49.382275506050554
		 97 -2.5352583505906305 103 -42.287344055806251 109 -71.792363581596703 113 -77.648827037723905
		 121 -26.932187323011878 130 -15.604935975904901 132 -15.604935975904901 133 -15.604935975904901
		 137 -49.382275506050554 142 -2.5352583505906305 148 -42.287344055806251 154 -71.792363581596703
		 158 -77.648827037723905 166 -26.932187323011878 174 -15.604935975904901 175 -15.604935975904901
		 182 -15.604935975904901 281 -15.604935975904901 317 -15.604935975904901 318 -15.604935975904901
		 328 1.9665071744264624 338 -22.202394729015044 348 23.023051432036045 358 -22.202394729015044
		 368 1.9665071744264624 378 -42.132340357807514 387 1.8083000334581047 398 -15.604935975904901
		 400 -15.604935975904901 407 -67.547225975479918 412 -33.765204987090314 417 -41.070825770259816
		 422 -15.604935975904901 424 -15.604935975904901 431 -67.547225975479918 436 -33.765204987090314
		 441 -41.070825770259816 446 -15.604935975904901;
	setAttr -s 56 ".kit[9:55]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 1 1 18 10 10 10 10 10 10 1 1 
		18 1 1 1 18 18 18 1 1 18 18 1 18 18 1 18 1 
		18 18 1 18 1;
	setAttr -s 56 ".kot[9:55]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 1 1 18 10 10 10 10 10 10 1 1 
		1 1 1 1 18 18 18 1 1 18 18 1 18 18 1 18 1 
		1 18 1 18 1;
	setAttr -s 56 ".kix[9:55]"  1 1 1 1 0.57342357483541306 0.69535224291166675 
		1 1 1 1 0.38223533263044318 0.55954113147646167 1 0.54741329727486165 1 1 1 0.85435228448605183 
		0.96538671065345039 0.38223533263044318 0.55954113147646167 0.53821878149897517 0.52425998611066349 
		0.88459775204824642 0.88459775204824642 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 56 ".kiy[9:55]"  0 0 0 0 -0.81925905782174635 -0.71866908816068775 
		0 0 0 0 -0.92406501421106435 -0.82880258336110491 0 0.83686240324599592 0 0 0 0.51969430821730611 
		0.26082273461819061 -0.92406501421106435 -0.82880258336110491 0.8428051632742638 
		0.85155825811464425 0.46635481885704688 0.46635481885704688 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 56 ".kox[9:55]"  1 1 1 1 0.57342357483541306 0.69535224291166675 
		1 1 1 1 0.38223533263044318 0.55954113147646156 1 0.54741329727486165 1 1 1 0.85435228448605183 
		0.96538671065345039 0.38223533263044318 0.55954113147646167 0.53821878149897517 0.52425998611066349 
		0.88459775204824653 0.88459775204824653 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 56 ".koy[9:55]"  0 0 0 0 -0.81925905782174635 -0.71866908816068775 
		0 0 0 0 -0.92406501421106435 -0.82880258336110479 0 0.83686240324599581 0 0 0 0.51969430821730611 
		0.26082273461819061 -0.92406501421106435 -0.82880258336110491 0.8428051632742638 
		0.85155825811464425 0.46635481885704694 0.46635481885704694 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ1";
	rename -uid "98AFCC9D-49AA-C509-FDAA-74A7BB7DD191";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 40 0 47 0 50 0 120 0 130 0 132 0 133 0
		 165 0 174 0 175 0 318 0 398 0;
	setAttr -s 13 ".kit[0:12]"  18 18 1 1 1 1 1 18 
		10 1 1 1 1;
	setAttr -s 13 ".kot[0:12]"  18 18 1 1 1 1 1 18 
		10 1 1 1 1;
	setAttr -s 13 ".kix[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ2";
	rename -uid "BEEC171F-4F86-2F13-F947-02870C9F651A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  1 0 59 0 79 0 133 0 177 0 400 0 402 0 407 16.550816417307477
		 412 0 417 -14.913920560992512 422 0 424 0 426 0 431 16.550816417307477 436 0 441 -14.913920560992512
		 446 0;
	setAttr -s 17 ".kit[1:16]"  10 10 18 1 18 18 18 18 
		18 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[1:16]"  10 10 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18;
	setAttr -s 17 ".kix[4:16]"  1 1 1 1 0.60444177768057272 1 1 1 1 1 0.60444177768057272 
		1 1;
	setAttr -s 17 ".kiy[4:16]"  0 0 0 0 -0.79664931895681013 0 0 0 0 0 
		-0.79664931895681013 0 0;
	setAttr -s 17 ".kox[4:16]"  1 1 1 1 0.60444177768057261 1 1 1 1 1 0.60444177768057261 
		1 1;
	setAttr -s 17 ".koy[4:16]"  0 0 0 0 -0.79664931895681002 0 0 0 0 0 
		-0.79664931895681002 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ3";
	rename -uid "7CD555A6-4379-F856-7465-87A637BDF6E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "93EE9D52-4DCA-AE1E-20F6-DC85A92C3486";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 566\n            -height 376\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"straight\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 566\\n    -height 376\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 566\\n    -height 376\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "45860598-4C33-88AC-7023-0180A934BD84";
	setAttr ".b" -type "string" "playbackOptions -min 400 -max 421 -ast -3 -aet 996 ";
	setAttr ".st" 6;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "A4D8189E-4567-A4E0-CF8C-5DAA07432E22";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ebm" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "A686CD72-4C0D-3F52-4EFF-7FB05FFD9CA9";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr -s 6 ".ac";
	setAttr ".ac[0].acn" -type "string" "Wiggle";
	setAttr ".ac[0].acs" 1;
	setAttr ".ac[0].ace" 46;
	setAttr ".ac[1].acn" -type "string" "ThreeJumps";
	setAttr ".ac[1].acs" 50;
	setAttr ".ac[1].ace" 132;
	setAttr ".ac[2].acn" -type "string" "SingleJump";
	setAttr ".ac[2].acs" 133;
	setAttr ".ac[2].ace" 175;
	setAttr ".ac[3].acn" -type "string" "LookAround";
	setAttr ".ac[3].acs" 182;
	setAttr ".ac[3].ace" 317;
	setAttr ".ac[4].acn" -type "string" "HeadBop";
	setAttr ".ac[4].acs" 318;
	setAttr ".ac[4].ace" 398;
	setAttr ".ac[5].acn" -type "string" "WalkInPlace";
	setAttr ".ac[5].acs" 400;
	setAttr ".ac[5].ace" 421;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "B5B8A2E1-456D-7DCA-B175-8A8C1E37EBB9";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode animCurveTA -n "nurbsCircle1_rotateX5";
	rename -uid "B45A1F7F-4648-A6AC-F876-97B45BC06DEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  50 0 120 0 130 0 132 0 165 0;
	setAttr -s 5 ".kit[2:4]"  1 1 10;
	setAttr -s 5 ".kot[2:4]"  1 1 10;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY5";
	rename -uid "2D38FA64-4B93-D3BF-505F-8CBAC81D6AFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  50 0 120 0 130 0 132 0 165 0;
	setAttr -s 5 ".kit[2:4]"  1 1 10;
	setAttr -s 5 ".kot[2:4]"  1 1 10;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ5";
	rename -uid "4514E3F5-45E9-D65F-9FE4-53A43F8079FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  50 0 120 0 130 0 132 0 165 0;
	setAttr -s 5 ".kit[2:4]"  1 1 10;
	setAttr -s 5 ".kot[2:4]"  1 1 10;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateY2";
	rename -uid "1CA3F3E5-4154-440E-4DBF-B89E4A70F4FF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 50 0 58 0 59 0 64 12.364448719638922
		 69 0 78 0 79 0 84 17.746304022615259 89 0 97 0 103 33.63660136873213 108 6.3752124311774416
		 112 0 120 0 130 0 132 0 133 0 142 0 148 33.63660136873213 153 6.3752124311774416
		 157 0 165 0 177 0 400 0 402 0 407 1.5912830157730615 412 18.175284001923096 417 0
		 422 0 424 0 426 0 431 1.5912830157730615 436 18.175284001923096 441 0 446 0;
	setAttr -s 36 ".kit[0:35]"  9 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 18 10 10 10 10 10 1 18 
		18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 36 ".kot[0:35]"  9 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 18 10 10 10 10 10 1 18 
		18 18 18 18 18 1 18 18 18 18 18;
	setAttr -s 36 ".kix[23:35]"  1 1 1 0.043599039086722087 1 1 1 1 1 0.043599039086722087 
		1 1 1;
	setAttr -s 36 ".kiy[23:35]"  0 0 0 0.99904910979927031 0 0 0 0 0 0.99904910979927031 
		0 0 0;
	setAttr -s 36 ".kox[23:35]"  1 1 1 0.043599039086722094 1 1 1 1 1 0.043599039086722094 
		1 1 1;
	setAttr -s 36 ".koy[23:35]"  0 0 0 0.99904910979927031 0 0 0 0 0 0.99904910979927031 
		0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateZ2";
	rename -uid "98BBFB6F-43AB-6387-8F60-93BA39EE0E43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  66 0 86 0 97 0 103 0 108 0 112 0 133 0 142 0
		 148 0 153 0 157 0 177 0 400 0 402 0 407 0 412 0 417 0 422 0 424 0 426 0 431 0 436 0
		 441 0 446 0;
	setAttr -s 24 ".kit[0:23]"  10 10 10 10 10 10 18 10 
		10 10 10 1 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 24 ".kot[0:23]"  10 10 10 10 10 10 18 10 
		10 10 10 1 18 18 18 18 18 18 1 18 18 18 18 18;
	setAttr -s 24 ".kix[11:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[11:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[11:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[11:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Switch_IK_FK_Switch";
	rename -uid "77AFBD43-4F21-7A14-B0FA-4AB33F6ADB56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 182 0 197 1 301 1 318 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ6";
	rename -uid "7FE2B040-4C31-79A0-1F37-6DA74FFCE646";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  197 -13.347672009128294 218 -5.3761223106800635
		 242 -13.347672009128294 267 -5.3761223106800635 299 -13.347672009128294 304 -13.347672009128294;
	setAttr -s 6 ".kit[2:5]"  18 1 1 1;
	setAttr -s 6 ".kot[2:5]"  18 1 1 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ7";
	rename -uid "B21291E2-4523-0ACB-D2A4-3C8F5575A78C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  197 24.297079014378873 218 18.907137088869966
		 242 24.297079014378873 267 18.907137088869966 299 24.297079014378873 313 18.907137088869966;
	setAttr -s 6 ".kit[2:5]"  18 1 1 1;
	setAttr -s 6 ".kot[2:5]"  18 1 1 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX6";
	rename -uid "8E22B285-47B7-C158-CF3F-8388F086B221";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  197 3.5330569720771137 218 -58.823042376652012
		 242 3.5330569720771137 267 56.128235831034026 268 56.128235831034026 296 -26.254670321344317
		 304 3.5330569720771137;
	setAttr -s 7 ".kit[0:6]"  1 18 18 18 1 18 1;
	setAttr -s 7 ".kot[0:6]"  1 18 18 18 1 18 1;
	setAttr -s 7 ".kix[0:6]"  0.5159286575530404 1 0.71326127060932243 
		1 1 1 0.57681097760717193;
	setAttr -s 7 ".kiy[0:6]"  0.85663155458780382 0 0.70089825213705226 
		0 0 0 0.81687765063800022;
	setAttr -s 7 ".kox[0:6]"  0.51592865755304029 1 0.71326127060932243 
		1 1 1 0.57681097760717193;
	setAttr -s 7 ".koy[0:6]"  0.85663155458780382 0 0.70089825213705226 
		0 0 0 0.81687765063800022;
createNode animCurveTA -n "nurbsCircle1_rotateX7";
	rename -uid "C5F5EC2B-469D-C904-1572-B1BA5A870E4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  218 -1.3635738249457832;
createNode animCurveTA -n "nurbsCircle1_rotateX8";
	rename -uid "DCEE1209-4E59-447E-D772-5DB3880827A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  218 0;
createNode animCurveTA -n "nurbsCircle1_rotateY6";
	rename -uid "D4CE91FF-4F08-1828-6C82-2496B5A3CB86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  197 4.6972390363913945 218 34.368972959578983
		 242 4.6972390363913945 267 -22.930599028603954 268 -22.930599028603954 296 6.7031821868276404
		 304 4.6972390363913945;
	setAttr -s 7 ".kit[0:6]"  1 18 18 18 1 18 1;
	setAttr -s 7 ".kot[0:6]"  1 18 18 18 1 18 1;
	setAttr -s 7 ".kix[0:6]"  0.7703735928737967 1 0.89805120643521841 
		1 1 1 0.81694987953750298;
	setAttr -s 7 ".kiy[0:6]"  -0.63759275984182717 0 -0.43989093036825472 
		0 0 0 -0.57670867370246759;
	setAttr -s 7 ".kox[0:6]"  0.7703735928737967 1 0.8980512064352183 
		1 1 1 0.81694987953750298;
	setAttr -s 7 ".koy[0:6]"  -0.63759275984182706 0 -0.43989093036825466 
		0 0 0 -0.5767086737024677;
createNode animCurveTA -n "nurbsCircle1_rotateY7";
	rename -uid "01ADE267-4279-6E33-8E7E-EEBF334D1389";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  197 0 218 14.612815593769051 242 0 267 -7.1713989057545531
		 299 0;
	setAttr -s 5 ".kit[0:4]"  1 18 18 18 18;
	setAttr -s 5 ".kot[0:4]"  1 18 18 18 18;
	setAttr -s 5 ".kix[0:4]"  0.95364808994065065 1 0.9830987504141887 
		1 1;
	setAttr -s 5 ".kiy[0:4]"  -0.30092411095249338 0 -0.18307606870932255 
		0 0;
	setAttr -s 5 ".kox[0:4]"  0.95364808994065065 1 0.9830987504141887 
		1 1;
	setAttr -s 5 ".koy[0:4]"  -0.30092411095249333 0 -0.18307606870932255 
		0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY8";
	rename -uid "10EF4F24-403D-46FA-2784-498D8E604F51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  218 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ8";
	rename -uid "0DE7570C-43E1-D5B7-CD85-F2A19541A230";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  197 -24.711986082876322 218 -62.833869665135012
		 242 -24.711986082876322 267 -62.205409336961857 268 -62.205409336961857 296 -26.925449445587567
		 304 -24.711986082876322;
	setAttr -s 7 ".kit[0:6]"  1 18 18 18 1 18 1;
	setAttr -s 7 ".kot[0:6]"  1 18 18 18 1 18 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 0.94453667021719079 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0.32840596616843265 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.94453667021719068 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0.32840596616843265 0;
createNode animCurveTL -n "nurbsCircle1_translateX4";
	rename -uid "095C1560-43FB-5DBB-0E8C-A78320AD164B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  400 0 406 0 411 -20 416 -30 421 -30 431 -30
		 435 -50 440 -60 446 -60;
	setAttr -s 9 ".kit[4:8]"  2 18 18 18 18;
	setAttr -s 9 ".kot[4:8]"  2 18 18 18 18;
createNode mute -n "nurbsCircle1_translateX5";
	rename -uid "FC19C3A7-411B-BDC7-E066-819CF2EA3321";
	setAttr ".ihi" 0;
	setAttr ".h" 0;
	setAttr ".ht" 398;
	setAttr ".m" yes;
select -ne :time1;
	setAttr ".o" 422;
	setAttr ".unw" 422;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :initialShadingGroup;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "nurbsCircle1_rotateX.o" "IKFKLampRigRN.phl[1]";
connectAttr "nurbsCircle1_rotateY.o" "IKFKLampRigRN.phl[2]";
connectAttr "nurbsCircle1_rotateZ.o" "IKFKLampRigRN.phl[3]";
connectAttr "nurbsCircle1_rotateX3.o" "IKFKLampRigRN.phl[4]";
connectAttr "nurbsCircle1_rotateY3.o" "IKFKLampRigRN.phl[5]";
connectAttr "nurbsCircle1_rotateZ3.o" "IKFKLampRigRN.phl[6]";
connectAttr "nurbsCircle1_translateX5.o" "IKFKLampRigRN.phl[7]";
connectAttr "nurbsCircle1_translateY2.o" "IKFKLampRigRN.phl[8]";
connectAttr "nurbsCircle1_translateZ2.o" "IKFKLampRigRN.phl[9]";
connectAttr "nurbsCircle1_rotateX2.o" "IKFKLampRigRN.phl[10]";
connectAttr "nurbsCircle1_rotateY2.o" "IKFKLampRigRN.phl[11]";
connectAttr "nurbsCircle1_rotateZ2.o" "IKFKLampRigRN.phl[12]";
connectAttr "pairBlend1.otx" "IKFKLampRigRN.phl[13]";
connectAttr "pairBlend1.oty" "IKFKLampRigRN.phl[14]";
connectAttr "pairBlend1.otz" "IKFKLampRigRN.phl[15]";
connectAttr "pairBlend1.orz" "IKFKLampRigRN.phl[16]";
connectAttr "pairBlend1.orx" "IKFKLampRigRN.phl[17]";
connectAttr "pairBlend1.ory" "IKFKLampRigRN.phl[18]";
connectAttr "IKFKLampRigRN.phl[19]" "pairBlend1.w";
connectAttr "IKFKLampRigRN.phl[20]" "pairBlend1.irz2";
connectAttr "IKFKLampRigRN.phl[21]" "pairBlend1.irx2";
connectAttr "IKFKLampRigRN.phl[22]" "pairBlend1.iry2";
connectAttr "IKFKLampRigRN.phl[23]" "pairBlend1.itx2";
connectAttr "IKFKLampRigRN.phl[24]" "pairBlend1.ity2";
connectAttr "IKFKLampRigRN.phl[25]" "pairBlend1.itz2";
connectAttr "nurbsCircle1_translateX1.o" "IKFKLampRigRN.phl[26]";
connectAttr "nurbsCircle1_translateY1.o" "IKFKLampRigRN.phl[27]";
connectAttr "nurbsCircle1_translateZ1.o" "IKFKLampRigRN.phl[28]";
connectAttr "nurbsCircle1_rotateX1.o" "IKFKLampRigRN.phl[29]";
connectAttr "nurbsCircle1_rotateY1.o" "IKFKLampRigRN.phl[30]";
connectAttr "nurbsCircle1_rotateZ1.o" "IKFKLampRigRN.phl[31]";
connectAttr "nurbsCircle1_translateX.o" "IKFKLampRigRN.phl[32]";
connectAttr "nurbsCircle1_translateY.o" "IKFKLampRigRN.phl[33]";
connectAttr "nurbsCircle1_translateZ.o" "IKFKLampRigRN.phl[34]";
connectAttr "nurbsCircle1_rotateX5.o" "IKFKLampRigRN.phl[35]";
connectAttr "nurbsCircle1_rotateY5.o" "IKFKLampRigRN.phl[36]";
connectAttr "nurbsCircle1_rotateZ5.o" "IKFKLampRigRN.phl[37]";
connectAttr "nurbsCircle1_rotateZ6.o" "IKFKLampRigRN.phl[38]";
connectAttr "nurbsCircle1_rotateX8.o" "IKFKLampRigRN.phl[39]";
connectAttr "nurbsCircle1_rotateY8.o" "IKFKLampRigRN.phl[40]";
connectAttr "nurbsCircle1_rotateZ7.o" "IKFKLampRigRN.phl[41]";
connectAttr "nurbsCircle1_rotateX7.o" "IKFKLampRigRN.phl[42]";
connectAttr "nurbsCircle1_rotateY7.o" "IKFKLampRigRN.phl[43]";
connectAttr "nurbsCircle1_rotateY6.o" "IKFKLampRigRN.phl[44]";
connectAttr "nurbsCircle1_rotateX6.o" "IKFKLampRigRN.phl[45]";
connectAttr "nurbsCircle1_rotateZ8.o" "IKFKLampRigRN.phl[46]";
connectAttr "Switch_IK_FK_Switch.o" "IKFKLampRigRN.phl[47]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pairBlend1_inRotateX1.o" "pairBlend1.irx1";
connectAttr "pairBlend1_inRotateY1.o" "pairBlend1.iry1";
connectAttr "pairBlend1_inRotateZ1.o" "pairBlend1.irz1";
connectAttr "nurbsCircle1_translateX4.o" "nurbsCircle1_translateX5.i";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of IK_FK_Lamp_Animations.ma
