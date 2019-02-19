//Maya ASCII 2018 scene
//Name: Lamp02_animated_inPlace.ma
//Last modified: Mon, Feb 18, 2019 09:22:15 PM
//Codeset: 1252
file -rdi 1 -ns "lamp_model" -rfn "lamp_modelRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/10802160/Documents/Repos/DGM2211/Rigging//scenes/Lamps/01-lamp_model.ma";
file -rdi 1 -ns "Lamp01_Rig1" -rfn "Lamp01_RigRN1" -op "v=0;" -typ "mayaAscii"
		 "E:/School/Spring2019/DGM2211/Rigging//scenes/Lamps/Lamp01/Lamp01_Rig.ma";
file -rdi 2 -ns "lamp_model" -rfn "Lamp01_Rig1:lamp_modelRN" -op "v=0;" -typ
		 "mayaAscii" "C:/Users/10802160/Documents/Repos/DGM2211/Rigging//scenes/Lamps/01-lamp_model.ma";
file -r -ns "lamp_model" -dr 1 -rfn "lamp_modelRN" -op "v=0;" -typ "mayaAscii" "C:/Users/10802160/Documents/Repos/DGM2211/Rigging//scenes/Lamps/01-lamp_model.ma";
file -r -ns "Lamp01_Rig1" -dr 1 -rfn "Lamp01_RigRN1" -op "v=0;" -typ "mayaAscii"
		 "E:/School/Spring2019/DGM2211/Rigging//scenes/Lamps/Lamp01/Lamp01_Rig.ma";
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "1BF53AD7-449D-CF91-6C7F-42944BAD54E6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.6048818936956781 68.404943908600629 147.70615706886912 ;
	setAttr ".r" -type "double3" -14.738352722979728 363.39999999999088 -4.9783794943575651e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4DF9939C-48C3-03D0-F957-8394A8B4D32F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 173.35154363296309;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "A542976A-437D-F360-95EF-759E9778C52F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0272ADE1-4394-6669-B5C9-E6B5D4C81BED";
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
	rename -uid "21696B5E-4519-8CCC-F48D-6CB3176CD206";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "574B42B9-4130-827A-A0BE-509297B831D9";
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
	rename -uid "854922C4-4657-D7A0-148F-F8BC6A87C39B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CB16CBF9-4E09-1E25-1B89-1D9260005E18";
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
createNode transform -n "Lamp";
	rename -uid "B3BFEECF-4566-63CE-CEF9-C7BDFD360D11";
createNode transform -n "Joints" -p "Lamp";
	rename -uid "81551337-4D9C-6B32-7B16-63ADE0AF5220";
	setAttr ".v" no;
createNode joint -n "head_jnt" -p "Joints";
	rename -uid "656E3B59-46D9-BEC3-E568-73AF27C515D6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 2.9484083520249958e-06 -8.9157412164867649e-06 -36.597785519408468 ;
createNode joint -n "upper_arm_jnt" -p "head_jnt";
	rename -uid "9859A6A1-4EE0-DD18-8A73-298F887A583B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 8.7541341227963461e-06 -2.9172133079151652 ;
createNode joint -n "lower_arm_jnt" -p "upper_arm_jnt";
	rename -uid "1C6D386C-4BEE-C75D-418B-C6A1631A57E9";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 2.6358813244298464e-06 -2.2316761941046005e-06 -99.493974607759284 ;
createNode joint -n "base_jnt" -p "lower_arm_jnt";
	rename -uid "4E303B94-4975-21BB-44C7-53B40300EE01";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
createNode parentConstraint -n "base_jnt_parentConstraint1" -p "base_jnt";
	rename -uid "8EB63FB3-49F1-EA0D-F1F7-CFAC2ADD7C8F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.2434497875801753e-14 -2.3092638912203256e-14 
		-1.4398204850607499e-16 ;
	setAttr ".tg[0].tor" -type "double3" 1.4475167541562091e-06 1.6657043506043515e-06 
		-139.00897343508245 ;
	setAttr ".lr" -type "double3" 1.4475167541562093e-06 1.6657043506043518e-06 -34.626244074057929 ;
	setAttr ".rst" -type "double3" 15.244422114103024 5.773159728050814e-15 0 ;
	setAttr ".rsrr" -type "double3" -1.8957583197733865e-22 1.0523572678685566e-38 6.361109362927032e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "base_jnt_scaleConstraint1" -p "base_jnt";
	rename -uid "7ED05BE9-407B-32DB-B976-EEADD6676069";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "lower_arm_jnt_parentConstraint1" -p "lower_arm_jnt";
	rename -uid "885300C0-4C56-56BA-9228-8AB7FF97216B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_arm_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -5.3290705182007514e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 2.0753465543328805e-06 1.1201128390107452e-06 
		-139.00897343508242 ;
	setAttr ".lr" -type "double3" 9.3583682805402321e-07 2.0647599524977124e-06 89.463128943445014 ;
	setAttr ".rst" -type "double3" 16.72592261832477 -2.8421709430404007e-14 0 ;
	setAttr ".rsrr" -type "double3" -1.2141462015018854e-22 -1.1201128390107439e-06 
		5.1209725389961747e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "lower_arm_jnt_scaleConstraint1" -p "lower_arm_jnt";
	rename -uid "0E975A5F-44D1-1878-6006-3F8FDA9A0981";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_arm_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "upper_arm_jnt_parentConstraint1" -p "upper_arm_jnt";
	rename -uid "3AB9DB7D-4F71-EE5F-E03D-67915D97D117";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_arm_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.6125162578292134e-08 -7.5811646738088712e-07 
		-9.8011876392689601e-16 ;
	setAttr ".tg[0].tor" -type "double3" 3.3983362033500976e-06 -3.355234402867404e-15 
		-39.51499882732314 ;
	setAttr ".lr" -type "double3" 2.1583857204327422e-06 3.1640498970327545e-06 68.600425546091458 ;
	setAttr ".rst" -type "double3" 1.9152050803443501 3.5527136788005009e-15 0 ;
	setAttr ".rsrr" -type "double3" 7.5830332778130554e-22 3.3552335942079959e-15 -4.3732626870123044e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "upper_arm_jnt_scaleConstraint1" -p "upper_arm_jnt";
	rename -uid "F1617527-4B49-6056-4813-E4844449E8A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_arm_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "head_jnt_parentConstraint1" -p "head_jnt";
	rename -uid "51E1B179-4268-E75D-3FE7-898B7A3F7CE0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.882397615560194e-08 3.7224427984483555e-07 
		-6.7654215563095477e-17 ;
	setAttr ".tg[0].tor" -type "double3" 2.9484083520249958e-06 -8.9157412164867632e-06 
		-36.597785519408468 ;
	setAttr ".lr" -type "double3" -6.4415043932506305e-06 -8.8013214377593316e-06 -71.00297019201895 ;
	setAttr ".rst" -type "double3" -2.9342741778007797 24.597849264456194 -0.0088141262531281194 ;
	setAttr ".rsrr" -type "double3" -3.7915166395467701e-22 1.6356504614087523e-21 6.3611093629270012e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "head_jnt_scaleConstraint1" -p "head_jnt";
	rename -uid "162F2F55-4151-530E-311F-038E3D036AFD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "head_ctrl_grp3" -p "Lamp";
	rename -uid "B6D2EDF2-4687-6BC0-5B54-D1927B4FB2ED";
	setAttr ".rp" -type "double3" -8.8817841970012523e-15 0.82566559314727783 -0.0088141262531280518 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-15 0.82566559314727783 -0.0088141262531280518 ;
createNode transform -n "head_ctrl" -p "head_ctrl_grp3";
	rename -uid "13BB313C-4653-D18E-F2F7-8EA908D69434";
	setAttr ".rp" -type "double3" -2.9342741966247559 24.597848892211914 -0.0088141262531280518 ;
	setAttr ".sp" -type "double3" -2.9342741966247559 24.597848892211914 -0.0088141262531280518 ;
createNode nurbsCurve -n "head_ctrlShape" -p "head_ctrl";
	rename -uid "F6EEF15D-4B37-7314-D2DF-F89F9085FA0F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.33886244260539566 27.19326064623128 -0.0088141262531280691
		0.73619230585196771 24.597848892211914 -0.0088141262531282738
		-0.338862442605393 22.002437138192562 -0.0088141262531283571
		-2.9342741966247523 20.927382389735186 -0.008814126253128253
		-5.5296859506441169 22.002437138192562 -0.0088141262531280344
		-6.6047406991014839 24.597848892211914 -0.0088141262531278262
		-5.5296859506441187 27.19326064623128 -0.0088141262531277464
		-2.9342741966247594 28.268315394688642 -0.0088141262531278505
		-0.33886244260539566 27.19326064623128 -0.0088141262531280691
		0.73619230585196771 24.597848892211914 -0.0088141262531282738
		-0.338862442605393 22.002437138192562 -0.0088141262531283571
		;
createNode transform -n "upper_arm_ctrl_grp" -p "head_ctrl";
	rename -uid "D8EC563F-45C9-1744-77C0-ECAAA7220503";
	setAttr ".rp" -type "double3" -1.3966699838638306 23.456016540527344 -0.0088138282299041748 ;
	setAttr ".sp" -type "double3" -1.3966699838638306 23.456016540527344 -0.0088138282299041748 ;
createNode transform -n "upper_arm_ctrl" -p "upper_arm_ctrl_grp";
	rename -uid "BC036746-48A8-713B-9A0B-64BC74762955";
	setAttr ".rp" -type "double3" -1.3966699838638306 23.456016540527344 -0.0088138282299041748 ;
	setAttr ".sp" -type "double3" -1.3966699838638306 23.456016540527344 -0.0088138282299041748 ;
createNode nurbsCurve -n "upper_arm_ctrlShape" -p "upper_arm_ctrl";
	rename -uid "8016272A-4AA3-18DC-7290-979A42B00674";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.9621064536253523 25.814792978016527 -0.0088138282299041922
		1.9391436446394654 23.456016540527344 -0.0088138282299043795
		0.96210645362535496 21.09724010303816 -0.0088138282299044524
		-1.3966699838638279 20.120202912024041 -0.0088138282299043587
		-3.755446421353013 21.09724010303816 -0.0088138282299041609
		-4.7324836123671279 23.456016540527344 -0.0088138282299039701
		-3.7554464213530157 25.814792978016527 -0.0088138282299038972
		-1.3966699838638332 26.791830169030632 -0.0088138282299039909
		0.9621064536253523 25.814792978016527 -0.0088138282299041922
		1.9391436446394654 23.456016540527344 -0.0088138282299043795
		0.96210645362535496 21.09724010303816 -0.0088138282299044524
		;
createNode transform -n "lower_arm_ctrl_grp1" -p "upper_arm_ctrl";
	rename -uid "F71EE952-43ED-B1EE-A999-C68A6036AD37";
	setAttr ".rp" -type "double3" 11.506677627563477 12.813642501831055 -0.0088138282299041748 ;
	setAttr ".sp" -type "double3" 11.506677627563477 12.813642501831055 -0.0088138282299041748 ;
createNode transform -n "lower_arm_ctrl" -p "lower_arm_ctrl_grp1";
	rename -uid "B99C0FB1-4932-1C16-7567-E78425B6B445";
	setAttr ".rp" -type "double3" 11.506677627563477 12.813642501831055 -0.0088138282299041748 ;
	setAttr ".sp" -type "double3" 11.506677627563477 12.813642501831055 -0.0088138282299041748 ;
createNode nurbsCurve -n "lower_arm_ctrlShape" -p "lower_arm_ctrl";
	rename -uid "770FE607-4595-9251-4062-E4BE852D34B1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.055620104904111 14.362584979171693 -0.0088138282299041852
		13.697213086354381 12.813642501831055 -0.0088138282299043101
		13.055620104904115 11.26470002449042 -0.0088138282299043552
		11.506677627563477 10.62310704304015 -0.0088138282299042962
		9.9577351502228453 11.26470002449042 -0.0088138282299041644
		9.3161421687725721 12.813642501831055 -0.0088138282299040395
		9.9577351502228417 14.362584979171693 -0.0088138282299039944
		11.506677627563477 15.004177960621963 -0.0088138282299040534
		13.055620104904111 14.362584979171693 -0.0088138282299041852
		13.697213086354381 12.813642501831055 -0.0088138282299043101
		13.055620104904115 11.26470002449042 -0.0088138282299043552
		;
createNode transform -n "base_ctrl_grp2" -p "lower_arm_ctrl";
	rename -uid "F1A41EE2-4E18-EFE0-7A21-3EB8B5AC1490";
	setAttr ".rp" -type "double3" -8.8817841970012523e-15 2.8142037391662598 -0.0088141262531280518 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-15 2.8142037391662598 -0.0088141262531280518 ;
createNode transform -n "base_ctrl" -p "base_ctrl_grp2";
	rename -uid "B34F806D-445F-1BD2-6F35-3B8DF439AEC6";
	setAttr ".rp" -type "double3" -8.8817841970012523e-15 2.8142037391662598 -0.0088141262531280518 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-15 2.8142037391662598 -0.0088141262531280518 ;
createNode nurbsCurve -n "base_ctrlShape" -p "base_ctrl";
	rename -uid "EA1E51E9-4173-DCCB-FAEC-A19CF52568C0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6544492416895151 4.4686529808557864 -0.0088141262531280622
		2.3397445558551988 2.8142037391662598 -0.008814126253128194
		1.6544492416895169 1.1597544974767331 -0.008814126253128246
		-7.006561744600997e-15 0.47445918331104897 -0.0088141262531281801
		-1.6544492416895329 1.1597544974767331 -0.0088141262531280413
		-2.3397445558552183 2.8142037391662598 -0.0088141262531279095
		-1.6544492416895347 4.4686529808557864 -0.0088141262531278575
		-1.0757006649401511e-14 5.1539482950214701 -0.0088141262531279234
		1.6544492416895151 4.4686529808557864 -0.0088141262531280622
		2.3397445558551988 2.8142037391662598 -0.008814126253128194
		1.6544492416895169 1.1597544974767331 -0.008814126253128246
		;
createNode transform -n "pPlane1";
	rename -uid "18B4B913-4549-5922-72F8-4D83D314343A";
	setAttr ".t" -type "double3" -69.939083125008722 0 0 ;
	setAttr ".s" -type "double3" 501.04579180279342 1 199.61679887979207 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "5D9813D2-4E63-EC27-7711-3D8CC141232A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Pole";
	rename -uid "28687215-4369-347E-01EF-509F414DFF0D";
	setAttr ".rp" -type "double3" -83.594566055134976 0 0 ;
	setAttr ".sp" -type "double3" -83.594566055134976 0 0 ;
createNode transform -n "pCylinder1" -p "Pole";
	rename -uid "A22E29A5-4DF9-A0B5-8C97-21B8DC1161DF";
	setAttr ".rp" -type "double3" -83.821081518864602 24.24585822652918 -40.146171739952671 ;
	setAttr ".sp" -type "double3" -83.821081518864602 24.24585822652918 -40.146171739952671 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "36FA7737-4BCC-5D38-5776-0E94557F7E7B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder2" -p "Pole";
	rename -uid "DD01A4E3-41B4-72E6-F322-158F9343433C";
	setAttr ".rp" -type "double3" -83.821081518864602 24.24585822652918 41.433823382069995 ;
	setAttr ".sp" -type "double3" -83.821081518864602 24.24585822652918 41.433823382069995 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "BE6706EF-4DFA-7684-ABC0-9EB4A40352A8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.62640893 0.064408526
		 0.54828387 0.0076473951 0.45171607 0.00764741 0.37359107 0.064408556 0.34375 0.15625
		 0.37359107 0.24809146 0.4517161 0.3048526 0.54828393 0.3048526 0.62640893 0.24809146
		 0.65625 0.15625 0.375 0.3125 0.40000001 0.3125 0.42500001 0.3125 0.45000002 0.3125
		 0.47500002 0.3125 0.5 0.3125 0.52499998 0.3125 0.54999995 0.3125 0.57499993 0.3125
		 0.5999999 0.3125 0.62499988 0.3125 0.375 0.68843985 0.40000001 0.68843985 0.42500001
		 0.68843985 0.45000002 0.68843985 0.47500002 0.68843985 0.5 0.68843985 0.52499998
		 0.68843985 0.54999995 0.68843985 0.57499993 0.68843985 0.5999999 0.68843985 0.62499988
		 0.68843985 0.62640893 0.75190854 0.54828387 0.6951474 0.45171607 0.6951474 0.37359107
		 0.75190854 0.34375 0.84375 0.37359107 0.93559146 0.4517161 0.9923526 0.54828393 0.9923526
		 0.62640893 0.93559146 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  -84.04007 -22.460768 41.59293 
		-83.904732 -22.460768 41.691261 -83.737434 -22.460768 41.691261 -83.602089 -22.460768 
		41.59293 -83.550392 -22.460768 41.433823 -83.602089 -22.460768 41.274715 -83.737434 
		-22.460768 41.176384 -83.904732 -22.460768 41.176384 -84.04007 -22.460768 41.274715 
		-84.091766 -22.460768 41.433823 -84.04007 70.952484 41.59293 -83.904732 70.952484 
		41.691261 -83.737434 70.952484 41.691261 -83.602089 70.952484 41.59293 -83.550392 
		70.952484 41.433823 -83.602089 70.952484 41.274715 -83.737434 70.952484 41.176384 
		-83.904732 70.952484 41.176384 -84.04007 70.952484 41.274715 -84.091766 70.952484 
		41.433823 -83.821083 -22.460768 41.433823 -83.821083 70.952484 41.433823;
	setAttr -s 22 ".vt[0:21]"  0.80901706 -1 -0.58778542 0.30901694 -1 -0.95105672
		 -0.30901715 -1 -0.9510566 -0.80901718 -1 -0.58778524 -1.000000119209 -1 5.9604645e-08
		 -0.80901706 -1 0.58778536 -0.30901697 -1 0.9510566 0.30901703 -1 0.95105654 0.809017 -1 0.58778524
		 1 -1 0 0.80901706 1 -0.58778542 0.30901694 1 -0.95105672 -0.30901715 1 -0.9510566
		 -0.80901718 1 -0.58778524 -1.000000119209 1 5.9604645e-08 -0.80901706 1 0.58778536
		 -0.30901697 1 0.9510566 0.30901703 1 0.95105654 0.809017 1 0.58778524 1 1 0 0 -1 0
		 0 1 0;
	setAttr -s 50 ".ed[0:49]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 10 21 1 11 21 1
		 12 21 1 13 21 1 14 21 1 15 21 1 16 21 1 17 21 1 18 21 1 19 21 1;
	setAttr -s 30 -ch 100 ".fc[0:29]" -type "polyFaces" 
		f 4 0 21 -11 -21
		mu 0 4 10 11 22 21
		f 4 1 22 -12 -22
		mu 0 4 11 12 23 22
		f 4 2 23 -13 -23
		mu 0 4 12 13 24 23
		f 4 3 24 -14 -24
		mu 0 4 13 14 25 24
		f 4 4 25 -15 -25
		mu 0 4 14 15 26 25
		f 4 5 26 -16 -26
		mu 0 4 15 16 27 26
		f 4 6 27 -17 -27
		mu 0 4 16 17 28 27
		f 4 7 28 -18 -28
		mu 0 4 17 18 29 28
		f 4 8 29 -19 -29
		mu 0 4 18 19 30 29
		f 4 9 20 -20 -30
		mu 0 4 19 20 31 30
		f 3 -1 -31 31
		mu 0 3 1 0 42
		f 3 -2 -32 32
		mu 0 3 2 1 42
		f 3 -3 -33 33
		mu 0 3 3 2 42
		f 3 -4 -34 34
		mu 0 3 4 3 42
		f 3 -5 -35 35
		mu 0 3 5 4 42
		f 3 -6 -36 36
		mu 0 3 6 5 42
		f 3 -7 -37 37
		mu 0 3 7 6 42
		f 3 -8 -38 38
		mu 0 3 8 7 42
		f 3 -9 -39 39
		mu 0 3 9 8 42
		f 3 -10 -40 30
		mu 0 3 0 9 42
		f 3 10 41 -41
		mu 0 3 40 39 43
		f 3 11 42 -42
		mu 0 3 39 38 43
		f 3 12 43 -43
		mu 0 3 38 37 43
		f 3 13 44 -44
		mu 0 3 37 36 43
		f 3 14 45 -45
		mu 0 3 36 35 43
		f 3 15 46 -46
		mu 0 3 35 34 43
		f 3 16 47 -47
		mu 0 3 34 33 43
		f 3 17 48 -48
		mu 0 3 33 32 43
		f 3 18 49 -49
		mu 0 3 32 41 43
		f 3 19 40 -50
		mu 0 3 41 40 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder3" -p "Pole";
	rename -uid "B7CEF1FA-4F1F-87F9-FFED-1C8CEDC1AFAE";
	setAttr ".rp" -type "double3" -83.821081518864588 50.52218781399683 0.071118401371264281 ;
	setAttr ".sp" -type "double3" -83.821081518864588 50.52218781399683 0.071118401371264281 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "DDF32AFF-4329-F429-E0A0-57A48BD9DAE3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.62640893 0.064408526
		 0.54828387 0.0076473951 0.45171607 0.00764741 0.37359107 0.064408556 0.34375 0.15625
		 0.37359107 0.24809146 0.4517161 0.3048526 0.54828393 0.3048526 0.62640893 0.24809146
		 0.65625 0.15625 0.375 0.3125 0.40000001 0.3125 0.42500001 0.3125 0.45000002 0.3125
		 0.47500002 0.3125 0.5 0.3125 0.52499998 0.3125 0.54999995 0.3125 0.57499993 0.3125
		 0.5999999 0.3125 0.62499988 0.3125 0.375 0.68843985 0.40000001 0.68843985 0.42500001
		 0.68843985 0.45000002 0.68843985 0.47500002 0.68843985 0.5 0.68843985 0.52499998
		 0.68843985 0.54999995 0.68843985 0.57499993 0.68843985 0.5999999 0.68843985 0.62499988
		 0.68843985 0.62640893 0.75190854 0.54828387 0.6951474 0.45171607 0.6951474 0.37359107
		 0.75190854 0.34375 0.84375 0.37359107 0.93559146 0.4517161 0.9923526 0.54828393 0.9923526
		 0.62640893 0.93559146 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  -84.04007 51.950867 -47.047722 
		-83.904732 52.215805 -46.684452 -83.737434 52.215805 -46.684452 -83.602089 51.950867 
		-47.047722 -83.550392 51.522186 -47.635506 -83.602089 51.09351 -48.223293 -83.737434 
		50.828571 -48.586563 -83.904732 50.828571 -48.586563 -84.04007 51.09351 -48.223293 
		-84.091766 51.522186 -47.635506 -84.04007 49.950867 48.365528 -83.904732 50.215805 
		48.728802 -83.737434 50.215805 48.728802 -83.602089 49.950867 48.365528 -83.550392 
		49.522186 47.777744 -83.602089 49.09351 47.18996 -83.737434 48.828571 46.826687 -83.904732 
		48.828571 46.826687 -84.04007 49.09351 47.18996 -84.091766 49.522186 47.777744 -83.821083 
		51.522186 -47.635506 -83.821083 49.522186 47.777744;
	setAttr -s 22 ".vt[0:21]"  0.80901706 -1 -0.58778542 0.30901694 -1 -0.95105672
		 -0.30901715 -1 -0.9510566 -0.80901718 -1 -0.58778524 -1.000000119209 -1 5.9604645e-08
		 -0.80901706 -1 0.58778536 -0.30901697 -1 0.9510566 0.30901703 -1 0.95105654 0.809017 -1 0.58778524
		 1 -1 0 0.80901706 1 -0.58778542 0.30901694 1 -0.95105672 -0.30901715 1 -0.9510566
		 -0.80901718 1 -0.58778524 -1.000000119209 1 5.9604645e-08 -0.80901706 1 0.58778536
		 -0.30901697 1 0.9510566 0.30901703 1 0.95105654 0.809017 1 0.58778524 1 1 0 0 -1 0
		 0 1 0;
	setAttr -s 50 ".ed[0:49]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 10 21 1 11 21 1
		 12 21 1 13 21 1 14 21 1 15 21 1 16 21 1 17 21 1 18 21 1 19 21 1;
	setAttr -s 30 -ch 100 ".fc[0:29]" -type "polyFaces" 
		f 4 0 21 -11 -21
		mu 0 4 10 11 22 21
		f 4 1 22 -12 -22
		mu 0 4 11 12 23 22
		f 4 2 23 -13 -23
		mu 0 4 12 13 24 23
		f 4 3 24 -14 -24
		mu 0 4 13 14 25 24
		f 4 4 25 -15 -25
		mu 0 4 14 15 26 25
		f 4 5 26 -16 -26
		mu 0 4 15 16 27 26
		f 4 6 27 -17 -27
		mu 0 4 16 17 28 27
		f 4 7 28 -18 -28
		mu 0 4 17 18 29 28
		f 4 8 29 -19 -29
		mu 0 4 18 19 30 29
		f 4 9 20 -20 -30
		mu 0 4 19 20 31 30
		f 3 -1 -31 31
		mu 0 3 1 0 42
		f 3 -2 -32 32
		mu 0 3 2 1 42
		f 3 -3 -33 33
		mu 0 3 3 2 42
		f 3 -4 -34 34
		mu 0 3 4 3 42
		f 3 -5 -35 35
		mu 0 3 5 4 42
		f 3 -6 -36 36
		mu 0 3 6 5 42
		f 3 -7 -37 37
		mu 0 3 7 6 42
		f 3 -8 -38 38
		mu 0 3 8 7 42
		f 3 -9 -39 39
		mu 0 3 9 8 42
		f 3 -10 -40 30
		mu 0 3 0 9 42
		f 3 10 41 -41
		mu 0 3 40 39 43
		f 3 11 42 -42
		mu 0 3 39 38 43
		f 3 12 43 -43
		mu 0 3 38 37 43
		f 3 13 44 -44
		mu 0 3 37 36 43
		f 3 14 45 -45
		mu 0 3 36 35 43
		f 3 15 46 -46
		mu 0 3 35 34 43
		f 3 16 47 -47
		mu 0 3 34 33 43
		f 3 17 48 -48
		mu 0 3 33 32 43
		f 3 18 49 -49
		mu 0 3 32 41 43
		f 3 19 40 -50
		mu 0 3 41 40 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder4";
	rename -uid "83457FA0-423F-D896-512E-E39A73E02D1B";
	setAttr ".t" -type "double3" -1.0220073896468538 18.000000000000025 0 ;
	setAttr ".s" -type "double3" 1 67.27199162087453 1 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "22531EBE-4B0B-AA9D-7989-A88D6549AEE1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode fosterParent -n "lamp_modelRNfosterParent1";
	rename -uid "743E6CEF-4A6E-C9CB-2B12-7B9C8D47C63A";
createNode scaleConstraint -n "head_geo_scaleConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "E7B5090D-4570-C891-FD79-478C630164C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "head_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "1A8368B5-42CA-F5C8-9CC4-F7B21800AB0F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.6045210200879598 0.067339707133310611 4.1435320783864138e-08 ;
	setAttr ".tg[0].tor" -type "double3" 2.9484083520249958e-06 8.9157412164867666e-06 
		36.597785519408461 ;
	setAttr ".lr" -type "double3" 3.9655125087415544e-22 -3.1674927035716079e-21 -71.002970192020172 ;
	setAttr ".rst" -type "double3" -1.9984014443252818e-15 -1.0658141036401503e-14 1.7347234759768071e-18 ;
	setAttr ".rsrr" -type "double3" 1.5166066558187084e-21 1.2785190446386206e-21 -6.3611093629269696e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "upper_arm_geo_scaleConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "BCD43833-4E84-A12F-4A9E-8E9A88F6902E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_arm_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "upper_arm_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "8D67184A-45E6-A1CE-015D-2CB771476E4B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_arm_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 16.72592261832477 -2.4868995751603507e-14 -5.2041704279304213e-18 ;
	setAttr ".tg[0].tor" -type "double3" -2.6216738018282165e-06 2.1622940197409675e-06 
		39.514998827323097 ;
	setAttr ".lr" -type "double3" 2.1348706019333362e-15 2.5884194546855696e-15 -2.4025446459286979 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-15 -1.0658141036401503e-14 -3.1225022567582528e-17 ;
	setAttr ".rsrr" -type "double3" 3.791516639546771e-22 -1.6926541107334368e-22 6.3611093629270761e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "lower_arm_geo_scaleConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "6BEC256D-42D4-094C-8B80-4FAB1AE77B8A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_arm_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "lower_arm_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "A08A1445-463F-57E2-0B89-F08E7770BA5E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_arm_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.6914093560650727 -2.7777274080875713e-07 
		1.4717154940384336e-07 ;
	setAttr ".tg[0].tor" -type "double3" 8.3176941033043287e-07 2.2067794918752167e-06 
		139.00897343508245 ;
	setAttr ".lr" -type "double3" -8.6011598049582405e-07 1.459328546073536e-06 87.060584297516328 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 8.8817841970012523e-16 -6.4167421376382094e-15 ;
	setAttr ".rsrr" -type "double3" -8.3176941033043308e-07 -1.6498243986629569e-22 
		3.3881928197222589e-15 ;
	setAttr -k on ".w0";
createNode mesh -n "lower_arm_geoShapeDeformed" -p "lamp_modelRNfosterParent1";
	rename -uid "6167B436-4FC5-23AB-E8B5-398292D02C6F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:129]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 164 ".uvst[0].uvsp[0:163]" -type "float2" 0.36929849 0.76828945
		 0.42453945 0.71283531 0.5 0.69282889 0.57546055 0.71283525 0.5 0.8325904 0.63070154
		 0.76828945 0.64954191 0.83845329 0.60416663 0.68555015 0.34479091 0.83966649 0.35045809
		 0.83845323 0.34375 0.84375 0.47916672 0.68843985 0.50000006 0.68843985 0.36468354
		 0.765625 0.52083337 0.68843985 0.421875 0.70843351 0.54166669 0.68843985 0.5 0.6875
		 0.5625 0.68843985 0.578125 0.70843351 0.58333331 0.68843985 0.63531649 0.765625 0.60416663
		 0.68843985 0.65625 0.84375 0.60416663 0.68843985 0.5 0.83749998 0.50000006 0.3125
		 0.54166669 0.3125 0.65560228 0.16286854 0.59822887 0.30581859 0.52083337 0.31717542
		 0.50000006 0.68555015 0.5625 0.31717503 0.54166669 0.68555015 0.60416663 0.31717542
		 0.58333331 0.68555015 0.47748259 0.31910691 0.5 0.83221531 0.50000006 0.31717503
		 0.47916675 0.68555015 0.54166669 0.31717503 0.52083337 0.68555015 0.58333331 0.31717542
		 0.56250006 0.68555015 0.5 0.15855005 0.60456699 0.68434912 0.51997674 0.30581853
		 0.50191081 0.15745224 0.48167813 0.30781534 0.55993021 0.30581853 0.47916672 0.31717503
		 0.57990694 0.30581853 0.50000006 0.3125 0.52083337 0.3125 0.54166669 0.3125 0.5625
		 0.3125 0.58333331 0.3125 0.60416663 0.3125 0.65625 0.15625 0.47916672 0.3125 0.47916672
		 0.3125 0.5 0.15000001 0.375 0.31474137 0.3958334 0.31474134 0.39583337 0.68619841
		 0.375 0.68619841 0.41666669 0.31474137 0.41666669 0.68619841 0.4375 0.3147414 0.4375
		 0.68619835 0.45833337 0.31474137 0.45833337 0.68619841 0.47916672 0.31474137 0.47916672
		 0.68619841 0.5 0.3147414 0.49999997 0.68619835 0.52083337 0.31474137 0.52083337 0.68619817
		 0.54166675 0.31474134 0.54166669 0.68619841 0.5625 0.31474164 0.5625 0.68619841 0.58333337
		 0.31474134 0.58333343 0.68619841 0.60416663 0.31474137 0.60416669 0.68619841 0.62499994
		 0.3147414 0.62499994 0.68619841 0.57031322 0.033839021 0.62178618 0.085311264 0.5
		 0.15000001 0.5 0.014998627 0.42968678 0.033839021 0.37821382 0.085311264 0.35937342
		 0.15562506 0.37821385 0.22593834 0.42968678 0.2774111 0.5 0.29625148 0.57031322 0.2774111
		 0.62178618 0.22593834 0.64062655 0.15562506 0.62178618 0.91343892 0.57031322 0.9649111
		 0.5 0.83749998 0.5 0.98375148 0.42968678 0.9649111 0.37821382 0.91343892 0.35937342
		 0.84312505 0.37821385 0.77281177 0.42968678 0.72133899 0.5 0.70249861 0.57031322
		 0.72133899 0.62178618 0.77281177 0.64062655 0.84312505 0.375 0.3125 0.39583334 0.3125
		 0.63531649 0.078125 0.578125 0.020933539 0.41666669 0.3125 0.5 0 0.43750003 0.3125
		 0.421875 0.020933539 0.45833337 0.3125 0.36468354 0.078125 0.47916672 0.3125 0.34375
		 0.15625 0.50000006 0.3125 0.36468354 0.234375 0.52083337 0.3125 0.421875 0.29156646
		 0.54166669 0.3125 0.5 0.3125 0.5625 0.3125 0.578125 0.29156646 0.58333331 0.3125
		 0.63531649 0.234375 0.60416663 0.3125 0.65625 0.15625 0.62499994 0.3125 0.62499994
		 0.68843985 0.60416663 0.68843985 0.63531649 0.921875 0.65625 0.84375 0.578125 0.97906649
		 0.375 0.68843985 0.39583334 0.68843985 0.5 1 0.41666669 0.68843985 0.421875 0.97906649
		 0.43750003 0.68843985 0.36468354 0.921875 0.45833337 0.68843985 0.34375 0.84375 0.47916672
		 0.68843985 0.36468354 0.765625 0.50000006 0.68843985 0.421875 0.70843351 0.52083337
		 0.68843985 0.5 0.6875 0.54166669 0.68843985 0.578125 0.70843351 0.5625 0.68843985
		 0.63531649 0.765625 0.58333331 0.68843985;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 122 ".vt[0:121]"  12.07834053 12.72500229 -0.088813059 12.091342926 12.71004009 -0.066573218
		 12.075026512 12.69586086 -0.066573218 12.041824341 12.76702404 -0.3926149 12.050767899 12.75673103 -0.40412727
		 12.034450531 12.7425499 -0.40412727 11.93475342 12.89023399 -0.63129389 11.93991756 12.8842907 -0.65123385
		 11.92359924 12.87011147 -0.65123385 11.7884922 13.058542252 -0.7186566 11.7884922 13.058542252 -0.74168134
		 11.77217484 13.044361115 -0.74168134 11.64223099 13.22684956 -0.63129389 11.63706589 13.23279285 -0.65123385
		 11.62074852 13.21861172 -0.65123385 11.53515911 13.35006046 -0.3926149 11.5262146 13.36035347 -0.40412727
		 11.50989723 13.34617329 -0.40412727 11.49864292 13.39208221 -0.088813059 11.48564053 13.40704346 -0.066573218
		 11.46932316 13.39286327 -0.066573218 11.7884922 13.058542252 -0.088813059 11.7884922 13.058542252 -0.066573218
		 11.77217484 13.044361115 -0.066573218 -0.13478439 2.18912292 -0.39024809 -0.12400035 2.17671347 -0.40412727
		 -0.10376199 2.19430089 -0.40412727 -0.21461329 2.32186079 -0.65123385 -0.23485166 2.30427337 -0.65123385
		 -0.24107787 2.31143808 -0.62719452 -0.38627741 2.47852397 -0.71392304 -0.38627741 2.47852397 -0.74168134
		 -0.36603904 2.49611139 -0.74168134 -0.51746482 2.670362 -0.65123385 -0.53770316 2.65277433 -0.65123385
		 -0.53147691 2.64560962 -0.62719452 -0.63777041 2.76792502 -0.39024809 -0.64855444 2.78033471 -0.40412727
		 -0.6283161 2.79792213 -0.40412727 -0.67345375 2.8089869 -0.093385674 -0.68912882 2.82702494 -0.066573218
		 -0.66889036 2.84461212 -0.066573218 -0.099101089 2.1480608 -0.093385674 -0.083425917 2.130023 -0.066573218
		 -0.063187554 2.14761043 -0.066573218 -0.36603904 2.49611139 -0.066573218 -0.38627741 2.47852397 -0.066573218
		 -0.38627741 2.47852397 -0.093385674 11.50667667 12.81364346 -0.84840715 11.50667667 12.81364346 0.83077949
		 11.62065601 12.7738266 -0.83710575 11.62065601 12.7738266 -0.84840715 11.60925961 12.77780724 -0.84840715
		 11.62470436 12.83603668 -0.83710575 11.62470436 12.83603668 -0.84840715 11.61290359 12.8337965 -0.84840715
		 11.59712791 12.89224529 -0.83710575 11.59712791 12.89224529 -0.84840715 11.58808327 12.88438511 -0.84840715
		 11.54531479 12.92739296 -0.83710575 11.54531479 12.92739296 -0.84840715 11.5414505 12.91601944 -0.84840715
		 11.48314857 12.9320612 -0.83710575 11.48314857 12.9320612 -0.84840715 11.48550129 12.92022133 -0.84840715
		 11.4272871 12.90499973 -0.83710575 11.4272871 12.90499973 -0.84840715 11.43522549 12.89586449 -0.84840715
		 11.39269829 12.85345936 -0.83710575 11.39269829 12.85345936 -0.84840715 11.4040947 12.84947777 -0.84840715
		 11.38864994 12.79125023 -0.83710575 11.38864994 12.79125023 -0.84840715 11.40045071 12.7934885 -0.84840715
		 11.41622543 12.73504162 -0.83710575 11.41622543 12.73504162 -0.84840715 11.42527008 12.74289989 -0.84840715
		 11.46804047 12.69989204 -0.83710575 11.46804047 12.69989204 -0.84840715 11.47190285 12.71126652 -0.84840715
		 11.53020573 12.69522476 -0.83710575 11.53020573 12.69522476 -0.84840715 11.52785301 12.70706558 -0.84840715
		 11.5860672 12.72228527 -0.83710575 11.5860672 12.72228527 -0.84840715 11.57812786 12.73142052 -0.84840715
		 11.62065601 12.7738266 0.81947762 11.62065601 12.7738266 0.83077949 11.60925961 12.77780724 0.83077949
		 11.62470436 12.83603668 0.81947762 11.62470436 12.83603668 0.83077949 11.61290359 12.8337965 0.83077949
		 11.59712791 12.89224529 0.81947762 11.59712791 12.89224529 0.83077949 11.58808327 12.88438511 0.83077949
		 11.54531479 12.92739296 0.81947762 11.54531479 12.92739296 0.83077949 11.5414505 12.91601944 0.83077949
		 11.48314857 12.9320612 0.81947762 11.48314857 12.9320612 0.83077949 11.48550129 12.92022133 0.83077949
		 11.4272871 12.90499973 0.81947762 11.4272871 12.90499973 0.83077949 11.43522549 12.89586449 0.83077949
		 11.39269829 12.85345936 0.81947762 11.39269829 12.85345936 0.83077949 11.4040947 12.84947777 0.83077949
		 11.38864994 12.79125023 0.81947762 11.38864994 12.79125023 0.83077949 11.40045071 12.7934885 0.83077949
		 11.41622543 12.73504162 0.81947762 11.41622543 12.73504162 0.83077949 11.42527008 12.74289989 0.83077949
		 11.46804047 12.69989204 0.81947762 11.46804047 12.69989204 0.83077949 11.47190285 12.71126652 0.83077949
		 11.53020573 12.69522476 0.81947762 11.53020573 12.69522476 0.83077949 11.52785301 12.70706558 0.83077949
		 11.5860672 12.72228527 0.81947762 11.5860672 12.72228527 0.83077949 11.57812786 12.73142052 0.83077949;
	setAttr -s 248 ".ed";
	setAttr ".ed[0:165]"  4 3 1 3 0 1 2 5 1 5 4 0 2 1 0 23 2 1 1 0 1 0 21 1 7 6 1
		 6 3 1 5 8 1 8 7 0 10 9 1 9 6 1 8 11 1 11 10 0 13 12 1 12 9 1 11 14 1 14 13 0 16 15 1
		 15 12 1 14 17 1 17 16 0 19 18 1 18 15 1 17 20 1 20 19 0 22 21 1 21 18 1 20 23 1 23 22 1
		 6 21 1 12 21 1 1 4 0 4 7 0 7 10 0 10 13 0 13 16 0 16 19 0 19 22 0 1 22 0 43 42 1
		 42 24 1 26 44 1 44 43 0 26 25 1 25 28 0 28 27 1 27 26 1 25 24 1 24 29 1 29 28 1 32 27 1
		 29 30 1 32 31 0 31 34 0 34 33 1 33 32 1 31 30 1 30 35 1 35 34 1 38 33 1 35 36 1 38 37 1
		 41 38 1 37 36 1 36 39 1 41 40 0 40 46 0 46 45 1 45 41 1 40 39 1 39 47 1 47 46 1 47 42 1
		 44 45 1 27 8 1 5 26 1 33 14 1 11 32 0 41 20 0 17 38 1 44 2 0 23 45 1 47 35 1 29 47 1
		 25 43 0 28 31 0 34 37 0 37 40 0 43 46 0 54 53 0 53 50 1 52 55 1 55 54 1 52 51 1 85 52 1
		 51 50 1 50 83 1 57 56 1 56 53 1 55 58 1 58 57 1 60 59 0 59 56 1 58 61 1 61 60 1 63 62 1
		 62 59 1 61 64 1 64 63 1 66 65 0 65 62 1 64 67 1 67 66 1 69 68 1 68 65 1 67 70 1 70 69 1
		 72 71 0 71 68 1 70 73 1 73 72 1 75 74 1 74 71 1 73 76 1 76 75 1 78 77 0 77 74 1 76 79 1
		 79 78 1 81 80 1 80 77 1 79 82 1 82 81 1 84 83 0 83 80 1 82 85 1 85 84 1 120 119 0
		 119 86 1 88 121 1 121 120 1 88 87 1 91 88 1 87 86 1 86 89 1 91 90 1 94 91 1 90 89 0
		 89 92 1 94 93 1 97 94 1 93 92 1 92 95 1 97 96 1 100 97 1 96 95 0 95 98 1 100 99 1
		 103 100 1 99 98 1 98 101 1 103 102 1 106 103 1;
	setAttr ".ed[166:247]" 102 101 0 101 104 1 106 105 1 109 106 1 105 104 1 104 107 1
		 109 108 1 112 109 1 108 107 0 107 110 1 112 111 1 115 112 1 111 110 1 110 113 1 115 114 1
		 118 115 1 114 113 0 113 116 1 118 117 1 121 118 1 117 116 1 116 119 1 53 89 0 86 50 1
		 56 92 1 59 95 0 62 98 1 65 101 1 68 104 1 71 107 0 74 110 1 77 113 0 80 116 1 83 119 1
		 52 48 1 48 55 1 48 58 1 48 61 1 48 64 1 48 67 1 48 70 1 48 73 1 48 76 1 48 79 1 48 82 1
		 48 85 1 91 49 1 49 88 1 94 49 1 97 49 1 100 49 1 103 49 1 106 49 1 109 49 1 112 49 1
		 115 49 1 118 49 1 121 49 1 51 54 0 54 57 0 57 60 0 60 63 0 63 66 0 66 69 0 69 72 0
		 72 75 0 75 78 0 78 81 0 81 84 0 51 84 0 87 120 0 87 90 0 90 93 0 93 96 0 96 99 0
		 99 102 0 102 105 0 105 108 0 108 111 0 111 114 0 114 117 0 117 120 0;
	setAttr -s 130 -ch 496 ".fc[0:129]" -type "polyFaces" 
		f 4 -8 -2 -10 32
		mu 0 4 4 9 0 1
		f 4 -33 -14 -18 33
		mu 0 4 4 1 2 3
		f 4 -34 -22 -26 -30
		mu 0 4 4 3 5 6
		f 4 -7 34 0 1
		mu 0 4 9 10 13 0
		f 4 -5 2 3 -35
		mu 0 4 11 39 31 12
		f 4 -1 35 8 9
		mu 0 4 0 13 15 1
		f 4 -4 10 11 -36
		mu 0 4 12 31 41 14
		f 4 -9 36 12 13
		mu 0 4 1 15 17 2
		f 4 -12 14 15 -37
		mu 0 4 14 41 33 16
		f 4 -13 37 16 17
		mu 0 4 2 17 19 3
		f 4 -16 18 19 -38
		mu 0 4 16 33 43 18
		f 4 -17 38 20 21
		mu 0 4 3 19 21 5
		f 4 -20 22 23 -39
		mu 0 4 18 43 35 20
		f 4 -21 39 24 25
		mu 0 4 5 21 23 6
		f 4 -24 26 27 -40
		mu 0 4 20 35 7 24
		f 4 -25 40 28 29
		mu 0 4 6 23 25 4
		f 4 -28 30 31 -41
		mu 0 4 22 45 37 25
		f 4 4 41 -32 5
		mu 0 4 8 10 25 37
		f 4 6 7 -29 -42
		mu 0 4 10 9 4 25
		f 4 46 47 48 49
		mu 0 4 38 52 53 30
		f 4 50 51 52 -48
		mu 0 4 52 26 46 53
		f 4 55 56 57 58
		mu 0 4 40 54 55 32
		f 4 59 60 61 -57
		mu 0 4 54 27 49 55
		f 4 68 69 70 71
		mu 0 4 28 58 61 44
		f 4 72 73 74 -70
		mu 0 4 57 29 47 61
		f 4 -50 77 -11 78
		mu 0 4 38 30 41 31
		f 4 -59 79 -19 80
		mu 0 4 40 32 43 33
		f 4 -66 81 -27 82
		mu 0 4 42 34 7 35
		f 4 -77 83 -6 84
		mu 0 4 44 36 8 37
		f 4 -45 -79 -3 -84
		mu 0 4 50 38 31 39
		f 4 -54 -81 -15 -78
		mu 0 4 30 40 33 41
		f 4 -63 -83 -23 -80
		mu 0 4 32 42 35 43
		f 4 -72 -85 -31 -82
		mu 0 4 28 44 37 45
		f 4 85 -61 -55 86
		mu 0 4 47 49 27 46
		f 4 -87 -52 -44 -76
		mu 0 4 47 46 26 48
		f 4 -68 -64 -86 -74
		mu 0 4 29 51 49 47
		f 4 -51 87 42 43
		mu 0 4 26 52 59 48
		f 4 -47 44 45 -88
		mu 0 4 52 38 50 60
		f 4 -49 88 -56 53
		mu 0 4 30 53 54 40
		f 4 -53 54 -60 -89
		mu 0 4 53 46 27 54
		f 4 -58 89 -65 62
		mu 0 4 32 55 56 42
		f 4 -62 63 -67 -90
		mu 0 4 55 49 51 56
		f 4 64 90 -69 65
		mu 0 4 42 56 57 34
		f 4 66 67 -73 -91
		mu 0 4 56 51 29 57
		f 4 -43 91 -75 75
		mu 0 4 48 59 61 47
		f 4 -46 76 -71 -92
		mu 0 4 59 36 44 61
		f 4 -94 188 -148 189
		mu 0 4 62 63 64 65
		f 4 -102 190 -152 -189
		mu 0 4 63 66 67 64
		f 4 -106 191 -156 -191
		mu 0 4 66 68 69 67
		f 4 -110 192 -160 -192
		mu 0 4 68 70 71 69
		f 4 -114 193 -164 -193
		mu 0 4 70 72 73 71
		f 4 -118 194 -168 -194
		mu 0 4 72 74 75 73
		f 4 -122 195 -172 -195
		mu 0 4 74 76 77 75
		f 4 -126 196 -176 -196
		mu 0 4 76 78 79 77
		f 4 -130 197 -180 -197
		mu 0 4 78 80 81 79
		f 4 -134 198 -184 -198
		mu 0 4 80 82 83 81
		f 4 -138 199 -188 -199
		mu 0 4 82 84 85 83
		f 4 -100 -190 -142 -200
		mu 0 4 84 86 87 85
		f 3 -95 200 201
		mu 0 3 88 89 90
		f 3 -103 -202 202
		mu 0 3 91 88 90
		f 3 -107 -203 203
		mu 0 3 92 91 90
		f 3 -111 -204 204
		mu 0 3 93 92 90
		f 3 -115 -205 205
		mu 0 3 94 93 90
		f 3 -119 -206 206
		mu 0 3 95 94 90
		f 3 -123 -207 207
		mu 0 3 96 95 90
		f 3 -127 -208 208
		mu 0 3 97 96 90
		f 3 -131 -209 209
		mu 0 3 98 97 90
		f 3 -135 -210 210
		mu 0 3 99 98 90
		f 3 -139 -211 211
		mu 0 3 100 99 90
		f 3 -98 -212 -201
		mu 0 3 89 100 90
		f 3 -146 212 213
		mu 0 3 101 102 103
		f 3 -150 214 -213
		mu 0 3 102 104 103
		f 3 -154 215 -215
		mu 0 3 104 105 103
		f 3 -158 216 -216
		mu 0 3 105 106 103
		f 3 -162 217 -217
		mu 0 3 106 107 103
		f 3 -166 218 -218
		mu 0 3 107 108 103
		f 3 -170 219 -219
		mu 0 3 108 109 103
		f 3 -174 220 -220
		mu 0 3 109 110 103
		f 3 -178 221 -221
		mu 0 3 110 111 103
		f 3 -182 222 -222
		mu 0 3 111 112 103
		f 3 -186 223 -223
		mu 0 3 112 113 103
		f 3 -143 -214 -224
		mu 0 3 113 101 103
		f 4 -99 224 92 93
		mu 0 4 62 114 115 63
		f 4 -97 94 95 -225
		mu 0 4 116 89 88 117
		f 4 -93 225 100 101
		mu 0 4 63 115 118 66
		f 4 -96 102 103 -226
		mu 0 4 117 88 91 119
		f 4 -101 226 104 105
		mu 0 4 66 118 120 68
		f 4 -104 106 107 -227
		mu 0 4 119 91 92 121
		f 4 -105 227 108 109
		mu 0 4 68 120 122 70
		f 4 -108 110 111 -228
		mu 0 4 121 92 93 123
		f 4 -109 228 112 113
		mu 0 4 70 122 124 72
		f 4 -112 114 115 -229
		mu 0 4 123 93 94 125
		f 4 -113 229 116 117
		mu 0 4 72 124 126 74
		f 4 -116 118 119 -230
		mu 0 4 125 94 95 127
		f 4 -117 230 120 121
		mu 0 4 74 126 128 76
		f 4 -120 122 123 -231
		mu 0 4 127 95 96 129
		f 4 -121 231 124 125
		mu 0 4 76 128 130 78
		f 4 -124 126 127 -232
		mu 0 4 129 96 97 131
		f 4 -125 232 128 129
		mu 0 4 78 130 132 80
		f 4 -128 130 131 -233
		mu 0 4 131 97 98 133
		f 4 -129 233 132 133
		mu 0 4 80 132 134 82
		f 4 -132 134 135 -234
		mu 0 4 133 98 99 135
		f 4 -133 234 136 137
		mu 0 4 82 134 136 84
		f 4 -136 138 139 -235
		mu 0 4 135 99 100 137
		f 4 96 235 -140 97
		mu 0 4 89 116 137 100
		f 4 98 99 -137 -236
		mu 0 4 138 86 84 136
		f 4 -147 236 140 141
		mu 0 4 87 139 140 85
		f 4 -145 142 143 -237
		mu 0 4 141 101 113 142
		f 4 144 237 -149 145
		mu 0 4 101 141 143 102
		f 4 146 147 -151 -238
		mu 0 4 144 65 64 145
		f 4 148 238 -153 149
		mu 0 4 102 143 146 104
		f 4 150 151 -155 -239
		mu 0 4 145 64 67 147
		f 4 152 239 -157 153
		mu 0 4 104 146 148 105
		f 4 154 155 -159 -240
		mu 0 4 147 67 69 149
		f 4 156 240 -161 157
		mu 0 4 105 148 150 106
		f 4 158 159 -163 -241
		mu 0 4 149 69 71 151
		f 4 160 241 -165 161
		mu 0 4 106 150 152 107
		f 4 162 163 -167 -242
		mu 0 4 151 71 73 153
		f 4 164 242 -169 165
		mu 0 4 107 152 154 108
		f 4 166 167 -171 -243
		mu 0 4 153 73 75 155
		f 4 168 243 -173 169
		mu 0 4 108 154 156 109
		f 4 170 171 -175 -244
		mu 0 4 155 75 77 157
		f 4 172 244 -177 173
		mu 0 4 109 156 158 110
		f 4 174 175 -179 -245
		mu 0 4 157 77 79 159
		f 4 176 245 -181 177
		mu 0 4 110 158 160 111
		f 4 178 179 -183 -246
		mu 0 4 159 79 81 161
		f 4 180 246 -185 181
		mu 0 4 111 160 162 112
		f 4 182 183 -187 -247
		mu 0 4 161 81 83 163
		f 4 184 247 -144 185
		mu 0 4 112 162 142 113
		f 4 186 187 -141 -248
		mu 0 4 163 83 85 140;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode scaleConstraint -n "base_geo_scaleConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "0F310B94-4F92-EA6C-90ED-D8B9BC4B7466";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "base_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "227E27E9-4859-280A-FC25-88B7A0375D78";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.76249032787796001 0.87742228423115787 0.0088140949797714668 ;
	setAttr ".tg[0].tor" -type "double3" 1.5664971481005335e-06 1.3613045234532397e-06 
		139.00897343508245 ;
	setAttr ".lr" -type "double3" 1.5664971481005341e-06 -8.4547497101039865e-07 52.434340223458463 ;
	setAttr ".rst" -type "double3" -1.3350041922456534e-10 1.5361756311449426e-10 -1.4398115371835885e-08 ;
	setAttr ".rsrr" -type "double3" -5.2617863393427865e-39 9.4787915988669299e-23 -6.3611093629270375e-15 ;
	setAttr -k on ".w0";
createNode mesh -n "base_geoShapeDeformed" -p "lamp_modelRNfosterParent1";
	rename -uid "17CED894-4621-1DAF-9501-15ADDE87A222";
	setAttr -k off ".v";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:182]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 247 ".uvst[0].uvsp[0:246]" -type "float2" 0.3958334 0.31474134
		 0.375 0.68619841 0.41666669 0.31474137 0.39583337 0.68619841 0.4375 0.3147414 0.41666669
		 0.68619841 0.45833337 0.31474137 0.4375 0.68619835 0.47916672 0.31474137 0.45833337
		 0.68619841 0.5 0.3147414 0.47916672 0.68619841 0.52083337 0.31474137 0.49999997 0.68619835
		 0.54166675 0.31474134 0.52083337 0.68619817 0.5625 0.31474164 0.54166669 0.68619841
		 0.58333337 0.31474134 0.5625 0.68619841 0.60416663 0.31474137 0.58333343 0.68619841
		 0.62499994 0.3147414 0.60416669 0.68619841 0.62178618 0.085311264 0.57031322 0.033839021
		 0.5 0.014998627 0.42968678 0.033839021 0.37821382 0.085311264 0.35937342 0.15562506
		 0.37821385 0.22593834 0.42968678 0.2774111 0.5 0.29625148 0.57031322 0.2774111 0.62178618
		 0.22593834 0.5 0.15000001 0.64062655 0.15562506 0.57031322 0.9649111 0.5 0.98375148
		 0.42968678 0.9649111 0.37821382 0.91343892 0.35937342 0.84312505 0.37821385 0.77281177
		 0.42968678 0.72133899 0.5 0.70249861 0.57031322 0.72133899 0.62178618 0.77281177
		 0.64062655 0.84312505 0.62178618 0.91343892 0.5 0.83749998 0.375 0.31474137 0.62499994
		 0.68619841 0.62499994 0.3125 0.63531649 0.078125 0.375 0.3125 0.578125 0.020933539
		 0.39583334 0.3125 0.5 0 0.41666669 0.3125 0.421875 0.020933539 0.43750003 0.3125
		 0.36468354 0.078125 0.45833337 0.3125 0.34375 0.15625 0.47916672 0.3125 0.36468354
		 0.234375 0.50000006 0.3125 0.421875 0.29156646 0.52083337 0.3125 0.5 0.3125 0.54166669
		 0.3125 0.578125 0.29156646 0.5625 0.3125 0.63531649 0.234375 0.58333331 0.3125 0.65625
		 0.15625 0.60416663 0.3125 0.375 0.68843985 0.63531649 0.921875 0.62499994 0.68843985
		 0.39583334 0.68843985 0.578125 0.97906649 0.41666669 0.68843985 0.5 1 0.43750003
		 0.68843985 0.421875 0.97906649 0.45833337 0.68843985 0.36468354 0.921875 0.47916672
		 0.68843985 0.34375 0.84375 0.50000006 0.68843985 0.36468354 0.765625 0.52083337 0.68843985
		 0.421875 0.70843351 0.54166669 0.68843985 0.5 0.6875 0.5625 0.68843985 0.578125 0.70843351
		 0.58333331 0.68843985 0.63531649 0.765625 0.65625 0.84375 0.60416663 0.68843985 0.62499994
		 0.53807896 0.62469339 0.68843979 0.60444194 0.6834718 0.60416663 0.53807908 0.37527531
		 0.68347186 0.375 0.53807896 0.39583334 0.53807902 0.39552683 0.68843985 0.39610866
		 0.6834718 0.41666669 0.53807908 0.41636014 0.68843979 0.416942 0.6834718 0.4375 0.53807896
		 0.43719348 0.68843979 0.43777537 0.68347186 0.45833337 0.53807896 0.45802686 0.68843985
		 0.45860869 0.6834718 0.47916672 0.53807908 0.47886017 0.68843979 0.47944203 0.6834718
		 0.50000006 0.53807896 0.49969354 0.68843979 0.50027537 0.68347186 0.52083337 0.53807902
		 0.52052683 0.68843985 0.52110869 0.6834718 0.54166669 0.53807908 0.54136014 0.68843979
		 0.541942 0.6834718 0.5625 0.53807896 0.56219345 0.68843979 0.56277531 0.68347186
		 0.58333331 0.53807896 0.58302683 0.68843985 0.58360863 0.6834718 0.60386008 0.68843979
		 0.62692481 0.91664249 0.5732801 0.97028726 0.5 0.83749998 0.5 0.98992252 0.42671993
		 0.97028726 0.37307519 0.91664249 0.35343987 0.84336239 0.37307519 0.77008235 0.42671993
		 0.71643758 0.5 0.69680226 0.5732801 0.71643758 0.62692481 0.77008235 0.64656013 0.84336239
		 0.57746351 0.022026401 0.63417071 0.078733593 0.5 0.15000001 0.5 0.0012701154 0.42253652
		 0.022026401 0.36582932 0.078733593 0.34507304 0.15619707 0.36582932 0.23366056 0.42253652
		 0.29036775 0.5 0.31112403 0.57746351 0.29036775 0.63417071 0.23366056 0.65492696
		 0.15619707 0.375 0.33505559 0.39583334 0.33505559 0.41666669 0.33505568 0.43750003
		 0.33505559 0.45833337 0.33505559 0.47916672 0.33505568 0.50000006 0.33505559 0.52083337
		 0.33505559 0.54166669 0.33505568 0.5625 0.33505559 0.58333331 0.33505559 0.60416663
		 0.33505568 0.62499994 0.33505559 0.63531649 0.078125 0.65625 0.15625 0.62499994 0.3125
		 0.60416663 0.3125 0.375 0.3125 0.39583334 0.3125 0.578125 0.020933539 0.41666669
		 0.3125 0.5 0 0.43750003 0.3125 0.421875 0.020933539 0.45833337 0.3125 0.36468354
		 0.078125 0.47916672 0.3125 0.34375 0.15625 0.50000006 0.3125 0.36468354 0.234375
		 0.52083337 0.3125 0.421875 0.29156646 0.54166669 0.3125 0.5 0.3125 0.5625 0.3125
		 0.578125 0.29156646 0.58333331 0.3125 0.63531649 0.234375 0.50000006 0.3125 0.52083337
		 0.3125 0.52083337 0.68555015 0.50000006 0.68555015 0.54166669 0.3125 0.5625 0.3125
		 0.56250006 0.68555015 0.54166669 0.68555015 0.58333331 0.3125 0.60416663 0.3125 0.60416663
		 0.68555015 0.58333331 0.68555015 0.5 0.15000001 0.47916672 0.3125 0.34479091 0.83966649
		 0.5 0.83221531 0.47916672 0.3125 0.47916675 0.68555015 0.65625 0.15625 0.60456699
		 0.68434912 0.5 0.8325904 0.35045809 0.83845323 0.36929849 0.76828945 0.42453945 0.71283531
		 0.5 0.69282889 0.57546055 0.71283525 0.63070154 0.76828945 0.64954191 0.83845329
		 0.34375 0.84375 0.36468354 0.765625 0.47916672 0.68843985 0.50000006 0.68843985 0.421875
		 0.70843351 0.52083337 0.68843985 0.5 0.6875 0.54166669 0.68843985 0.578125 0.70843351
		 0.5625 0.68843985 0.63531649 0.765625 0.58333331 0.68843985 0.65625 0.84375 0.60416663
		 0.68843985 0.5 0.83749998 0.60416663 0.68843985;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 168 ".vt";
	setAttr ".vt[0:165]"  0 2.8142035 -0.84840763 0 2.8142035 0.83077937 0.10481718 2.87411952 -0.83710551
		 0.10481718 2.87411952 -0.84840763 0.09433651 2.86812878 -0.84840763 0.060516223 2.91798115 -0.83710551
		 0.060516223 2.91798115 -0.84840763 0.054465219 2.90760422 -0.84840763 0 2.9340353 -0.83710551
		 0 2.9340353 -0.84840763 0 2.9220531 -0.84840763 -0.060516223 2.91798115 -0.83710551
		 -0.060516223 2.91798115 -0.84840763 -0.054465219 2.90760422 -0.84840763 -0.10481718 2.87411952 -0.83710551
		 -0.10481718 2.87411952 -0.84840763 -0.09433651 2.86812878 -0.84840763 -0.12103245 2.8142035 -0.83710551
		 -0.12103245 2.8142035 -0.84840763 -0.10893044 2.8142035 -0.84840763 -0.10481718 2.7542882 -0.83710551
		 -0.10481718 2.7542882 -0.84840763 -0.09433651 2.76027918 -0.84840763 -0.060516223 2.71042681 -0.83710551
		 -0.060516223 2.71042681 -0.84840763 -0.054465219 2.72080302 -0.84840763 0 2.69437242 -0.83710551
		 0 2.69437242 -0.84840763 0 2.70635414 -0.84840763 0.060516223 2.71042681 -0.83710551
		 0.060516223 2.71042681 -0.84840763 0.054465219 2.72080302 -0.84840763 0.10481718 2.7542882 -0.83710551
		 0.10481718 2.7542882 -0.84840763 0.09433651 2.76027918 -0.84840763 0.12103245 2.8142035 -0.83710551
		 0.12103245 2.8142035 -0.84840763 0.10893044 2.8142035 -0.84840763 0.10481718 2.87411952 0.81947744
		 0.10481718 2.87411952 0.83077937 0.09433651 2.86812878 0.83077937 0.060516223 2.91798115 0.81947744
		 0.060516223 2.91798115 0.83077937 0.054465219 2.90760422 0.83077937 0 2.9340353 0.81947744
		 0 2.9340353 0.83077937 0 2.9220531 0.83077937 -0.060516223 2.91798115 0.81947744
		 -0.060516223 2.91798115 0.83077937 -0.054465219 2.90760422 0.83077937 -0.10481718 2.87411952 0.81947744
		 -0.10481718 2.87411952 0.83077937 -0.09433651 2.86812878 0.83077937 -0.12103245 2.8142035 0.81947744
		 -0.12103245 2.8142035 0.83077937 -0.10893044 2.8142035 0.83077937 -0.10481718 2.7542882 0.81947744
		 -0.10481718 2.7542882 0.83077937 -0.09433651 2.76027918 0.83077937 -0.060516223 2.71042681 0.81947744
		 -0.060516223 2.71042681 0.83077937 -0.054465219 2.72080302 0.83077937 0 2.69437242 0.81947744
		 0 2.69437242 0.83077937 0 2.70635414 0.83077937 0.060516223 2.71042681 0.81947744
		 0.060516223 2.71042681 0.83077937 0.054465219 2.72080302 0.83077937 0.10481718 2.7542882 0.81947744
		 0.10481718 2.7542882 0.83077937 0.09433651 2.76027918 0.83077937 0.12103245 2.8142035 0.81947744
		 0.12103245 2.8142035 0.83077937 0.10893044 2.8142035 0.83077937 0 0 0 0 1.3098855 0
		 5.99288321 0.7674275 -3.45999241 5.40786743 1.3098855 -3.12223363 3.45999241 0.7674275 -5.99288321
		 3.12223363 1.3098855 -5.40786743 0 0.76742738 -6.91998482 0 1.3098855 -6.24446726
		 -3.45999241 0.7674275 -5.99288321 -3.12223363 1.3098855 -5.40786743 -5.99288321 0.7674275 -3.45999241
		 -5.40786743 1.3098855 -3.12223363 -6.91998482 0.76742738 0 -6.24446726 1.3098855 0
		 -5.99288321 0.7674275 3.45999241 -5.40786743 1.3098855 3.12223363 -3.45999241 0.7674275 5.99288321
		 -3.12223363 1.3098855 5.40786743 0 0.76742738 6.91998482 0 1.3098855 6.24446726 3.45999241 0.7674275 5.99288321
		 3.12223363 1.3098855 5.40786743 5.99288321 0.7674275 3.45999241 5.40786743 1.3098855 3.12223363
		 6.91998482 0.76742738 0 6.24446726 1.3098855 0 6.28051424 0 -3.62605667 6.33414936 0 -3.65702271
		 6.30002642 0.046153635 -3.63732171 3.62605667 0 -6.28051424 3.65702271 0 -6.33414936
		 3.63732171 0.046153642 -6.30002642 0 0 -7.25211334 0 0 -7.31404543 0 0.046153646 -7.27464342
		 -3.62605667 0 -6.28051424 -3.65702271 0 -6.33414936 -3.63732171 0.046153635 -6.30002642
		 -6.28051424 0 -3.62605667 -6.33414936 0 -3.65702271 -6.30002642 0.046153642 -3.63732171
		 -7.25211334 0 0 -7.31404543 0 0 -7.27464342 0.046153646 0 -6.28051424 0 3.62605667
		 -6.33414936 0 3.65702271 -6.30002642 0.046153635 3.63732171 -3.62605667 0 6.28051424
		 -3.65702271 0 6.33414936 -3.63732171 0.046153642 6.30002642 0 0 7.25211334 0 0 7.31404543
		 0 0.046153646 7.27464342 3.62605667 0 6.28051424 3.65702271 0 6.33414936 3.63732171 0.046153635 6.30002642
		 6.28051424 0 3.62605667 6.33414936 0 3.65702271 6.30002642 0.046153642 3.63732171
		 7.25211334 0 0 7.31404543 0 0 7.27464342 0.046153646 0 -0.67510784 1.14255559 0.066573218
		 -0.58466047 1.14255559 0.40412712 -0.33755392 1.14255559 0.65123373 0 1.14255559 0.7416811
		 0.33755392 1.14255559 0.65123373 0.58466047 1.14255559 0.40412712 0.67510784 1.14255559 0.066573218
		 -3.2976258e-34 1.14255559 0.066573218 -0.64612436 3.30353212 0.088813052 -0.67510784 3.30353212 0.066573218
		 -0.67510784 3.28191447 0.066573218 -0.56472075 3.30353212 0.39261496 -0.58466047 3.30353212 0.40412712
		 -0.58466047 3.28191447 0.40412712 -0.32604173 3.30353212 0.63129395 -0.33755392 3.30353212 0.65123373
		 -0.33755392 3.28191447 0.65123373 0 3.30353212 0.71865666 0 3.30353212 0.7416811
		 0 3.28191447 0.7416811 0.32604173 3.30353212 0.63129395 0.33755392 3.30353212 0.65123373
		 0.33755392 3.28191447 0.65123373 0.56472075 3.30353212 0.39261496 0.58466047 3.30353212 0.40412712
		 0.58466047 3.28191447 0.40412712 0.64612436 3.30353212 0.088813052 0.67510784 3.30353212 0.066573218
		 0.67510784 3.28191447 0.066573218 3.1311181e-18 3.30353212 0.088813052;
	setAttr ".vt[166:167]" 0 3.30353212 0.066573218 0 3.28191447 0.066573218;
	setAttr -s 346 ".ed";
	setAttr ".ed[0:165]"  6 5 0 5 2 1 4 7 1 7 6 1 4 3 1 37 4 1 3 2 1 2 35 1 9 8 1
		 8 5 1 7 10 1 10 9 1 12 11 0 11 8 1 10 13 1 13 12 1 15 14 1 14 11 1 13 16 1 16 15 1
		 18 17 0 17 14 1 16 19 1 19 18 1 21 20 1 20 17 1 19 22 1 22 21 1 24 23 0 23 20 1 22 25 1
		 25 24 1 27 26 1 26 23 1 25 28 1 28 27 1 30 29 0 29 26 1 28 31 1 31 30 1 33 32 1 32 29 1
		 31 34 1 34 33 1 36 35 0 35 32 1 34 37 1 37 36 1 72 71 0 71 38 1 40 73 1 73 72 1 40 39 1
		 43 40 1 39 38 1 38 41 1 43 42 1 46 43 1 42 41 0 41 44 1 46 45 1 49 46 1 45 44 1 44 47 1
		 49 48 1 52 49 1 48 47 0 47 50 1 52 51 1 55 52 1 51 50 1 50 53 1 55 54 1 58 55 1 54 53 0
		 53 56 1 58 57 1 61 58 1 57 56 1 56 59 1 61 60 1 64 61 1 60 59 0 59 62 1 64 63 1 67 64 1
		 63 62 1 62 65 1 67 66 1 70 67 1 66 65 0 65 68 1 70 69 1 73 70 1 69 68 1 68 71 1 5 41 0
		 38 2 1 8 44 1 11 47 0 14 50 1 17 53 1 20 56 1 23 59 0 26 62 1 29 65 0 32 68 1 35 71 1
		 4 0 1 0 7 1 0 10 1 0 13 1 0 16 1 0 19 1 0 22 1 0 25 1 0 28 1 0 31 1 0 34 1 0 37 1
		 43 1 1 1 40 1 46 1 1 49 1 1 52 1 1 55 1 1 58 1 1 61 1 1 64 1 1 67 1 1 70 1 1 73 1 1
		 3 6 0 6 9 0 9 12 0 12 15 0 15 18 0 18 21 0 21 24 0 24 27 0 27 30 0 30 33 0 33 36 0
		 3 36 0 39 72 0 39 42 0 42 45 0 45 48 0 48 51 0 51 54 0 54 57 0 57 60 0 60 63 0 63 66 0
		 66 69 0 69 72 0 76 77 1 77 99 1 99 98 1 98 76 1 76 78 1 78 79 1 79 77 1 78 80 1 80 81 1
		 81 79 1;
	setAttr ".ed[166:331]" 80 82 1 82 83 1 83 81 1 82 84 1 84 85 1 85 83 1 84 86 1
		 86 87 1 87 85 1 86 88 1 88 89 1 89 87 1 88 90 1 90 91 1 91 89 1 90 92 1 92 93 1 93 91 1
		 92 94 1 94 95 1 95 93 1 94 96 1 96 97 1 97 95 1 96 98 1 99 97 1 79 75 1 75 77 1 81 75 1
		 83 75 1 85 75 1 87 75 1 89 75 1 91 75 1 93 75 1 95 75 1 97 75 1 99 75 1 134 133 1
		 133 100 1 102 135 1 135 134 1 102 101 1 105 102 1 101 100 1 100 103 1 105 104 1 108 105 1
		 104 103 1 103 106 1 108 107 1 111 108 1 107 106 1 106 109 1 111 110 1 114 111 1 110 109 1
		 109 112 1 114 113 1 117 114 1 113 112 1 112 115 1 117 116 1 120 117 1 116 115 1 115 118 1
		 120 119 1 123 120 1 119 118 1 118 121 1 123 122 1 126 123 1 122 121 1 121 124 1 126 125 1
		 129 126 1 125 124 1 124 127 1 129 128 1 132 129 1 128 127 1 127 130 1 132 131 1 135 132 1
		 131 130 1 130 133 1 100 74 1 74 103 1 74 106 1 74 109 1 74 112 1 74 115 1 74 118 1
		 74 121 1 74 124 1 74 127 1 74 130 1 74 133 1 105 78 1 76 102 1 108 80 1 111 82 1
		 114 84 1 117 86 1 120 88 1 123 90 1 126 92 1 129 94 1 132 96 1 135 98 1 101 134 0
		 101 104 0 104 107 0 107 110 0 110 113 0 113 116 0 116 119 0 119 122 0 122 125 0 125 128 0
		 128 131 0 131 134 0 137 138 0 139 140 0 141 142 0 136 143 0 136 137 0 138 139 0 140 141 0
		 142 143 0 148 147 1 147 144 1 146 149 1 149 148 0 146 145 0 167 146 1 145 144 1 144 165 1
		 151 150 1 150 147 1 149 152 1 152 151 0 154 153 1 153 150 1 152 155 1 155 154 0 157 156 1
		 156 153 1 155 158 1 158 157 0 160 159 1 159 156 1 158 161 1 161 160 0 163 162 1 162 159 1
		 161 164 1 164 163 0 166 165 1 165 162 1 164 167 1 167 166 1 150 165 1 156 165 1 137 149 0
		 146 136 0;
	setAttr ".ed[332:345]" 138 152 0 139 155 0 140 158 0 141 161 0 142 164 0 167 143 1
		 145 148 0 148 151 0 151 154 0 154 157 0 157 160 0 160 163 0 163 166 0 145 166 0;
	setAttr -s 183 -ch 684 ".fc[0:182]" -type "polyFaces" 
		f 4 -2 96 -56 97
		mu 0 4 50 0 3 1
		f 4 -10 98 -60 -97
		mu 0 4 0 2 5 3
		f 4 -14 99 -64 -99
		mu 0 4 2 4 7 5
		f 4 -18 100 -68 -100
		mu 0 4 4 6 9 7
		f 4 -22 101 -72 -101
		mu 0 4 6 8 11 9
		f 4 -26 102 -76 -102
		mu 0 4 8 10 13 11
		f 4 -30 103 -80 -103
		mu 0 4 10 12 15 13
		f 4 -34 104 -84 -104
		mu 0 4 12 14 17 15
		f 4 -38 105 -88 -105
		mu 0 4 14 16 19 17
		f 4 -42 106 -92 -106
		mu 0 4 16 18 21 19
		f 4 -46 107 -96 -107
		mu 0 4 18 20 23 21
		f 4 -8 -98 -50 -108
		mu 0 4 20 22 51 23
		f 3 -3 108 109
		mu 0 3 25 24 35
		f 3 -11 -110 110
		mu 0 3 26 25 35
		f 3 -15 -111 111
		mu 0 3 27 26 35
		f 3 -19 -112 112
		mu 0 3 28 27 35
		f 3 -23 -113 113
		mu 0 3 29 28 35
		f 3 -27 -114 114
		mu 0 3 30 29 35
		f 3 -31 -115 115
		mu 0 3 31 30 35
		f 3 -35 -116 116
		mu 0 3 32 31 35
		f 3 -39 -117 117
		mu 0 3 33 32 35
		f 3 -43 -118 118
		mu 0 3 34 33 35
		f 3 -47 -119 119
		mu 0 3 36 34 35
		f 3 -6 -120 -109
		mu 0 3 24 36 35
		f 3 -54 120 121
		mu 0 3 48 37 49
		f 3 -58 122 -121
		mu 0 3 37 38 49
		f 3 -62 123 -123
		mu 0 3 38 39 49
		f 3 -66 124 -124
		mu 0 3 39 40 49
		f 3 -70 125 -125
		mu 0 3 40 41 49
		f 3 -74 126 -126
		mu 0 3 41 42 49
		f 3 -78 127 -127
		mu 0 3 42 43 49
		f 3 -82 128 -128
		mu 0 3 43 44 49
		f 3 -86 129 -129
		mu 0 3 44 45 49
		f 3 -90 130 -130
		mu 0 3 45 46 49
		f 3 -94 131 -131
		mu 0 3 46 47 49
		f 3 -51 -122 -132
		mu 0 3 47 48 49
		f 4 -7 132 0 1
		mu 0 4 50 54 56 0
		f 4 -5 2 3 -133
		mu 0 4 53 24 25 55
		f 4 -1 133 8 9
		mu 0 4 0 56 58 2
		f 4 -4 10 11 -134
		mu 0 4 55 25 26 57
		f 4 -9 134 12 13
		mu 0 4 2 58 60 4
		f 4 -12 14 15 -135
		mu 0 4 57 26 27 59
		f 4 -13 135 16 17
		mu 0 4 4 60 62 6
		f 4 -16 18 19 -136
		mu 0 4 59 27 28 61
		f 4 -17 136 20 21
		mu 0 4 6 62 64 8
		f 4 -20 22 23 -137
		mu 0 4 61 28 29 63
		f 4 -21 137 24 25
		mu 0 4 8 64 66 10
		f 4 -24 26 27 -138
		mu 0 4 63 29 30 65
		f 4 -25 138 28 29
		mu 0 4 10 66 68 12
		f 4 -28 30 31 -139
		mu 0 4 65 30 31 67
		f 4 -29 139 32 33
		mu 0 4 12 68 70 14
		f 4 -32 34 35 -140
		mu 0 4 67 31 32 69
		f 4 -33 140 36 37
		mu 0 4 14 70 72 16
		f 4 -36 38 39 -141
		mu 0 4 69 32 33 71
		f 4 -37 141 40 41
		mu 0 4 16 72 74 18
		f 4 -40 42 43 -142
		mu 0 4 71 33 34 73
		f 4 -41 142 44 45
		mu 0 4 18 74 76 20
		f 4 -44 46 47 -143
		mu 0 4 73 34 36 75
		f 4 4 143 -48 5
		mu 0 4 24 53 75 36
		f 4 6 7 -45 -144
		mu 0 4 52 22 20 76
		f 4 -55 144 48 49
		mu 0 4 51 79 101 23
		f 4 -53 50 51 -145
		mu 0 4 78 48 47 100
		f 4 52 145 -57 53
		mu 0 4 48 78 81 37
		f 4 54 55 -59 -146
		mu 0 4 77 1 3 80
		f 4 56 146 -61 57
		mu 0 4 37 81 83 38
		f 4 58 59 -63 -147
		mu 0 4 80 3 5 82
		f 4 60 147 -65 61
		mu 0 4 38 83 85 39
		f 4 62 63 -67 -148
		mu 0 4 82 5 7 84
		f 4 64 148 -69 65
		mu 0 4 39 85 87 40
		f 4 66 67 -71 -149
		mu 0 4 84 7 9 86
		f 4 68 149 -73 69
		mu 0 4 40 87 89 41
		f 4 70 71 -75 -150
		mu 0 4 86 9 11 88
		f 4 72 150 -77 73
		mu 0 4 41 89 91 42
		f 4 74 75 -79 -151
		mu 0 4 88 11 13 90
		f 4 76 151 -81 77
		mu 0 4 42 91 93 43
		f 4 78 79 -83 -152
		mu 0 4 90 13 15 92
		f 4 80 152 -85 81
		mu 0 4 43 93 95 44
		f 4 82 83 -87 -153
		mu 0 4 92 15 17 94
		f 4 84 153 -89 85
		mu 0 4 44 95 97 45
		f 4 86 87 -91 -154
		mu 0 4 94 17 19 96
		f 4 88 154 -93 89
		mu 0 4 45 97 99 46
		f 4 90 91 -95 -155
		mu 0 4 96 19 21 98
		f 4 92 155 -52 93
		mu 0 4 46 99 100 47
		f 4 94 95 -49 -156
		mu 0 4 98 21 23 101
		f 4 156 157 158 159
		mu 0 4 102 103 104 105
		f 4 -157 160 161 162
		mu 0 4 106 107 108 109
		f 4 -162 163 164 165
		mu 0 4 110 108 111 112
		f 4 -165 166 167 168
		mu 0 4 113 111 114 115
		f 4 -168 169 170 171
		mu 0 4 116 114 117 118
		f 4 -171 172 173 174
		mu 0 4 119 117 120 121
		f 4 -174 175 176 177
		mu 0 4 122 120 123 124
		f 4 -177 178 179 180
		mu 0 4 125 123 126 127
		f 4 -180 181 182 183
		mu 0 4 128 126 129 130
		f 4 -183 184 185 186
		mu 0 4 131 129 132 133
		f 4 -186 187 188 189
		mu 0 4 134 132 135 136
		f 4 -189 190 -159 191
		mu 0 4 137 135 105 138
		f 3 -163 192 193
		mu 0 3 139 140 141
		f 3 -166 194 -193
		mu 0 3 140 142 141
		f 3 -169 195 -195
		mu 0 3 142 143 141
		f 3 -172 196 -196
		mu 0 3 143 144 141
		f 3 -175 197 -197
		mu 0 3 144 145 141
		f 3 -178 198 -198
		mu 0 3 145 146 141
		f 3 -181 199 -199
		mu 0 3 146 147 141
		f 3 -184 200 -200
		mu 0 3 147 148 141
		f 3 -187 201 -201
		mu 0 3 148 149 141
		f 3 -190 202 -202
		mu 0 3 149 150 141
		f 3 -192 203 -203
		mu 0 3 150 151 141
		f 3 -158 -194 -204
		mu 0 3 151 139 141
		f 3 -212 252 253
		mu 0 3 152 153 154
		f 3 -216 -254 254
		mu 0 3 155 152 154
		f 3 -220 -255 255
		mu 0 3 156 155 154
		f 3 -224 -256 256
		mu 0 3 157 156 154
		f 3 -228 -257 257
		mu 0 3 158 157 154
		f 3 -232 -258 258
		mu 0 3 159 158 154
		f 3 -236 -259 259
		mu 0 3 160 159 154
		f 3 -240 -260 260
		mu 0 3 161 160 154
		f 3 -244 -261 261
		mu 0 3 162 161 154
		f 3 -248 -262 262
		mu 0 3 163 162 154
		f 3 -252 -263 263
		mu 0 3 164 163 154
		f 3 -206 -264 -253
		mu 0 3 153 164 154
		f 4 -210 264 -161 265
		mu 0 4 165 166 108 107
		f 4 -214 266 -164 -265
		mu 0 4 166 167 111 108
		f 4 -218 267 -167 -267
		mu 0 4 167 168 114 111
		f 4 -222 268 -170 -268
		mu 0 4 168 169 117 114
		f 4 -226 269 -173 -269
		mu 0 4 169 170 120 117
		f 4 -230 270 -176 -270
		mu 0 4 170 171 123 120
		f 4 -234 271 -179 -271
		mu 0 4 171 172 126 123
		f 4 -238 272 -182 -272
		mu 0 4 172 173 129 126
		f 4 -242 273 -185 -273
		mu 0 4 173 174 132 129
		f 4 -246 274 -188 -274
		mu 0 4 174 175 135 132
		f 4 -250 275 -191 -275
		mu 0 4 175 176 105 135
		f 4 -207 -266 -160 -276
		mu 0 4 176 177 102 105
		f 4 -211 276 204 205
		mu 0 4 153 178 179 164
		f 4 -209 206 207 -277
		mu 0 4 180 177 176 181
		f 4 208 277 -213 209
		mu 0 4 165 182 183 166
		f 4 210 211 -215 -278
		mu 0 4 178 153 152 184
		f 4 212 278 -217 213
		mu 0 4 166 183 185 167
		f 4 214 215 -219 -279
		mu 0 4 184 152 155 186
		f 4 216 279 -221 217
		mu 0 4 167 185 187 168
		f 4 218 219 -223 -280
		mu 0 4 186 155 156 188
		f 4 220 280 -225 221
		mu 0 4 168 187 189 169
		f 4 222 223 -227 -281
		mu 0 4 188 156 157 190
		f 4 224 281 -229 225
		mu 0 4 169 189 191 170
		f 4 226 227 -231 -282
		mu 0 4 190 157 158 192
		f 4 228 282 -233 229
		mu 0 4 170 191 193 171
		f 4 230 231 -235 -283
		mu 0 4 192 158 159 194
		f 4 232 283 -237 233
		mu 0 4 171 193 195 172
		f 4 234 235 -239 -284
		mu 0 4 194 159 160 196
		f 4 236 284 -241 237
		mu 0 4 172 195 197 173
		f 4 238 239 -243 -285
		mu 0 4 196 160 161 198
		f 4 240 285 -245 241
		mu 0 4 173 197 199 174
		f 4 242 243 -247 -286
		mu 0 4 198 161 162 200
		f 4 244 286 -249 245
		mu 0 4 174 199 201 175
		f 4 246 247 -251 -287
		mu 0 4 200 162 163 202
		f 4 248 287 -208 249
		mu 0 4 175 201 181 176
		f 4 250 251 -205 -288
		mu 0 4 202 163 164 179
		f 4 288 332 -307 -331
		mu 0 4 203 204 205 206
		f 4 289 334 -315 -334
		mu 0 4 207 208 209 210
		f 4 290 336 -323 -336
		mu 0 4 211 212 213 214
		f 4 -292 -332 -302 337
		mu 0 4 215 216 217 218
		f 4 292 330 -299 331
		mu 0 4 219 203 206 220
		f 4 293 333 -311 -333
		mu 0 4 204 207 210 205
		f 4 294 335 -319 -335
		mu 0 4 208 211 214 209
		f 4 295 -338 -327 -337
		mu 0 4 221 215 218 222
		f 4 -304 -298 -306 328
		mu 0 4 223 224 225 226
		f 4 -329 -310 -314 329
		mu 0 4 223 226 227 228
		f 4 -330 -318 -322 -326
		mu 0 4 223 228 229 230
		f 4 -303 338 296 297
		mu 0 4 224 231 232 225
		f 4 -301 298 299 -339
		mu 0 4 233 220 206 234
		f 4 -297 339 304 305
		mu 0 4 225 232 235 226
		f 4 -300 306 307 -340
		mu 0 4 234 206 205 236
		f 4 -305 340 308 309
		mu 0 4 226 235 237 227
		f 4 -308 310 311 -341
		mu 0 4 236 205 210 238
		f 4 -309 341 312 313
		mu 0 4 227 237 239 228
		f 4 -312 314 315 -342
		mu 0 4 238 210 209 240
		f 4 -313 342 316 317
		mu 0 4 228 239 241 229
		f 4 -316 318 319 -343
		mu 0 4 240 209 214 242
		f 4 -317 343 320 321
		mu 0 4 229 241 243 230
		f 4 -320 322 323 -344
		mu 0 4 242 214 213 244
		f 4 -321 344 324 325
		mu 0 4 230 243 245 223
		f 4 -324 326 327 -345
		mu 0 4 246 222 218 245
		f 4 300 345 -328 301
		mu 0 4 217 231 245 218
		f 4 302 303 -325 -346
		mu 0 4 231 224 223 245;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "806583F3-42A4-F704-1212-BEAA1CBA6111";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7B4AC0AA-42AA-DC35-E144-DF8D5691F86F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E1CC823F-4A9F-4ECA-06A6-479098904BA8";
createNode displayLayerManager -n "layerManager";
	rename -uid "B3E8F88D-48D6-5511-EF06-A8AB5D1B8AFF";
createNode displayLayer -n "defaultLayer";
	rename -uid "EFCD817D-43C5-ADF5-31E8-FBAE3DF92149";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9586E2DF-4B63-72A6-9AAB-20B76DC89CF0";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BBF54E19-42EB-DA2E-649F-62A21FA17EC9";
	setAttr ".g" yes;
createNode reference -n "lamp_modelRN";
	rename -uid "4C6C07C2-427A-8F8C-16A8-ACABE725C718";
	setAttr -s 56 ".phl";
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
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"lamp_modelRN"
		"lamp_modelRN" 28
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "aiTranslator" 
		" -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" "aiTranslator" 
		" -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		"lamp_modelRN" 97
		0 "|lamp_model:Geometry" "|Lamp" "-s -r "
		0 "|lamp_modelRNfosterParent1|base_geoShapeDeformed" "|Lamp|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|base_geo_parentConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|base_geo_scaleConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geoShapeDeformed" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geo_parentConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geo_scaleConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|upper_arm_geo_parentConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|upper_arm_geo_scaleConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|head_geo_parentConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:head_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|head_geo_scaleConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:head_geo" 
		"-s -r "
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"intermediateObject" " 1"
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"uvst[0].uvsp[0:246]" (" -s 247 -type \"float2\" 0.3958334 0.31474133999999998 0.375 0.68619841000000004 0.41666669000000001 0.31474137000000002 0.39583337000000002 0.68619841000000004 0.4375 0.3147414 0.41666669000000001 0.68619841000000004 0.45833337000000002 0.31474137000000002 0.4375 0.68619834999999996 0.47916671999999999 0.31474137000000002 0.45833337000000002 0.68619841000000004 0.5 0.3147414 0.47916671999999999 0.68619841000000004 0.52083336999999996 0.31474137000000002 0.49999997000000002 0.68619834999999996 0.54166674999999997 0.31474133999999998 0.52083336999999996 0.68619817000000005 0.5625 0.31474163999999999 0.54166669000000001 0.68619841000000004 0.58333336999999996 0.31474133999999998 0.5625 0.68619841000000004 0.60416663000000004 0.31474137000000002 0.58333343000000004 0.68619841000000004 0.62499994000000003 0.3147414 0.60416669000000001 0.68619841000000004 0.62178617999999997 0.085311263999999998 0.57031321999999995 0.033839020999999997 0.5 0.014998627 0.42968677999999999 0.033839020999999997 0.37821381999999998 0.08"
		+ "5311263999999998 0.35937342 0.15562506000000001 0.37821385000000002 0.22593833999999999 0.42968677999999999 0.27741110000000002 0.5 0.29625148000000001 0.57031321999999995 0.27741110000000002 0.62178617999999997 0.22593833999999999 0.5 0.15000000999999999 0.64062655000000002 0.15562506000000001 0.57031321999999995 0.96491110000000002 0.5 0.98375148000000001 0.42968677999999999 0.96491110000000002 0.37821381999999998 0.91343892000000004 0.35937342 0.84312505000000004 0.37821385000000002 0.77281177000000001 0.42968677999999999 0.72133899000000001 0.5 0.70249861000000002 0.57031321999999995 0.72133899000000001 0.62178617999999997 0.77281177000000001 0.64062655000000002 0.84312505000000004 0.62178617999999997 0.91343892000000004 0.5 0.83749998000000003 0.375 0.31474137000000002 0.62499994000000003 0.68619841000000004 0.62499994000000003 0.3125 0.63531649000000001 0.078125 0.375 0.3125 0.578125 0.020933539000000001 0.39583333999999998 0.3125 0.5 0 0.41666669000000001 0.3125 0.421875 0.020933539000000001 0.43750002"
		+ "999999998 0.3125 0.36468353999999997 0.078125 0.45833337000000002 0.3125 0.34375 0.15625 0.47916671999999999 0.3125 0.36468353999999997 0.234375 0.50000005999999997 0.3125 0.421875 0.29156646000000003 0.52083336999999996 0.3125 0.5 0.3125 0.54166669000000001 0.3125 0.578125 0.29156646000000003 0.5625 0.3125 0.63531649000000001 0.234375 0.58333330999999999 0.3125 0.65625 0.15625 0.60416663000000004 0.3125 0.375 0.68843984999999996 0.63531649000000001 0.921875 0.62499994000000003 0.68843984999999996 0.39583333999999998 0.68843984999999996 0.578125 0.97906649000000001 0.41666669000000001 0.68843984999999996 0.5 1 0.43750002999999998 0.68843984999999996 0.421875 0.97906649000000001 0.45833337000000002 0.68843984999999996 0.36468353999999997 0.921875 0.47916671999999999 0.68843984999999996 0.34375 0.84375 0.50000005999999997 0.68843984999999996 0.36468353999999997 0.765625 0.52083336999999996 0.68843984999999996 0.421875 0.70843350999999999 0.54166669000000001 0.68843984999999996 0.5 0.6875 0.5625 0.68843984999999"
		+ "996 0.578125 0.70843350999999999 0.58333330999999999 0.68843984999999996 0.63531649000000001 0.765625 0.65625 0.84375 0.60416663000000004 0.68843984999999996 0.62499994000000003 0.53807896 0.62469339000000002 0.68843979 0.60444193999999996 0.68347179999999996 0.60416663000000004 0.53807908000000004 0.37527530999999997 0.68347186000000004 0.375 0.53807896 0.39583333999999998 0.53807901999999996 0.39552683 0.68843984999999996 0.39610866 0.68347179999999996 0.41666669000000001 0.53807908000000004 0.41636013999999999 0.68843979 0.416942 0.68347179999999996 0.4375 0.53807896 0.43719348000000002 0.68843979 0.43777537 0.68347186000000004 0.45833337000000002 0.53807896 0.45802685999999998 0.68843984999999996 0.45860868999999999 0.68347179999999996 0.47916671999999999 0.53807908000000004 0.47886016999999997 0.68843979 0.47944203000000002 0.68347179999999996 0.50000005999999997 0.53807896 0.49969353999999999 0.68843979 0.50027537 0.68347186000000004 0.52083336999999996 0.53807901999999996 0.52052683 0.68843984999999996"
		+ " 0.52110869000000004 0.68347179999999996 0.54166669000000001 0.53807908000000004 0.54136013999999999 0.68843979 0.541942 0.68347179999999996 0.5625 0.53807896 0.56219344999999998 0.68843979 0.56277531000000003 0.68347186000000004 0.58333330999999999 0.53807896 0.58302683 0.68843984999999996 0.58360862999999996 0.68347179999999996 0.60386008000000002 0.68843979 0.62692481 0.91664248999999998 0.57328009999999996 0.97028725999999998 0.5 0.83749998000000003 0.5 0.98992252000000003 0.42671993000000003 0.97028725999999998 0.37307519 0.91664248999999998 0.35343986999999999 0.84336239000000002 0.37307519 0.77008235000000003 0.42671993000000003 0.71643758000000002 0.5 0.69680226000000001 0.57328009999999996 0.71643758000000002 0.62692481 0.77008235000000003 0.64656013000000001 0.84336239000000002 0.57746350999999996 0.022026401000000001 0.63417071000000003 0.078733593000000004 0.5 0.15000000999999999 0.5 0.0012701154 0.42253652000000003 0.022026401000000001 0.36582932000000001 0.078733593000000004 0.34507304 0.1561970"
		+ "6999999999 0.36582932000000001 0.23366055999999999 0.42253652000000003 0.29036774999999998 0.5 0.31112403 0.57746350999999996 0.29036774999999998 0.63417071000000003 0.23366055999999999 0.65492695999999995 0.15619706999999999 0.375 0.33505559000000001 0.39583333999999998 0.33505559000000001 0.41666669000000001 0.33505568000000002 0.43750002999999998 0.33505559000000001 0.45833337000000002 0.33505559000000001 0.47916671999999999 0.33505568000000002 0.50000005999999997 0.33505559000000001 0.52083336999999996 0.33505559000000001 0.54166669000000001 0.33505568000000002 0.5625 0.33505559000000001 0.58333330999999999 0.33505559000000001 0.60416663000000004 0.33505568000000002 0.62499994000000003 0.33505559000000001 0.63531649000000001 0.078125 0.65625 0.15625 0.62499994000000003 0.3125 0.60416663000000004 0.3125 0.375 0.3125 0.39583333999999998 0.3125 0.578125 0.020933539000000001 0.41666669000000001 0.3125 0.5 0 0.43750002999999998 0.3125 0.421875 0.020933539000000001 0.45833337000000002 0.3125 0.36468353999999997"
		+ " 0.078125 0.47916671999999999 0.3125 0.34375 0.15625 0.50000005999999997 0.3125 0.36468353999999997 0.234375 0.52083336999999996 0.3125 0.421875 0.29156646000000003 0.54166669000000001 0.3125 0.5 0.3125 0.5625 0.3125 0.578125 0.29156646000000003 0.58333330999999999 0.3125 0.63531649000000001 0.234375 0.50000005999999997 0.3125 0.52083336999999996 0.3125 0.52083336999999996 0.68555014999999997 0.50000005999999997 0.68555014999999997 0.54166669000000001 0.3125 0.5625 0.3125 0.56250005999999997 0.68555014999999997 0.54166669000000001 0.68555014999999997 0.58333330999999999 0.3125 0.60416663000000004 0.3125 0.60416663000000004 0.68555014999999997 0.58333330999999999 0.68555014999999997 0.5 0.15000000999999999 0.47916671999999999 0.3125 0.34479091000000001 0.83966649000000004 0.5 0.83221531000000004 0.47916671999999999 0.3125 0.47916674999999997 0.68555014999999997 0.65625 0.15625 0.60456699000000003 0.68434912000000003 0.5 0.83259039999999995 0.35045809 0.83845323000000005 0.36929848999999998 0.76828945000000004 "
		+ "0.42453944999999998 0.71283531 0.5 0.69282889000000003 0.57546054999999996 0.71283525000000003 0.63070154 0.76828945000000004 0.64954190999999994 0.83845329000000002 0.34375 0.84375 0.36468353999999997 0.765625 0.47916671999999999 0.68843984999999996 0.50000005999999997 0.68843984999999996 0.421875 0.70843350999999999 0.52083336999999996 0.68843984999999996 0.5 0.6875 0.54166669000000001 0.68843984999999996 0.578125 0.70843350999999999 0.5625 0.68843984999999996 0.63531649000000001 0.765625 0.58333330999999999 0.68843984999999996 0.65625 0.84375 0.60416663000000004 0.68843984999999996 0.5 0.83749998000000003 0.60416663000000004 0.68843984999999996"
		)
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"intermediateObject" " 1"
		2 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvst[0].uvsp[0:163]" (" -s 164 -type \"float2\" 0.36929848999999998 0.76828945000000004 0.42453944999999998 0.71283531 0.5 0.69282889000000003 0.57546054999999996 0.71283525000000003 0.5 0.83259039999999995 0.63070154 0.76828945000000004 0.64954190999999994 0.83845329000000002 0.60416663000000004 0.68555014999999997 0.34479091000000001 0.83966649000000004 0.35045809 0.83845323000000005 0.34375 0.84375 0.47916671999999999 0.68843984999999996 0.50000005999999997 0.68843984999999996 0.36468353999999997 0.765625 0.52083336999999996 0.68843984999999996 0.421875 0.70843350999999999 0.54166669000000001 0.68843984999999996 0.5 0.6875 0.5625 0.68843984999999996 0.578125 0.70843350999999999 0.58333330999999999 0.68843984999999996 0.63531649000000001 0.765625 0.60416663000000004 0.68843984999999996 0.65625 0.84375 0.60416663000000004 0.68843984999999996 0.5 0.83749998000000003 0.50000005999999997 0.3125 0.54166669000000001 0.3125 0.65560227999999998 0.16286854000000001 0.59822887000000002 0.30581859 0.52083336999999996 0.31717541999999999 0.500"
		+ "00005999999997 0.68555014999999997 0.5625 0.31717503000000002 0.54166669000000001 0.68555014999999997 0.60416663000000004 0.31717541999999999 0.58333330999999999 0.68555014999999997 0.47748258999999998 0.31910691000000002 0.5 0.83221531000000004 0.50000005999999997 0.31717503000000002 0.47916674999999997 0.68555014999999997 0.54166669000000001 0.31717503000000002 0.52083336999999996 0.68555014999999997 0.58333330999999999 0.31717541999999999 0.56250005999999997 0.68555014999999997 0.5 0.15855005 0.60456699000000003 0.68434912000000003 0.51997674000000005 0.30581852999999998 0.50191081000000004 0.15745223999999999 0.48167812999999998 0.30781533999999999 0.55993020999999998 0.30581852999999998 0.47916671999999999 0.31717503000000002 0.57990693999999998 0.30581852999999998 0.50000005999999997 0.3125 0.52083336999999996 0.3125 0.54166669000000001 0.3125 0.5625 0.3125 0.58333330999999999 0.3125 0.60416663000000004 0.3125 0.65625 0.15625 0.47916671999999999 0.3125 0.47916671999999999 0.3125 0.5 0.15000000999999999 "
		+ "0.375 0.31474137000000002 0.3958334 0.31474133999999998 0.39583337000000002 0.68619841000000004 0.375 0.68619841000000004 0.41666669000000001 0.31474137000000002 0.41666669000000001 0.68619841000000004 0.4375 0.3147414 0.4375 0.68619834999999996 0.45833337000000002 0.31474137000000002 0.45833337000000002 0.68619841000000004 0.47916671999999999 0.31474137000000002 0.47916671999999999 0.68619841000000004 0.5 0.3147414 0.49999997000000002 0.68619834999999996 0.52083336999999996 0.31474137000000002 0.52083336999999996 0.68619817000000005 0.54166674999999997 0.31474133999999998 0.54166669000000001 0.68619841000000004 0.5625 0.31474163999999999 0.5625 0.68619841000000004 0.58333336999999996 0.31474133999999998 0.58333343000000004 0.68619841000000004 0.60416663000000004 0.31474137000000002 0.60416669000000001 0.68619841000000004 0.62499994000000003 0.3147414 0.62499994000000003 0.68619841000000004 0.57031321999999995 0.033839020999999997 0.62178617999999997 0.085311263999999998 0.5 0.15000000999999999 0.5 0.01499862"
		+ "7 0.42968677999999999 0.033839020999999997 0.37821381999999998 0.085311263999999998 0.35937342 0.15562506000000001 0.37821385000000002 0.22593833999999999 0.42968677999999999 0.27741110000000002 0.5 0.29625148000000001 0.57031321999999995 0.27741110000000002 0.62178617999999997 0.22593833999999999 0.64062655000000002 0.15562506000000001 0.62178617999999997 0.91343892000000004 0.57031321999999995 0.96491110000000002 0.5 0.83749998000000003 0.5 0.98375148000000001 0.42968677999999999 0.96491110000000002 0.37821381999999998 0.91343892000000004 0.35937342 0.84312505000000004 0.37821385000000002 0.77281177000000001 0.42968677999999999 0.72133899000000001 0.5 0.70249861000000002 0.57031321999999995 0.72133899000000001 0.62178617999999997 0.77281177000000001 0.64062655000000002 0.84312505000000004 0.375 0.3125 0.39583333999999998 0.3125 0.63531649000000001 0.078125 0.578125 0.020933539000000001 0.41666669000000001 0.3125 0.5 0 0.43750002999999998 0.3125 0.421875 0.020933539000000001 0.45833337000000002 0.3125 0.3646"
		+ "8353999999997 0.078125 0.47916671999999999 0.3125 0.34375 0.15625 0.50000005999999997 0.3125 0.36468353999999997 0.234375 0.52083336999999996 0.3125 0.421875 0.29156646000000003 0.54166669000000001 0.3125 0.5 0.3125 0.5625 0.3125 0.578125 0.29156646000000003 0.58333330999999999 0.3125 0.63531649000000001 0.234375 0.60416663000000004 0.3125 0.65625 0.15625 0.62499994000000003 0.3125 0.62499994000000003 0.68843984999999996 0.60416663000000004 0.68843984999999996 0.63531649000000001 0.921875 0.65625 0.84375 0.578125 0.97906649000000001 0.375 0.68843984999999996 0.39583333999999998 0.68843984999999996 0.5 1 0.41666669000000001 0.68843984999999996 0.421875 0.97906649000000001 0.43750002999999998 0.68843984999999996 0.36468353999999997 0.921875 0.45833337000000002 0.68843984999999996 0.34375 0.84375 0.47916671999999999 0.68843984999999996 0.36468353999999997 0.765625 0.50000005999999997 0.68843984999999996 0.421875 0.70843350999999999 0.52083336999999996 0.68843984999999996 0.5 0.6875 0.54166669000000001 0.68843984"
		+ "999999996 0.578125 0.70843350999999999 0.5625 0.68843984999999996 0.63531649000000001 0.765625 0.58333330999999999 0.68843984999999996"
		)
		2 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "lamp_model:geo_layer" "displayType" " 2"
		2 "lamp_model:groupParts1" "groupId" " 7"
		2 "lamp_model:groupParts4" "groupId" " 8"
		3 "lamp_model:groupId27.message" ":initialShadingGroup.groupNodes" "-na"
		3 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.instObjGroups.objectGroups[0]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "lamp_model:groupId24.groupId" "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "lamp_model:groupParts1.outputGeometry" "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.inMesh" 
		""
		3 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.instObjGroups.objectGroups[0]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "lamp_model:groupId27.groupId" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "lamp_model:groupParts4.outputGeometry" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.inMesh" 
		""
		3 "lamp_model:groupId24.message" ":initialShadingGroup.groupNodes" "-na"
		3 "lamp_model:groupId27.groupId" "lamp_model:groupParts4.groupId" ""
		3 "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShapeOrig.worldMesh" 
		"lamp_model:groupParts4.inputGeometry" ""
		3 "lamp_model:groupId24.groupId" "lamp_model:groupParts1.groupId" ""
		3 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShapeOrig.worldMesh" 
		"lamp_model:groupParts1.inputGeometry" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.translateX" 
		"lamp_modelRN.placeHolderList[1]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.translateY" 
		"lamp_modelRN.placeHolderList[2]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.translateZ" 
		"lamp_modelRN.placeHolderList[3]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotateX" 
		"lamp_modelRN.placeHolderList[4]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotateY" 
		"lamp_modelRN.placeHolderList[5]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[6]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[7]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[8]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[9]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[10]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[11]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.scaleX" 
		"lamp_modelRN.placeHolderList[12]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.scaleY" 
		"lamp_modelRN.placeHolderList[13]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[14]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.translateX" 
		"lamp_modelRN.placeHolderList[15]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.translateY" 
		"lamp_modelRN.placeHolderList[16]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.translateZ" 
		"lamp_modelRN.placeHolderList[17]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateX" 
		"lamp_modelRN.placeHolderList[18]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateY" 
		"lamp_modelRN.placeHolderList[19]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[20]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[21]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[22]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[23]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[24]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[25]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleX" 
		"lamp_modelRN.placeHolderList[26]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleY" 
		"lamp_modelRN.placeHolderList[27]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[28]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.translateX" 
		"lamp_modelRN.placeHolderList[29]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.translateY" 
		"lamp_modelRN.placeHolderList[30]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.translateZ" 
		"lamp_modelRN.placeHolderList[31]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateX" 
		"lamp_modelRN.placeHolderList[32]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateY" 
		"lamp_modelRN.placeHolderList[33]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[34]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[35]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[36]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[37]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[38]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[39]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleX" 
		"lamp_modelRN.placeHolderList[40]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleY" 
		"lamp_modelRN.placeHolderList[41]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[42]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.translateX" 
		"lamp_modelRN.placeHolderList[43]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.translateY" 
		"lamp_modelRN.placeHolderList[44]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.translateZ" 
		"lamp_modelRN.placeHolderList[45]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotateX" 
		"lamp_modelRN.placeHolderList[46]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotateY" 
		"lamp_modelRN.placeHolderList[47]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[48]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[49]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[50]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[51]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[52]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[53]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.scaleX" 
		"lamp_modelRN.placeHolderList[54]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.scaleY" 
		"lamp_modelRN.placeHolderList[55]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[56]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1EE26EA3-4C29-FA8B-F10B-38AF68FE3C49";
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
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 758\n            -height 549\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 758\\n    -height 549\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 758\\n    -height 549\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "400C1D4C-43E1-FE0E-42AD-6D879110E61E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 160 -ast -11 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId7";
	rename -uid "7F81AA62-4F1B-8092-5CF5-07978CBF4413";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "51860779-4C2B-ACAD-6FF3-FBA476B4C7C3";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "B7248F25-4382-5CF4-7982-48B659C016EC";
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode animCurveTU -n "Lamp_visibility";
	rename -uid "4E9C1A3B-4F32-16F0-F128-EDA8DA5BD197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 35 1 105 0.1071428571428571;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "head_cntrl_visibility";
	rename -uid "96B10889-4B2A-2919-E621-C38524CB4614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 20 1 30 1 40 0 135 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "head_cntrl_translateX";
	rename -uid "43C298A0-40F0-1FFF-3E8A-F0A5B3507164";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 0 30 0 40 0 135 0;
createNode animCurveTL -n "head_cntrl_translateY";
	rename -uid "080A2C59-4FCA-7385-AB0F-A587621F05A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 0 30 0 40 0 135 0;
createNode animCurveTL -n "head_cntrl_translateZ";
	rename -uid "7FD77941-4B38-5089-8C0E-B6976499F211";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 0 30 0 40 0 135 0;
createNode animCurveTA -n "head_cntrl_rotateX";
	rename -uid "600E835E-4415-3202-9BE2-08B8DD03A15E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 1.7393503388866967 30 3.1502766945134559
		 40 0 135 0;
createNode animCurveTA -n "head_cntrl_rotateY";
	rename -uid "077B6C2A-4113-6E1D-B5A1-028BE0BBB874";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 -3.9694970677284664 30 -2.976927079279077
		 40 0 135 0;
createNode animCurveTA -n "head_cntrl_rotateZ";
	rename -uid "102CE5F4-43E4-61FF-E54D-5FBF5E1AB395";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 -33.085269248091628 20 -40.654963835110713
		 30 -63.631886943860877 40 -58.426043613784707 135 -98.331034741957978;
createNode animCurveTU -n "head_cntrl_scaleX";
	rename -uid "A4667723-4B93-C81B-865A-BC994DE28371";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 20 1 30 1 40 1 135 1;
createNode animCurveTU -n "head_cntrl_scaleY";
	rename -uid "C93CA486-4EA3-8222-6584-2694137DA4DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 20 1 30 1 40 1 135 1;
createNode animCurveTU -n "head_cntrl_scaleZ";
	rename -uid "2AACE98B-4BCE-E157-D59C-0A8DAF240DE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 20 1 30 1 40 1 135 1;
createNode animCurveTU -n "upper_arm_cntrl_visibility";
	rename -uid "3E820CC4-48BF-3BF3-C0AE-12A9CB93C322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 20 1 30 1 40 0 135 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "upper_arm_cntrl_translateX";
	rename -uid "83EDE87B-4C02-F0E0-76DA-DBB358792BCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 0 30 0 40 0 135 0;
createNode animCurveTL -n "upper_arm_cntrl_translateY";
	rename -uid "4EC1383F-430F-1715-BAA3-A2BA04D63008";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 0 30 0 40 0 135 0;
createNode animCurveTL -n "upper_arm_cntrl_translateZ";
	rename -uid "E8D2AB1A-4B10-0D40-24A4-27817DDF62BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 0 30 0 40 0 135 0;
createNode animCurveTA -n "upper_arm_cntrl_rotateX";
	rename -uid "9F411146-4F7E-F0BC-BC96-1D92C63CB731";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 -3.7752572151954014 30 2.0507695041749106
		 40 0 135 0;
createNode animCurveTA -n "upper_arm_cntrl_rotateY";
	rename -uid "53ED1EAB-4166-F174-3C43-5F8C9475B633";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 2.1287079707858916 30 -3.8181116445634213
		 40 0 135 0;
createNode animCurveTA -n "upper_arm_cntrl_rotateZ";
	rename -uid "11671AAF-4D74-9667-55F2-45849CFAF114";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 -47.825297777274223 20 54.580775238305741
		 30 -93.0637611273809 40 23.3605403533893 135 -145.31809949831441;
createNode animCurveTU -n "upper_arm_cntrl_scaleX";
	rename -uid "2F9E07FD-4937-D068-1B59-76B56D3B0977";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 20 1 30 1 40 1 135 1;
createNode animCurveTU -n "upper_arm_cntrl_scaleY";
	rename -uid "0BCB0FDB-4FA0-00F2-7C5B-949D1F7A0B3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 20 1 30 1 40 1 135 1;
createNode animCurveTU -n "upper_arm_cntrl_scaleZ";
	rename -uid "41E9FD5D-4FFC-45CB-9FE3-1F84DA11C19F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 20 1 30 1 40 1 135 1;
createNode animCurveTU -n "lower_arm_cntrl_visibility";
	rename -uid "D16731CF-4C6C-F72B-4B01-978BDD252C89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 20 1 30 1 40 0 135 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "lower_arm_cntrl_translateX";
	rename -uid "88B76C21-4E44-2BBC-58E5-0EBC487AFAEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 0 30 0 40 0 135 0;
createNode animCurveTL -n "lower_arm_cntrl_translateY";
	rename -uid "D0D9338E-4299-B54E-2FBA-D4A9D081ACDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 0 30 0 40 0 135 0;
createNode animCurveTL -n "lower_arm_cntrl_translateZ";
	rename -uid "B08CC4A6-4522-2902-F4B9-438427FA45E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 0 30 0 40 0 135 0;
createNode animCurveTA -n "lower_arm_cntrl_rotateX";
	rename -uid "2975F1CB-4F5E-35E8-F06D-48B798EB1F8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 -1.8914385049076419 30 -4.3238875342854604
		 40 0 135 0;
createNode animCurveTA -n "lower_arm_cntrl_rotateY";
	rename -uid "580D574A-40C7-E486-DACD-B9B8A89B1FCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 20 -3.8994089756281807 30 -0.28557981140545491
		 40 0 135 0;
createNode animCurveTA -n "lower_arm_cntrl_rotateZ";
	rename -uid "7BB6798F-46F5-15BB-46AF-4F934CAF5B6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 17.805073341268308 20 -21.088214210388298
		 30 39.238612470269381 40 0 135 45.129452273656646;
createNode animCurveTU -n "lower_arm_cntrl_scaleX";
	rename -uid "7D8B7CA2-44AB-79E3-B093-5EBCFE5240EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 20 1 30 1 40 1 135 1;
createNode animCurveTU -n "lower_arm_cntrl_scaleY";
	rename -uid "5038453D-4D51-09E8-BF4D-E4B205481F1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 20 1 30 1 40 1 135 1;
createNode animCurveTU -n "lower_arm_cntrl_scaleZ";
	rename -uid "2FD5E521-4926-CFA6-AF57-A7A134DA71D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 20 1 30 1 40 1 135 1;
createNode animCurveTU -n "base_cntrl_visibility";
	rename -uid "514B40A3-4556-953B-E3EE-F7A945C6FA50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 30 1 40 0 130 1 135 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "base_cntrl_translateX";
	rename -uid "4708A439-46F2-3A16-5D83-1F896F870A64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 30 -1.493927426631334 40 -51.420990493123597
		 130 -218.73692368617563 135 -218.73692368617563;
createNode animCurveTL -n "base_cntrl_translateY";
	rename -uid "94E76DF4-46B1-A64B-E04C-4D9A0B05C722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 30 5.2458413844143177 40 48.228757503905655
		 130 4.7835689646820212 135 0;
createNode animCurveTL -n "base_cntrl_translateZ";
	rename -uid "C565BB77-448B-3329-1FD0-D28E0BA7BB8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 30 0 40 0 130 0 135 0;
createNode animCurveTA -n "base_cntrl_rotateX";
	rename -uid "9962F262-4FC6-31A2-2215-9FB932D19EA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 30 0 40 0 130 0 135 0;
createNode animCurveTA -n "base_cntrl_rotateY";
	rename -uid "6B717A1F-4683-81D0-76B7-DE97ABB3A5FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 30 0 40 0 130 0 135 0;
createNode animCurveTA -n "base_cntrl_rotateZ";
	rename -uid "2D2ED0D6-49B1-0B5C-BF66-92A90AC6509A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 30 48.868084529032259 40 0 130 -47.782759731816334
		 135 0;
createNode animCurveTU -n "base_cntrl_scaleX";
	rename -uid "745E834E-4C8B-8261-907B-6EBD7AD33B28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 30 1 40 1 130 1 135 1;
createNode animCurveTU -n "base_cntrl_scaleY";
	rename -uid "1C1CFD54-4EF3-1EF9-9444-2187E50FFEB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 30 1 40 1 130 1 135 1;
createNode animCurveTU -n "base_cntrl_scaleZ";
	rename -uid "5C31DF2D-4D21-CA9F-25DB-688C8AE5B818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 30 1 40 1 130 1 135 1;
createNode animCurveTU -n "head_ctrl_visibility";
	rename -uid "07B4D9F7-4801-4455-BEB7-C5BCEEE81CE2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 1 35 1 40 1 45 1 50 1 55 1 60 1 65 1
		 70 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
	setAttr -s 17 ".kot[0:16]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5;
createNode animCurveTL -n "head_ctrl_translateY";
	rename -uid "CA273D4B-4BFF-E715-771E-088CF66605CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 8.0056674387837266 35 43.289873707307294
		 40 27.375280316161948 45 26.899628093409113 50 28.835242707730529 55 27.268948653452966
		 60 28.827792262313054 65 23.510349904645054 70 21.928454683146626 75 24.665161845826461
		 80 29.403213337924655 85 21.930474480324229 90 38.44459531085306 95 33.041660526035173
		 100 20.458136886913792 105 8.7836942564549663 160 0.021934086376177248;
createNode animCurveTA -n "head_ctrl_rotateX";
	rename -uid "D8A719F8-4887-1AA6-0411-618F8E90F08E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 40 -1.2210219181086583 45 -1.2570346824096361
		 50 -2.3872312320747939 55 -1.1365343151822878 60 -2.407424073045429 65 0.91590939990750708
		 70 2.4540059945828765 75 1.2801492118758904 80 -2.2799050819055409 85 2.3320929306131455
		 90 -1.5023477598868713 95 -1.3853154019397151 100 -1.3853154019397151 105 -1.6972723730836159
		 160 -1.6972723730836159;
createNode animCurveTA -n "head_ctrl_rotateY";
	rename -uid "95747395-472F-44D9-1CA2-5BAA6B977614";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 40 -1.56533008380519 45 -2.1127102821906991
		 50 0.58676313870760988 55 2.1798802178279275 60 0.49741294632155575 65 -2.2813412792137489
		 70 -0.14433296044082156 75 2.0987891152944531 80 -0.9194801683502527 85 0.77758677579615298
		 90 1.945966045531941 95 -1.1820085069811257 100 -1.1820085069811257 105 -0.65982152881596734
		 160 -0.65982152881596734;
createNode animCurveTA -n "head_ctrl_rotateZ";
	rename -uid "4E59CB36-4FBA-4558-D2B1-43AE7F7D1FE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 -71.002970192020172 35 -58.885573978720146
		 40 -87.298601174191646 45 -107.19010128069471 50 -34.150732425609114 55 14.502922565349376
		 60 -36.284791168299456 65 -159.83325509033907 70 -224.58800373778388 75 -286.56103797074167
		 80 -429.90468996952313 85 -606.38177819392388 90 -715.63289970813025 95 -778.48893553185178
		 100 -778.48893553185178 105 -759.26197793635356 160 0;
createNode animCurveTU -n "head_ctrl_scaleX";
	rename -uid "D7636CEA-4AE8-53F2-2E1A-A9B8966F0D79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 1 35 1 40 1 45 1 50 1 55 1 60 1 65 1
		 70 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
createNode animCurveTU -n "head_ctrl_scaleY";
	rename -uid "4C813BD4-4654-9EF3-DAC3-E0A1D03D05DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 1 35 1 40 1 45 1 50 1 55 1 60 1 65 1
		 70 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
createNode animCurveTU -n "head_ctrl_scaleZ";
	rename -uid "D6757501-4E0A-9EEA-6BC5-839E86AAA4B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 1 35 1 40 1 45 1 50 1 55 1 60 1 65 1
		 70 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
createNode animCurveTU -n "upper_arm_ctrl_visibility";
	rename -uid "F5FC3DDB-4831-85B9-F7F6-A7A2086FB6BD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 1 35 1 40 1 45 1 50 1 55 1 60 1 65 1
		 70 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
	setAttr -s 17 ".kot[0:16]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5;
createNode animCurveTL -n "upper_arm_ctrl_translateX";
	rename -uid "23B7E78D-4B8B-DA86-77B4-7F8CA1500350";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 40 0 45 0 50 0 55 0 60 0 65 0
		 70 0 75 0 80 0 85 0 90 0 95 0 100 0 105 0 160 0;
createNode animCurveTL -n "upper_arm_ctrl_translateY";
	rename -uid "B6ABECC6-480F-00B2-1EB5-83B17E2E7CDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 40 0 45 0 50 0 55 0 60 0 65 0
		 70 0 75 0 80 0 85 0 90 0 95 0 100 0 105 0 160 0;
createNode animCurveTL -n "upper_arm_ctrl_translateZ";
	rename -uid "B5980017-448D-6288-9ADB-4DA21F26DF67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 40 0 45 0 50 0 55 0 60 0 65 0
		 70 0 75 0 80 0 85 0 90 0 95 0 100 0 105 0 160 0;
createNode animCurveTA -n "upper_arm_ctrl_rotateX";
	rename -uid "C041AF77-4E38-B547-CFDE-47910AAD8A5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 40 0 45 0 50 0 55 0 60 0 65 0
		 70 0 75 0 80 0.92247333543279186 85 5.254305485237718 90 6.4277154312231461 95 0
		 100 0 105 0 160 0;
createNode animCurveTA -n "upper_arm_ctrl_rotateY";
	rename -uid "9D108A43-4520-F3B2-D157-1BB98B3A04A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 40 0 45 0 50 0 55 0 60 0 65 0
		 70 0 75 0 80 6.4896456859375604 85 3.9240658836063549 90 -1.2861711202384096 95 0
		 100 0 105 0 160 0;
createNode animCurveTA -n "upper_arm_ctrl_rotateZ";
	rename -uid "2A6C289A-4B61-DA78-AFC9-C6ADF76B870E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 68.600425546091515 35 80.885003498136143
		 40 13.209396284127454 45 -11.65355010940454 50 28.372671877244898 55 28.372671877244898
		 60 -22.426213893575078 65 -1.6655456489910418 70 9.0498788465220859 75 9.0498788465220859
		 80 19.116755841698325 85 64.353988554539853 90 112.27693800673603 95 101.15596589561635
		 100 -5.2098735129243616 105 2.2708042884278807 160 0;
createNode animCurveTU -n "upper_arm_ctrl_scaleX";
	rename -uid "F9DD4FFC-4BC4-D0A3-8DF4-FDBA6D315D09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 1 35 1 40 1 45 1 50 1 55 1 60 1 65 1
		 70 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
createNode animCurveTU -n "upper_arm_ctrl_scaleY";
	rename -uid "E88B58EA-434F-7F4D-7996-5EB50F3BC4A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 1 35 1 40 1 45 1 50 1 55 1 60 1 65 1
		 70 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
createNode animCurveTU -n "upper_arm_ctrl_scaleZ";
	rename -uid "129F7806-499F-75CE-765E-B282F14C0BAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 1 35 1 40 1 45 1 50 1 55 1 60 1 65 1
		 70 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
createNode animCurveTU -n "lower_arm_ctrl_visibility";
	rename -uid "BE323627-432E-AB93-85B4-799BFEBBA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  30 1 35 1 38 1 40 1 45 1 50 1 55 1 60 1
		 65 1 70 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5;
createNode animCurveTL -n "lower_arm_ctrl_translateX";
	rename -uid "10002A83-4B8D-C345-2CA5-D5B38176E8A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  30 0 35 0 38 0 40 0 45 0 50 0 55 0 60 0
		 65 0 70 0 75 0 80 0 85 0 90 0 95 0 100 0 105 0 160 0;
createNode animCurveTL -n "lower_arm_ctrl_translateY";
	rename -uid "77B6A4D8-49F9-82BC-FA32-DF8DC9EF4F98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  30 0 35 0 38 0 40 0 45 0 50 0 55 0 60 0
		 65 0 70 0 75 0 80 0 85 0 90 0 95 0 100 0 105 0 160 0;
createNode animCurveTL -n "lower_arm_ctrl_translateZ";
	rename -uid "3CAE0384-4E67-1996-1F70-FE9F77FDE9CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  30 0 35 0 38 0 40 0 45 0 50 0 55 0 60 0
		 65 0 70 0 75 0 80 0 85 0 90 0 95 0 100 0 105 0 160 0;
createNode animCurveTA -n "lower_arm_ctrl_rotateX";
	rename -uid "02DB5EB2-45E2-5D48-06B5-44B014E9BAFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  30 0 35 0 38 0 40 0 45 0 50 0 55 0 60 0
		 65 0 70 0 75 0 80 -2.0734609884551598 85 -1.1584408556648595 90 0 95 0 100 0 105 0
		 160 0;
createNode animCurveTA -n "lower_arm_ctrl_rotateY";
	rename -uid "3C89E4A5-4AD8-9CD7-C27C-0F8F8075901E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  30 0 35 0 38 0 40 0 45 0 50 0 55 0 60 0
		 65 0 70 0 75 0 80 1.3500977963115972 85 2.1862925032222407 90 0 95 0 100 0 105 0
		 160 0;
createNode animCurveTA -n "lower_arm_ctrl_rotateZ";
	rename -uid "D9CFC714-400C-3653-66C9-069CB3A5D188";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  30 89.463128943444985 35 -21.662763281209713
		 38 63.786091304883307 40 28.802986905911663 45 81.855416178956418 50 133.81771592614405
		 55 83.01883015532573 60 15.030241096415633 65 70.135038634129486 70 6.8551117343527688
		 75 31.083264824551549 80 115.07237713320367 85 144.09022795610832 90 136.41719299530314
		 95 58.111698843334146 100 53.665462786125353 105 28.726976350125437 160 0;
createNode animCurveTU -n "lower_arm_ctrl_scaleX";
	rename -uid "2FE81520-4A3A-2CF7-2874-E4A63BEE492A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  30 1 35 1 38 1 40 1 45 1 50 1 55 1 60 1
		 65 1 70 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
createNode animCurveTU -n "lower_arm_ctrl_scaleY";
	rename -uid "653D98C8-4E49-ED63-88FC-D894F62CBE54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  30 1 35 1 38 1 40 1 45 1 50 1 55 1 60 1
		 65 1 70 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
createNode animCurveTU -n "lower_arm_ctrl_scaleZ";
	rename -uid "EED2FF3F-4F70-0BB3-5F18-94865E5ED5C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  30 1 35 1 38 1 40 1 45 1 50 1 55 1 60 1
		 65 1 70 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
createNode animCurveTU -n "base_ctrl_visibility";
	rename -uid "9EC5D5E6-4324-B906-6E66-86914E80AD33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 1 35 1 38 1 40 1 45 1 50 1 55 1 60 1
		 65 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
	setAttr -s 17 ".kot[0:16]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5;
createNode animCurveTL -n "base_ctrl_translateX";
	rename -uid "C63E06E3-4993-AC3D-4DCE-18B2F877E134";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 38 0 40 0 45 0 50 0 55 0 60 0
		 65 0 75 0 80 0 85 0 90 0 95 0 100 0 105 0 160 0;
createNode animCurveTL -n "base_ctrl_translateY";
	rename -uid "1972645C-4899-2589-868A-FAAA7F9F1B7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 38 0 40 0 45 0 50 0 55 0 60 0
		 65 0 75 0 80 0 85 0 90 0 95 0 100 0 105 0 160 0;
createNode animCurveTL -n "base_ctrl_translateZ";
	rename -uid "F6DA4982-4C2F-6BF9-ABF8-6F8001570994";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 38 0 40 0 45 0 50 0 55 0 60 0
		 65 0 75 0 80 0 85 0 90 0 95 0 100 0 105 0 160 0;
createNode animCurveTA -n "base_ctrl_rotateX";
	rename -uid "8A965A47-4421-1CF9-2D3E-1A9C1F37E9C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 38 0 40 0 45 0 50 0 55 0 60 0
		 65 0 75 0 80 0 85 0 90 0 95 0 100 0 105 0 160 0;
createNode animCurveTA -n "base_ctrl_rotateY";
	rename -uid "F6FF8465-4B22-485E-7CBD-46B096A8A46B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 38 0 40 0 45 0 50 0 55 0 60 0
		 65 0 75 0 80 0 85 0 90 0 95 0 100 0 105 0 160 0;
createNode animCurveTA -n "base_ctrl_rotateZ";
	rename -uid "5931A997-401B-A04B-9D8F-4B9638448B41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 -34.626244074057851 35 0 38 -44.533773953312377
		 40 -12.800179637498424 45 -64.570883043187649 50 -31.541535200759611 55 -82.340420971580272
		 60 -86.521976032682957 65 -38.397099292671861 75 -38.397099292671861 80 -18.97172767476216
		 85 -34.776616919480858 90 -45.078545819905628 95 -45.078545819905628 100 -45.078545819905628
		 105 -50.244568565492457 160 0;
createNode animCurveTU -n "base_ctrl_scaleX";
	rename -uid "A65DD7D8-4075-BF35-F83D-869DBF652B31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 1 35 1 38 1 40 1 45 1 50 1 55 1 60 1
		 65 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
createNode animCurveTU -n "base_ctrl_scaleY";
	rename -uid "4506FA31-4A4A-6587-93F6-5A99703E5479";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 1 35 1 38 1 40 1 45 1 50 1 55 1 60 1
		 65 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
createNode animCurveTU -n "base_ctrl_scaleZ";
	rename -uid "FEEA6DCF-42EA-DA72-832F-F798F1CF52C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 1 35 1 38 1 40 1 45 1 50 1 55 1 60 1
		 65 1 75 1 80 1 85 1 90 1 95 1 100 1 105 1 160 1;
createNode polyPlane -n "polyPlane1";
	rename -uid "D74CEBA1-4677-9C08-5952-E08FBFB4A370";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode animCurveTL -n "head_ctrl_translateZ";
	rename -uid "9E0E8D81-4D97-3BF1-E587-9CBF09AAF35B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  30 0 35 0.024198592673988117 40 0.048397185347976268
		 45 -0.034342664631819668 65 -0.017171332315909824 70 -0.012073593034624101 75 -0.0070354764349908304
		 80 -0.0025116054646100693 85 0 90 0 95 0 100 0 105 -0.26547010275971394 160 -0.15479865503402093;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2A850BAE-45D4-A69D-E339-7CBA6490ADED";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -785.71425449280639 -115.47618588757912 ;
	setAttr ".tgi[0].vh" -type "double2" 757.14282705670462 119.04761431709188 ;
createNode reference -n "Lamp01_RigRN1";
	rename -uid "451739E7-4A2C-9F38-535A-629F1FAA1BBC";
	setAttr -s 41 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Lamp01_RigRN1"
		"Lamp01_Rig1:lamp_modelRN" 0
		"Lamp01_RigRN1" 0
		"Lamp01_Rig1:lamp_modelRN" 20
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:base_geo|Lamp01_Rig1:lamp_model:base_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:base_geo|Lamp01_Rig1:lamp_model:base_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:lower_arm_geo|Lamp01_Rig1:lamp_model:lower_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:lower_arm_geo|Lamp01_Rig1:lamp_model:lower_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:upper_arm_geo|Lamp01_Rig1:lamp_model:upper_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:upper_arm_geo|Lamp01_Rig1:lamp_model:upper_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"visibility" " 1"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"translate" " -type \"double3\" 1.20280228758572472 8.11878088595905112 0"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"translateX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"translateY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"translateZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"rotate" " -type \"double3\" 0 0 -87.48755316481150146"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"rotateX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"rotateY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"rotateZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"scale" " -type \"double3\" 0.99999999999999989 0.99999999999999989 1"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"scaleX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"scaleY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo" 
		"scaleZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:lamp_model:Geometry|Lamp01_Rig1:lamp_model:head_geo|Lamp01_Rig1:lamp_model:head_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		"Lamp01_RigRN1" 97
		2 "|Lamp01_Rig1:Lamp_Rig" "visibility" " -av 1"
		2 "|Lamp01_Rig1:Lamp_Rig" "translate" " -type \"double3\" 0 0 0"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Joints1" "visibility" " 0"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1" "visibility" " 1"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"visibility" " -av 1"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"translate" " -type \"double3\" -2.86560944659259853 0 0"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"translateX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"translateY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"translateZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"rotateX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"rotateY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"rotateZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"scaleX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"scaleY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl" 
		"scaleZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"visibility" " -av 1"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"translateX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"translateY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"translateZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"rotate" " -type \"double3\" 0 0 17.77558495277057204"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"rotateX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"rotateY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"rotateZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"scaleX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"scaleY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl" 
		"scaleZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"visibility" " -av 1"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"translateX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"translateY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"translateZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"rotate" " -type \"double3\" 0 0 -47.8261121973990484"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"rotateX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"rotateY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"rotateZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"scaleX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"scaleY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl" 
		"scaleZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"visibility" " -av 1"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"translateX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"translateY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"translateZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"rotate" " -type \"double3\" 0 0 -57.43702592018306063"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"rotateX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"rotateY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"rotateZ" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"scaleX" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"scaleY" " -av"
		2 "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl" 
		"scaleZ" " -av"
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig.visibility" "Lamp01_RigRN1.placeHolderList[1]" 
		""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl.translateX" 
		"Lamp01_RigRN1.placeHolderList[2]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl.translateY" 
		"Lamp01_RigRN1.placeHolderList[3]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl.translateZ" 
		"Lamp01_RigRN1.placeHolderList[4]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl.rotateX" 
		"Lamp01_RigRN1.placeHolderList[5]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl.rotateY" 
		"Lamp01_RigRN1.placeHolderList[6]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl.rotateZ" 
		"Lamp01_RigRN1.placeHolderList[7]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl.scaleX" 
		"Lamp01_RigRN1.placeHolderList[8]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl.scaleY" 
		"Lamp01_RigRN1.placeHolderList[9]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl.scaleZ" 
		"Lamp01_RigRN1.placeHolderList[10]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl.visibility" 
		"Lamp01_RigRN1.placeHolderList[11]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl.translateX" 
		"Lamp01_RigRN1.placeHolderList[12]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl.translateY" 
		"Lamp01_RigRN1.placeHolderList[13]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl.translateZ" 
		"Lamp01_RigRN1.placeHolderList[14]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl.rotateX" 
		"Lamp01_RigRN1.placeHolderList[15]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl.rotateY" 
		"Lamp01_RigRN1.placeHolderList[16]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl.rotateZ" 
		"Lamp01_RigRN1.placeHolderList[17]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl.scaleX" 
		"Lamp01_RigRN1.placeHolderList[18]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl.scaleY" 
		"Lamp01_RigRN1.placeHolderList[19]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl.scaleZ" 
		"Lamp01_RigRN1.placeHolderList[20]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl.visibility" 
		"Lamp01_RigRN1.placeHolderList[21]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl.translateX" 
		"Lamp01_RigRN1.placeHolderList[22]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl.translateY" 
		"Lamp01_RigRN1.placeHolderList[23]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl.translateZ" 
		"Lamp01_RigRN1.placeHolderList[24]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl.rotateX" 
		"Lamp01_RigRN1.placeHolderList[25]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl.rotateY" 
		"Lamp01_RigRN1.placeHolderList[26]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl.rotateZ" 
		"Lamp01_RigRN1.placeHolderList[27]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl.scaleX" 
		"Lamp01_RigRN1.placeHolderList[28]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl.scaleY" 
		"Lamp01_RigRN1.placeHolderList[29]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl.scaleZ" 
		"Lamp01_RigRN1.placeHolderList[30]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl.visibility" 
		"Lamp01_RigRN1.placeHolderList[31]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl.translateX" 
		"Lamp01_RigRN1.placeHolderList[32]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl.translateY" 
		"Lamp01_RigRN1.placeHolderList[33]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl.translateZ" 
		"Lamp01_RigRN1.placeHolderList[34]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl.rotateX" 
		"Lamp01_RigRN1.placeHolderList[35]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl.rotateY" 
		"Lamp01_RigRN1.placeHolderList[36]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl.rotateZ" 
		"Lamp01_RigRN1.placeHolderList[37]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl.scaleX" 
		"Lamp01_RigRN1.placeHolderList[38]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl.scaleY" 
		"Lamp01_RigRN1.placeHolderList[39]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl.scaleZ" 
		"Lamp01_RigRN1.placeHolderList[40]" ""
		5 4 "Lamp01_RigRN1" "|Lamp01_Rig1:Lamp_Rig|Lamp01_Rig1:Controls1|Lamp01_Rig1:base_cntrl_grp|Lamp01_Rig1:base_cntrl|Lamp01_Rig1:lower_arm_cntrl_grp|Lamp01_Rig1:lower_arm_cntrl|Lamp01_Rig1:upper_arm_cntrl_grp|Lamp01_Rig1:upper_arm_cntrl|Lamp01_Rig1:head_cntrl_grp|Lamp01_Rig1:head_cntrl.visibility" 
		"Lamp01_RigRN1.placeHolderList[41]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTU -n "head_cntrl_visibility1";
	rename -uid "A907C810-42F9-89CB-17B5-3A96B2CA7911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 125 1 130 1 140 1 143 1 150 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5;
createNode animCurveTL -n "head_cntrl_translateX1";
	rename -uid "0A317978-4E68-7FC7-8758-AF9B4B9CE968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTL -n "head_cntrl_translateY1";
	rename -uid "52329315-4181-46E4-8655-978D56231A17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTL -n "head_cntrl_translateZ1";
	rename -uid "3E33EFB7-4F24-71C4-90EA-3AA620ADC052";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTA -n "head_cntrl_rotateX1";
	rename -uid "16861939-4CD5-188D-139C-72AC7B83738A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0.7260310979757858
		 100 0 105 0 110 0 115 0 125 0 130 0.55097671896052325 140 1.1019534379210432 143 1.1019534379210432
		 150 1.1019534379210432;
createNode animCurveTA -n "head_cntrl_rotateY1";
	rename -uid "7831A316-485D-5707-94D5-EFBE4E49DB09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 -1.4030947077410938
		 100 0 105 0 110 0 115 0 125 0 130 -1.112577083856509 140 -2.2251541677130113 143 -2.2251541677130113
		 150 -2.2251541677130113;
createNode animCurveTA -n "head_cntrl_rotateZ1";
	rename -uid "10B8F63C-4C44-AEDA-48D4-B48E1A010362";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 -57.437025920183061 20 -110.49261769755161
		 30 -70.324845790859015 35 -79.414660509958111 100 1.7785716615467635 105 -3.5891502550591059
		 110 -84.078833220084221 115 -57.693499512477906 125 47.467527518081212 130 0 140 -34.524019337249811
		 143 -34.524019337249811 150 0;
createNode animCurveTU -n "head_cntrl_scaleX1";
	rename -uid "F6C6290F-4349-AE11-D0AE-32B8311BC1D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 125 1 130 1 140 1 143 1 150 1;
createNode animCurveTU -n "head_cntrl_scaleY1";
	rename -uid "188B2F91-47A1-6551-8B33-FC8CC6828F56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 125 1 130 1 140 1 143 1 150 1;
createNode animCurveTU -n "head_cntrl_scaleZ1";
	rename -uid "2838787E-4CC2-1190-6021-C3ABDCDE883D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 125 1 130 1 140 1 143 1 150 1;
createNode animCurveTU -n "upper_arm_cntrl_visibility1";
	rename -uid "AFEADBB6-4E61-1A03-7ADD-AFBF8362B821";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 125 1 130 1 140 1 143 1 150 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5;
createNode animCurveTL -n "upper_arm_cntrl_translateX1";
	rename -uid "E2ACA1B0-421F-7FBB-FBB0-42A769089114";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTL -n "upper_arm_cntrl_translateY1";
	rename -uid "1ED80C17-4003-CCBE-DAF0-A5AB2F2A061C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTL -n "upper_arm_cntrl_translateZ1";
	rename -uid "97EE1125-4D9C-B46B-CF39-55AF46023F5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTA -n "upper_arm_cntrl_rotateX1";
	rename -uid "47E33AAE-4E07-FFE0-2F51-959A1417E085";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTA -n "upper_arm_cntrl_rotateY1";
	rename -uid "847B080D-433D-458B-3DF3-C08E2FC53527";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTA -n "upper_arm_cntrl_rotateZ1";
	rename -uid "BC308605-4212-6155-45A0-FBB898A8C19A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 -47.826112197399048 20 54.938246591922912
		 30 -88.135140683619923 35 21.953741639430003 100 -53.971220771552701 105 -28.686916019435131
		 110 -64.739184583001276 115 -36.435784504645923 125 -15.949949684888004 130 0 140 -49.852430660901035
		 143 -49.852430660901035 150 0;
createNode animCurveTU -n "upper_arm_cntrl_scaleX1";
	rename -uid "7F36C0EE-4C8A-2E20-651F-6EAD4631A7D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 125 1 130 1 140 1 143 1 150 1;
createNode animCurveTU -n "upper_arm_cntrl_scaleY1";
	rename -uid "E362F183-4059-9790-B009-FA93A8EC65EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 125 1 130 1 140 1 143 1 150 1;
createNode animCurveTU -n "upper_arm_cntrl_scaleZ1";
	rename -uid "786C90D3-40FD-8BD1-746A-52BAC112556F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 125 1 130 1 140 1 143 1 150 1;
createNode animCurveTU -n "lower_arm_cntrl_visibility1";
	rename -uid "C582BCB0-4A4C-116C-96DD-7B82FA4EF95B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 125 1 130 1 140 1 143 1 150 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5;
createNode animCurveTL -n "lower_arm_cntrl_translateX1";
	rename -uid "5B89469E-4E91-8060-9A70-4B94774B310B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTL -n "lower_arm_cntrl_translateY1";
	rename -uid "858C9F8D-4CE8-45C1-21CD-2CA68C2B0BF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTL -n "lower_arm_cntrl_translateZ1";
	rename -uid "F336444C-4FAC-D512-1CE2-5A820CBC8BF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTA -n "lower_arm_cntrl_rotateX1";
	rename -uid "2CACD66E-4098-3645-DA28-B3AA05B382AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTA -n "lower_arm_cntrl_rotateY1";
	rename -uid "69D1BCF4-43A3-69B5-21AC-46AC761D31BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 125 0 130 0 140 0 143 0 150 0;
createNode animCurveTA -n "lower_arm_cntrl_rotateZ1";
	rename -uid "73037D84-4B5E-3AE3-64A9-7589C9BDE0EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 17.775584952770572 20 -20.367624230353208
		 30 35.548098493286233 35 -0.31614042826317063 100 39.93121955276473 105 51.959177538273721
		 110 56.259603863325829 115 78.577311014770089 125 -16.100665428674478 130 0 140 21.231888118379928
		 143 21.231888118379928 150 0;
createNode animCurveTU -n "lower_arm_cntrl_scaleX1";
	rename -uid "EDF9BA43-43BA-18D6-7A87-DE9859C6223D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 125 1 130 1 140 1 143 1 150 1;
createNode animCurveTU -n "lower_arm_cntrl_scaleY1";
	rename -uid "595C844A-4625-8538-14C8-93896B2A2558";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 125 1 130 1 140 1 143 1 150 1;
createNode animCurveTU -n "lower_arm_cntrl_scaleZ1";
	rename -uid "F806CA54-439F-FB4E-ABFF-2B8D81A905EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 125 1 130 1 140 1 143 1 150 1;
createNode animCurveTU -n "base_cntrl_visibility1";
	rename -uid "F518D62C-4CDB-1068-47B8-77B4E9969CBE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 120 1 125 1 130 1 140 1 143 1 150 1 160 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5;
createNode animCurveTL -n "base_cntrl_translateY1";
	rename -uid "EE005BBC-44C3-8987-0969-B1A1371CCAD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 10 0 20 0 30 5.2515298875201264 35 48.149332165669648
		 100 15.974807708737929 105 4.9541419985522133 110 0.33211330379313098 115 2.0278975410570355
		 120 0.33211330379313098 125 0.98593590845633694 130 0 140 0 143 0 150 0 160 0;
createNode animCurveTL -n "base_cntrl_translateZ1";
	rename -uid "676FAD7A-4F06-A6D9-995A-239CBF4CB4A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 120 0 125 0 130 0 140 0 143 0 150 0 160 0;
createNode animCurveTA -n "base_cntrl_rotateX1";
	rename -uid "729C6041-4CB6-A564-43EC-D2A937A3DB71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 120 0 125 0 130 0 140 0 143 0 150 0 160 0;
createNode animCurveTA -n "base_cntrl_rotateY1";
	rename -uid "BE9DD774-4502-8591-7303-DE92AACFD654";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 10 0 20 0 30 0 35 0 100 0 105 0 110 0
		 115 0 120 0 125 0 130 0 140 0 143 0 150 0 160 0;
createNode animCurveTA -n "base_cntrl_rotateZ1";
	rename -uid "54A9DE4C-47EA-9D61-87D2-E5AAE99CA513";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 10 0 20 0 30 51.24337943596916 35 0
		 100 -48.269411237508777 105 -59.847688580683318 110 -0.80698580246247442 115 20.452971978168652
		 120 0 125 -12.78418704437642 130 0 140 0 143 0 150 0 160 0;
createNode animCurveTU -n "base_cntrl_scaleX1";
	rename -uid "35947248-4B0B-5331-6DA5-0D99C3EE11AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 120 1 125 1 130 1 140 1 143 1 150 1 160 1;
createNode animCurveTU -n "base_cntrl_scaleY1";
	rename -uid "380292A1-4A39-3357-563F-44B3A1252A4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 120 1 125 1 130 1 140 1 143 1 150 1 160 1;
createNode animCurveTU -n "base_cntrl_scaleZ1";
	rename -uid "E2A8FBE5-42EF-7D1C-414E-86A199EE823D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 10 1 20 1 30 1 35 1 100 1 105 1 110 1
		 115 1 120 1 125 1 130 1 140 1 143 1 150 1 160 1;
createNode animCurveTU -n "Lamp_Rig_visibility";
	rename -uid "B09E7E0D-4059-62E9-9D72-F8B03832E979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 35 0 105 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "head_ctrl_translateX";
	rename -uid "A3A732F2-40C2-1CF9-56C8-79A670997734";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  30 0 35 0 40 0 45 0 50 0 55 0 60 0 65 0
		 70 0 75 0 80 0 85 0 90 0 95 0 100 0 105 0 160 -163.18895742621035;
createNode animCurveTL -n "base_cntrl_translateX1";
	rename -uid "91C66BC0-47C3-76CF-70FE-0FAF68188333";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 10 -2.8656094465925985 20 0 30 23.902304355069617
		 35 3.3168542542492645 100 -155.82363609493027 105 -13.046745210450753 110 0 115 0
		 120 0 125 0 130 0 140 0 143 0 150 0 160 0;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "096699F1-4C8A-BF3E-7532-8D82ED2CD742";
	setAttr ".txf" -type "matrix" 0.72931201764585085 0 0 0 0 47.706625856076521 0 0
		 0 0 0.72931201764585085 0 -83.821081518864602 24.24585822652918 -40.146171739952671 1;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "A39D7E85-47CA-0601-F134-83949D620F9C";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode animCurveTL -n "Pole_translateX";
	rename -uid "D42CE05A-42F3-7346-A5B0-9AA35EBD2B48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 35 76.559801575478005;
select -ne :time1;
	setAttr ".o" 10;
	setAttr ".unw" 10;
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
select -ne :defaultRenderingList1;
	setAttr -s 4 ".r";
select -ne :initialShadingGroup;
	setAttr -s 13 ".dsm";
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
connectAttr "base_geo_parentConstraint1.ctx" "lamp_modelRN.phl[1]";
connectAttr "base_geo_parentConstraint1.cty" "lamp_modelRN.phl[2]";
connectAttr "base_geo_parentConstraint1.ctz" "lamp_modelRN.phl[3]";
connectAttr "base_geo_parentConstraint1.crx" "lamp_modelRN.phl[4]";
connectAttr "base_geo_parentConstraint1.cry" "lamp_modelRN.phl[5]";
connectAttr "base_geo_parentConstraint1.crz" "lamp_modelRN.phl[6]";
connectAttr "lamp_modelRN.phl[7]" "base_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[8]" "base_geo_scaleConstraint1.cpim";
connectAttr "lamp_modelRN.phl[9]" "base_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[10]" "base_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[11]" "base_geo_parentConstraint1.crt";
connectAttr "base_geo_scaleConstraint1.csx" "lamp_modelRN.phl[12]";
connectAttr "base_geo_scaleConstraint1.csy" "lamp_modelRN.phl[13]";
connectAttr "base_geo_scaleConstraint1.csz" "lamp_modelRN.phl[14]";
connectAttr "lower_arm_geo_parentConstraint1.ctx" "lamp_modelRN.phl[15]";
connectAttr "lower_arm_geo_parentConstraint1.cty" "lamp_modelRN.phl[16]";
connectAttr "lower_arm_geo_parentConstraint1.ctz" "lamp_modelRN.phl[17]";
connectAttr "lower_arm_geo_parentConstraint1.crx" "lamp_modelRN.phl[18]";
connectAttr "lower_arm_geo_parentConstraint1.cry" "lamp_modelRN.phl[19]";
connectAttr "lower_arm_geo_parentConstraint1.crz" "lamp_modelRN.phl[20]";
connectAttr "lamp_modelRN.phl[21]" "lower_arm_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[22]" "lower_arm_geo_scaleConstraint1.cpim";
connectAttr "lamp_modelRN.phl[23]" "lower_arm_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[24]" "lower_arm_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[25]" "lower_arm_geo_parentConstraint1.crt";
connectAttr "lower_arm_geo_scaleConstraint1.csx" "lamp_modelRN.phl[26]";
connectAttr "lower_arm_geo_scaleConstraint1.csy" "lamp_modelRN.phl[27]";
connectAttr "lower_arm_geo_scaleConstraint1.csz" "lamp_modelRN.phl[28]";
connectAttr "upper_arm_geo_parentConstraint1.ctx" "lamp_modelRN.phl[29]";
connectAttr "upper_arm_geo_parentConstraint1.cty" "lamp_modelRN.phl[30]";
connectAttr "upper_arm_geo_parentConstraint1.ctz" "lamp_modelRN.phl[31]";
connectAttr "upper_arm_geo_parentConstraint1.crx" "lamp_modelRN.phl[32]";
connectAttr "upper_arm_geo_parentConstraint1.cry" "lamp_modelRN.phl[33]";
connectAttr "upper_arm_geo_parentConstraint1.crz" "lamp_modelRN.phl[34]";
connectAttr "lamp_modelRN.phl[35]" "upper_arm_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[36]" "upper_arm_geo_scaleConstraint1.cpim";
connectAttr "lamp_modelRN.phl[37]" "upper_arm_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[38]" "upper_arm_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[39]" "upper_arm_geo_parentConstraint1.crt";
connectAttr "upper_arm_geo_scaleConstraint1.csx" "lamp_modelRN.phl[40]";
connectAttr "upper_arm_geo_scaleConstraint1.csy" "lamp_modelRN.phl[41]";
connectAttr "upper_arm_geo_scaleConstraint1.csz" "lamp_modelRN.phl[42]";
connectAttr "head_geo_parentConstraint1.ctx" "lamp_modelRN.phl[43]";
connectAttr "head_geo_parentConstraint1.cty" "lamp_modelRN.phl[44]";
connectAttr "head_geo_parentConstraint1.ctz" "lamp_modelRN.phl[45]";
connectAttr "head_geo_parentConstraint1.crx" "lamp_modelRN.phl[46]";
connectAttr "head_geo_parentConstraint1.cry" "lamp_modelRN.phl[47]";
connectAttr "head_geo_parentConstraint1.crz" "lamp_modelRN.phl[48]";
connectAttr "lamp_modelRN.phl[49]" "head_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[50]" "head_geo_scaleConstraint1.cpim";
connectAttr "lamp_modelRN.phl[51]" "head_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[52]" "head_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[53]" "head_geo_parentConstraint1.crt";
connectAttr "head_geo_scaleConstraint1.csx" "lamp_modelRN.phl[54]";
connectAttr "head_geo_scaleConstraint1.csy" "lamp_modelRN.phl[55]";
connectAttr "head_geo_scaleConstraint1.csz" "lamp_modelRN.phl[56]";
connectAttr "Lamp_Rig_visibility.o" "Lamp01_RigRN1.phl[1]";
connectAttr "base_cntrl_translateX1.o" "Lamp01_RigRN1.phl[2]";
connectAttr "base_cntrl_translateY1.o" "Lamp01_RigRN1.phl[3]";
connectAttr "base_cntrl_translateZ1.o" "Lamp01_RigRN1.phl[4]";
connectAttr "base_cntrl_rotateX1.o" "Lamp01_RigRN1.phl[5]";
connectAttr "base_cntrl_rotateY1.o" "Lamp01_RigRN1.phl[6]";
connectAttr "base_cntrl_rotateZ1.o" "Lamp01_RigRN1.phl[7]";
connectAttr "base_cntrl_scaleX1.o" "Lamp01_RigRN1.phl[8]";
connectAttr "base_cntrl_scaleY1.o" "Lamp01_RigRN1.phl[9]";
connectAttr "base_cntrl_scaleZ1.o" "Lamp01_RigRN1.phl[10]";
connectAttr "base_cntrl_visibility1.o" "Lamp01_RigRN1.phl[11]";
connectAttr "lower_arm_cntrl_translateX1.o" "Lamp01_RigRN1.phl[12]";
connectAttr "lower_arm_cntrl_translateY1.o" "Lamp01_RigRN1.phl[13]";
connectAttr "lower_arm_cntrl_translateZ1.o" "Lamp01_RigRN1.phl[14]";
connectAttr "lower_arm_cntrl_rotateX1.o" "Lamp01_RigRN1.phl[15]";
connectAttr "lower_arm_cntrl_rotateY1.o" "Lamp01_RigRN1.phl[16]";
connectAttr "lower_arm_cntrl_rotateZ1.o" "Lamp01_RigRN1.phl[17]";
connectAttr "lower_arm_cntrl_scaleX1.o" "Lamp01_RigRN1.phl[18]";
connectAttr "lower_arm_cntrl_scaleY1.o" "Lamp01_RigRN1.phl[19]";
connectAttr "lower_arm_cntrl_scaleZ1.o" "Lamp01_RigRN1.phl[20]";
connectAttr "lower_arm_cntrl_visibility1.o" "Lamp01_RigRN1.phl[21]";
connectAttr "upper_arm_cntrl_translateX1.o" "Lamp01_RigRN1.phl[22]";
connectAttr "upper_arm_cntrl_translateY1.o" "Lamp01_RigRN1.phl[23]";
connectAttr "upper_arm_cntrl_translateZ1.o" "Lamp01_RigRN1.phl[24]";
connectAttr "upper_arm_cntrl_rotateX1.o" "Lamp01_RigRN1.phl[25]";
connectAttr "upper_arm_cntrl_rotateY1.o" "Lamp01_RigRN1.phl[26]";
connectAttr "upper_arm_cntrl_rotateZ1.o" "Lamp01_RigRN1.phl[27]";
connectAttr "upper_arm_cntrl_scaleX1.o" "Lamp01_RigRN1.phl[28]";
connectAttr "upper_arm_cntrl_scaleY1.o" "Lamp01_RigRN1.phl[29]";
connectAttr "upper_arm_cntrl_scaleZ1.o" "Lamp01_RigRN1.phl[30]";
connectAttr "upper_arm_cntrl_visibility1.o" "Lamp01_RigRN1.phl[31]";
connectAttr "head_cntrl_translateX1.o" "Lamp01_RigRN1.phl[32]";
connectAttr "head_cntrl_translateY1.o" "Lamp01_RigRN1.phl[33]";
connectAttr "head_cntrl_translateZ1.o" "Lamp01_RigRN1.phl[34]";
connectAttr "head_cntrl_rotateX1.o" "Lamp01_RigRN1.phl[35]";
connectAttr "head_cntrl_rotateY1.o" "Lamp01_RigRN1.phl[36]";
connectAttr "head_cntrl_rotateZ1.o" "Lamp01_RigRN1.phl[37]";
connectAttr "head_cntrl_scaleX1.o" "Lamp01_RigRN1.phl[38]";
connectAttr "head_cntrl_scaleY1.o" "Lamp01_RigRN1.phl[39]";
connectAttr "head_cntrl_scaleZ1.o" "Lamp01_RigRN1.phl[40]";
connectAttr "head_cntrl_visibility1.o" "Lamp01_RigRN1.phl[41]";
connectAttr "Lamp_visibility.o" "Lamp.v";
connectAttr "head_jnt_scaleConstraint1.csx" "head_jnt.sx";
connectAttr "head_jnt_scaleConstraint1.csy" "head_jnt.sy";
connectAttr "head_jnt_scaleConstraint1.csz" "head_jnt.sz";
connectAttr "head_jnt_parentConstraint1.ctx" "head_jnt.tx";
connectAttr "head_jnt_parentConstraint1.cty" "head_jnt.ty";
connectAttr "head_jnt_parentConstraint1.ctz" "head_jnt.tz";
connectAttr "head_jnt_parentConstraint1.crx" "head_jnt.rx";
connectAttr "head_jnt_parentConstraint1.cry" "head_jnt.ry";
connectAttr "head_jnt_parentConstraint1.crz" "head_jnt.rz";
connectAttr "head_jnt.s" "upper_arm_jnt.is";
connectAttr "upper_arm_jnt_scaleConstraint1.csx" "upper_arm_jnt.sx";
connectAttr "upper_arm_jnt_scaleConstraint1.csy" "upper_arm_jnt.sy";
connectAttr "upper_arm_jnt_scaleConstraint1.csz" "upper_arm_jnt.sz";
connectAttr "upper_arm_jnt_parentConstraint1.ctx" "upper_arm_jnt.tx";
connectAttr "upper_arm_jnt_parentConstraint1.cty" "upper_arm_jnt.ty";
connectAttr "upper_arm_jnt_parentConstraint1.ctz" "upper_arm_jnt.tz";
connectAttr "upper_arm_jnt_parentConstraint1.crx" "upper_arm_jnt.rx";
connectAttr "upper_arm_jnt_parentConstraint1.cry" "upper_arm_jnt.ry";
connectAttr "upper_arm_jnt_parentConstraint1.crz" "upper_arm_jnt.rz";
connectAttr "upper_arm_jnt.s" "lower_arm_jnt.is";
connectAttr "lower_arm_jnt_scaleConstraint1.csx" "lower_arm_jnt.sx";
connectAttr "lower_arm_jnt_scaleConstraint1.csy" "lower_arm_jnt.sy";
connectAttr "lower_arm_jnt_scaleConstraint1.csz" "lower_arm_jnt.sz";
connectAttr "lower_arm_jnt_parentConstraint1.ctx" "lower_arm_jnt.tx";
connectAttr "lower_arm_jnt_parentConstraint1.cty" "lower_arm_jnt.ty";
connectAttr "lower_arm_jnt_parentConstraint1.ctz" "lower_arm_jnt.tz";
connectAttr "lower_arm_jnt_parentConstraint1.crx" "lower_arm_jnt.rx";
connectAttr "lower_arm_jnt_parentConstraint1.cry" "lower_arm_jnt.ry";
connectAttr "lower_arm_jnt_parentConstraint1.crz" "lower_arm_jnt.rz";
connectAttr "base_jnt_scaleConstraint1.csx" "base_jnt.sx";
connectAttr "base_jnt_scaleConstraint1.csy" "base_jnt.sy";
connectAttr "base_jnt_scaleConstraint1.csz" "base_jnt.sz";
connectAttr "lower_arm_jnt.s" "base_jnt.is";
connectAttr "base_jnt_parentConstraint1.ctx" "base_jnt.tx";
connectAttr "base_jnt_parentConstraint1.cty" "base_jnt.ty";
connectAttr "base_jnt_parentConstraint1.ctz" "base_jnt.tz";
connectAttr "base_jnt_parentConstraint1.crx" "base_jnt.rx";
connectAttr "base_jnt_parentConstraint1.cry" "base_jnt.ry";
connectAttr "base_jnt_parentConstraint1.crz" "base_jnt.rz";
connectAttr "base_jnt.ro" "base_jnt_parentConstraint1.cro";
connectAttr "base_jnt.pim" "base_jnt_parentConstraint1.cpim";
connectAttr "base_jnt.rp" "base_jnt_parentConstraint1.crp";
connectAttr "base_jnt.rpt" "base_jnt_parentConstraint1.crt";
connectAttr "base_jnt.jo" "base_jnt_parentConstraint1.cjo";
connectAttr "base_ctrl.t" "base_jnt_parentConstraint1.tg[0].tt";
connectAttr "base_ctrl.rp" "base_jnt_parentConstraint1.tg[0].trp";
connectAttr "base_ctrl.rpt" "base_jnt_parentConstraint1.tg[0].trt";
connectAttr "base_ctrl.r" "base_jnt_parentConstraint1.tg[0].tr";
connectAttr "base_ctrl.ro" "base_jnt_parentConstraint1.tg[0].tro";
connectAttr "base_ctrl.s" "base_jnt_parentConstraint1.tg[0].ts";
connectAttr "base_ctrl.pm" "base_jnt_parentConstraint1.tg[0].tpm";
connectAttr "base_jnt_parentConstraint1.w0" "base_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "base_jnt.ssc" "base_jnt_scaleConstraint1.tsc";
connectAttr "base_jnt.pim" "base_jnt_scaleConstraint1.cpim";
connectAttr "base_ctrl.s" "base_jnt_scaleConstraint1.tg[0].ts";
connectAttr "base_ctrl.pm" "base_jnt_scaleConstraint1.tg[0].tpm";
connectAttr "base_jnt_scaleConstraint1.w0" "base_jnt_scaleConstraint1.tg[0].tw";
connectAttr "lower_arm_jnt.ro" "lower_arm_jnt_parentConstraint1.cro";
connectAttr "lower_arm_jnt.pim" "lower_arm_jnt_parentConstraint1.cpim";
connectAttr "lower_arm_jnt.rp" "lower_arm_jnt_parentConstraint1.crp";
connectAttr "lower_arm_jnt.rpt" "lower_arm_jnt_parentConstraint1.crt";
connectAttr "lower_arm_jnt.jo" "lower_arm_jnt_parentConstraint1.cjo";
connectAttr "lower_arm_ctrl.t" "lower_arm_jnt_parentConstraint1.tg[0].tt";
connectAttr "lower_arm_ctrl.rp" "lower_arm_jnt_parentConstraint1.tg[0].trp";
connectAttr "lower_arm_ctrl.rpt" "lower_arm_jnt_parentConstraint1.tg[0].trt";
connectAttr "lower_arm_ctrl.r" "lower_arm_jnt_parentConstraint1.tg[0].tr";
connectAttr "lower_arm_ctrl.ro" "lower_arm_jnt_parentConstraint1.tg[0].tro";
connectAttr "lower_arm_ctrl.s" "lower_arm_jnt_parentConstraint1.tg[0].ts";
connectAttr "lower_arm_ctrl.pm" "lower_arm_jnt_parentConstraint1.tg[0].tpm";
connectAttr "lower_arm_jnt_parentConstraint1.w0" "lower_arm_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "lower_arm_jnt.ssc" "lower_arm_jnt_scaleConstraint1.tsc";
connectAttr "lower_arm_jnt.pim" "lower_arm_jnt_scaleConstraint1.cpim";
connectAttr "lower_arm_ctrl.s" "lower_arm_jnt_scaleConstraint1.tg[0].ts";
connectAttr "lower_arm_ctrl.pm" "lower_arm_jnt_scaleConstraint1.tg[0].tpm";
connectAttr "lower_arm_jnt_scaleConstraint1.w0" "lower_arm_jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "upper_arm_jnt.ro" "upper_arm_jnt_parentConstraint1.cro";
connectAttr "upper_arm_jnt.pim" "upper_arm_jnt_parentConstraint1.cpim";
connectAttr "upper_arm_jnt.rp" "upper_arm_jnt_parentConstraint1.crp";
connectAttr "upper_arm_jnt.rpt" "upper_arm_jnt_parentConstraint1.crt";
connectAttr "upper_arm_jnt.jo" "upper_arm_jnt_parentConstraint1.cjo";
connectAttr "upper_arm_ctrl.t" "upper_arm_jnt_parentConstraint1.tg[0].tt";
connectAttr "upper_arm_ctrl.rp" "upper_arm_jnt_parentConstraint1.tg[0].trp";
connectAttr "upper_arm_ctrl.rpt" "upper_arm_jnt_parentConstraint1.tg[0].trt";
connectAttr "upper_arm_ctrl.r" "upper_arm_jnt_parentConstraint1.tg[0].tr";
connectAttr "upper_arm_ctrl.ro" "upper_arm_jnt_parentConstraint1.tg[0].tro";
connectAttr "upper_arm_ctrl.s" "upper_arm_jnt_parentConstraint1.tg[0].ts";
connectAttr "upper_arm_ctrl.pm" "upper_arm_jnt_parentConstraint1.tg[0].tpm";
connectAttr "upper_arm_jnt_parentConstraint1.w0" "upper_arm_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "upper_arm_jnt.ssc" "upper_arm_jnt_scaleConstraint1.tsc";
connectAttr "upper_arm_jnt.pim" "upper_arm_jnt_scaleConstraint1.cpim";
connectAttr "upper_arm_ctrl.s" "upper_arm_jnt_scaleConstraint1.tg[0].ts";
connectAttr "upper_arm_ctrl.pm" "upper_arm_jnt_scaleConstraint1.tg[0].tpm";
connectAttr "upper_arm_jnt_scaleConstraint1.w0" "upper_arm_jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "head_jnt.ro" "head_jnt_parentConstraint1.cro";
connectAttr "head_jnt.pim" "head_jnt_parentConstraint1.cpim";
connectAttr "head_jnt.rp" "head_jnt_parentConstraint1.crp";
connectAttr "head_jnt.rpt" "head_jnt_parentConstraint1.crt";
connectAttr "head_jnt.jo" "head_jnt_parentConstraint1.cjo";
connectAttr "head_ctrl.t" "head_jnt_parentConstraint1.tg[0].tt";
connectAttr "head_ctrl.rp" "head_jnt_parentConstraint1.tg[0].trp";
connectAttr "head_ctrl.rpt" "head_jnt_parentConstraint1.tg[0].trt";
connectAttr "head_ctrl.r" "head_jnt_parentConstraint1.tg[0].tr";
connectAttr "head_ctrl.ro" "head_jnt_parentConstraint1.tg[0].tro";
connectAttr "head_ctrl.s" "head_jnt_parentConstraint1.tg[0].ts";
connectAttr "head_ctrl.pm" "head_jnt_parentConstraint1.tg[0].tpm";
connectAttr "head_jnt_parentConstraint1.w0" "head_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "head_jnt.pim" "head_jnt_scaleConstraint1.cpim";
connectAttr "head_ctrl.s" "head_jnt_scaleConstraint1.tg[0].ts";
connectAttr "head_ctrl.pm" "head_jnt_scaleConstraint1.tg[0].tpm";
connectAttr "head_jnt_scaleConstraint1.w0" "head_jnt_scaleConstraint1.tg[0].tw";
connectAttr "head_ctrl_translateX.o" "head_ctrl.tx";
connectAttr "head_ctrl_translateY.o" "head_ctrl.ty";
connectAttr "head_ctrl_translateZ.o" "head_ctrl.tz";
connectAttr "head_ctrl_rotateX.o" "head_ctrl.rx";
connectAttr "head_ctrl_rotateY.o" "head_ctrl.ry";
connectAttr "head_ctrl_rotateZ.o" "head_ctrl.rz";
connectAttr "head_ctrl_scaleX.o" "head_ctrl.sx";
connectAttr "head_ctrl_scaleY.o" "head_ctrl.sy";
connectAttr "head_ctrl_scaleZ.o" "head_ctrl.sz";
connectAttr "head_ctrl_visibility.o" "head_ctrl.v";
connectAttr "upper_arm_ctrl_translateX.o" "upper_arm_ctrl.tx";
connectAttr "upper_arm_ctrl_translateY.o" "upper_arm_ctrl.ty";
connectAttr "upper_arm_ctrl_translateZ.o" "upper_arm_ctrl.tz";
connectAttr "upper_arm_ctrl_rotateX.o" "upper_arm_ctrl.rx";
connectAttr "upper_arm_ctrl_rotateY.o" "upper_arm_ctrl.ry";
connectAttr "upper_arm_ctrl_rotateZ.o" "upper_arm_ctrl.rz";
connectAttr "upper_arm_ctrl_scaleX.o" "upper_arm_ctrl.sx";
connectAttr "upper_arm_ctrl_scaleY.o" "upper_arm_ctrl.sy";
connectAttr "upper_arm_ctrl_scaleZ.o" "upper_arm_ctrl.sz";
connectAttr "upper_arm_ctrl_visibility.o" "upper_arm_ctrl.v";
connectAttr "lower_arm_ctrl_translateX.o" "lower_arm_ctrl.tx";
connectAttr "lower_arm_ctrl_translateY.o" "lower_arm_ctrl.ty";
connectAttr "lower_arm_ctrl_translateZ.o" "lower_arm_ctrl.tz";
connectAttr "lower_arm_ctrl_rotateX.o" "lower_arm_ctrl.rx";
connectAttr "lower_arm_ctrl_rotateY.o" "lower_arm_ctrl.ry";
connectAttr "lower_arm_ctrl_rotateZ.o" "lower_arm_ctrl.rz";
connectAttr "lower_arm_ctrl_scaleX.o" "lower_arm_ctrl.sx";
connectAttr "lower_arm_ctrl_scaleY.o" "lower_arm_ctrl.sy";
connectAttr "lower_arm_ctrl_scaleZ.o" "lower_arm_ctrl.sz";
connectAttr "lower_arm_ctrl_visibility.o" "lower_arm_ctrl.v";
connectAttr "base_ctrl_translateX.o" "base_ctrl.tx";
connectAttr "base_ctrl_translateY.o" "base_ctrl.ty";
connectAttr "base_ctrl_translateZ.o" "base_ctrl.tz";
connectAttr "base_ctrl_rotateX.o" "base_ctrl.rx";
connectAttr "base_ctrl_rotateY.o" "base_ctrl.ry";
connectAttr "base_ctrl_rotateZ.o" "base_ctrl.rz";
connectAttr "base_ctrl_scaleX.o" "base_ctrl.sx";
connectAttr "base_ctrl_scaleY.o" "base_ctrl.sy";
connectAttr "base_ctrl_scaleZ.o" "base_ctrl.sz";
connectAttr "base_ctrl_visibility.o" "base_ctrl.v";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr "Pole_translateX.o" "Pole.tx";
connectAttr "transformGeometry1.og" "pCylinderShape1.i";
connectAttr "polyCylinder2.out" "pCylinderShape4.i";
connectAttr "head_jnt.s" "head_geo_scaleConstraint1.tg[0].ts";
connectAttr "head_jnt.pm" "head_geo_scaleConstraint1.tg[0].tpm";
connectAttr "head_geo_scaleConstraint1.w0" "head_geo_scaleConstraint1.tg[0].tw";
connectAttr "head_jnt.t" "head_geo_parentConstraint1.tg[0].tt";
connectAttr "head_jnt.rp" "head_geo_parentConstraint1.tg[0].trp";
connectAttr "head_jnt.rpt" "head_geo_parentConstraint1.tg[0].trt";
connectAttr "head_jnt.r" "head_geo_parentConstraint1.tg[0].tr";
connectAttr "head_jnt.ro" "head_geo_parentConstraint1.tg[0].tro";
connectAttr "head_jnt.s" "head_geo_parentConstraint1.tg[0].ts";
connectAttr "head_jnt.pm" "head_geo_parentConstraint1.tg[0].tpm";
connectAttr "head_jnt.jo" "head_geo_parentConstraint1.tg[0].tjo";
connectAttr "head_jnt.ssc" "head_geo_parentConstraint1.tg[0].tsc";
connectAttr "head_jnt.is" "head_geo_parentConstraint1.tg[0].tis";
connectAttr "head_geo_parentConstraint1.w0" "head_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "upper_arm_jnt.s" "upper_arm_geo_scaleConstraint1.tg[0].ts";
connectAttr "upper_arm_jnt.pm" "upper_arm_geo_scaleConstraint1.tg[0].tpm";
connectAttr "upper_arm_geo_scaleConstraint1.w0" "upper_arm_geo_scaleConstraint1.tg[0].tw"
		;
connectAttr "upper_arm_jnt.t" "upper_arm_geo_parentConstraint1.tg[0].tt";
connectAttr "upper_arm_jnt.rp" "upper_arm_geo_parentConstraint1.tg[0].trp";
connectAttr "upper_arm_jnt.rpt" "upper_arm_geo_parentConstraint1.tg[0].trt";
connectAttr "upper_arm_jnt.r" "upper_arm_geo_parentConstraint1.tg[0].tr";
connectAttr "upper_arm_jnt.ro" "upper_arm_geo_parentConstraint1.tg[0].tro";
connectAttr "upper_arm_jnt.s" "upper_arm_geo_parentConstraint1.tg[0].ts";
connectAttr "upper_arm_jnt.pm" "upper_arm_geo_parentConstraint1.tg[0].tpm";
connectAttr "upper_arm_jnt.jo" "upper_arm_geo_parentConstraint1.tg[0].tjo";
connectAttr "upper_arm_jnt.ssc" "upper_arm_geo_parentConstraint1.tg[0].tsc";
connectAttr "upper_arm_jnt.is" "upper_arm_geo_parentConstraint1.tg[0].tis";
connectAttr "upper_arm_geo_parentConstraint1.w0" "upper_arm_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "lower_arm_jnt.s" "lower_arm_geo_scaleConstraint1.tg[0].ts";
connectAttr "lower_arm_jnt.pm" "lower_arm_geo_scaleConstraint1.tg[0].tpm";
connectAttr "lower_arm_geo_scaleConstraint1.w0" "lower_arm_geo_scaleConstraint1.tg[0].tw"
		;
connectAttr "lower_arm_jnt.t" "lower_arm_geo_parentConstraint1.tg[0].tt";
connectAttr "lower_arm_jnt.rp" "lower_arm_geo_parentConstraint1.tg[0].trp";
connectAttr "lower_arm_jnt.rpt" "lower_arm_geo_parentConstraint1.tg[0].trt";
connectAttr "lower_arm_jnt.r" "lower_arm_geo_parentConstraint1.tg[0].tr";
connectAttr "lower_arm_jnt.ro" "lower_arm_geo_parentConstraint1.tg[0].tro";
connectAttr "lower_arm_jnt.s" "lower_arm_geo_parentConstraint1.tg[0].ts";
connectAttr "lower_arm_jnt.pm" "lower_arm_geo_parentConstraint1.tg[0].tpm";
connectAttr "lower_arm_jnt.jo" "lower_arm_geo_parentConstraint1.tg[0].tjo";
connectAttr "lower_arm_jnt.ssc" "lower_arm_geo_parentConstraint1.tg[0].tsc";
connectAttr "lower_arm_jnt.is" "lower_arm_geo_parentConstraint1.tg[0].tis";
connectAttr "lower_arm_geo_parentConstraint1.w0" "lower_arm_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "groupId8.id" "lower_arm_geoShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "lower_arm_geoShapeDeformed.iog.og[2].gco"
		;
connectAttr "base_jnt.s" "base_geo_scaleConstraint1.tg[0].ts";
connectAttr "base_jnt.pm" "base_geo_scaleConstraint1.tg[0].tpm";
connectAttr "base_geo_scaleConstraint1.w0" "base_geo_scaleConstraint1.tg[0].tw";
connectAttr "base_jnt.t" "base_geo_parentConstraint1.tg[0].tt";
connectAttr "base_jnt.rp" "base_geo_parentConstraint1.tg[0].trp";
connectAttr "base_jnt.rpt" "base_geo_parentConstraint1.tg[0].trt";
connectAttr "base_jnt.r" "base_geo_parentConstraint1.tg[0].tr";
connectAttr "base_jnt.ro" "base_geo_parentConstraint1.tg[0].tro";
connectAttr "base_jnt.s" "base_geo_parentConstraint1.tg[0].ts";
connectAttr "base_jnt.pm" "base_geo_parentConstraint1.tg[0].tpm";
connectAttr "base_jnt.jo" "base_geo_parentConstraint1.tg[0].tjo";
connectAttr "base_jnt.ssc" "base_geo_parentConstraint1.tg[0].tsc";
connectAttr "base_jnt.is" "base_geo_parentConstraint1.tg[0].tis";
connectAttr "base_geo_parentConstraint1.w0" "base_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "groupId7.id" "base_geoShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "base_geoShapeDeformed.iog.og[2].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lamp_modelRNfosterParent1.msg" "lamp_modelRN.fp";
connectAttr "polyCylinder1.out" "transformGeometry1.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "base_geoShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "lower_arm_geoShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na
		;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
// End of Lamp02_animated_inPlace.ma
