//Maya ASCII 2018 scene
//Name: Lamp02_Rig.ma
//Last modified: Tue, Feb 12, 2019 05:30:44 PM
//Codeset: 1252
file -rdi 1 -ns "lamp_model" -rfn "lamp_modelRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/10802160/Documents/Repos/DGM2211/Rigging//scenes/Lamps/01-lamp_model.ma";
file -r -ns "lamp_model" -dr 1 -rfn "lamp_modelRN" -op "v=0;" -typ "mayaAscii" "C:/Users/10802160/Documents/Repos/DGM2211/Rigging//scenes/Lamps/01-lamp_model.ma";
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
	setAttr ".t" -type "double3" 0.75812211945995578 7.7606137391057253 -34.069939319471239 ;
	setAttr ".r" -type "double3" 6.2616472704628601 180.19999999996631 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4DF9939C-48C3-03D0-F957-8394A8B4D32F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 30.26796940858522;
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
createNode transform -n "Joints";
	rename -uid "81551337-4D9C-6B32-7B16-63ADE0AF5220";
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
	setAttr ".lr" -type "double3" -1.8957583197733865e-22 1.0523572678685566e-38 6.361109362927032e-15 ;
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
	setAttr ".lr" -type "double3" -1.2141462015018854e-22 -1.1201128390107439e-06 5.1209725389961747e-14 ;
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
	setAttr ".lr" -type "double3" 7.5830332778130554e-22 3.3552335942079959e-15 -4.3732626870123044e-15 ;
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
	setAttr ".lr" -type "double3" -3.7915166395467701e-22 1.6356504614087523e-21 6.3611093629270012e-15 ;
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
createNode transform -n "head_ctrl_grp3";
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
createNode fosterParent -n "lamp_modelRNfosterParent1";
	rename -uid "05281DB5-4267-B6A6-06C7-BBBA7E2C6F16";
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
	setAttr ".lr" -type "double3" 1.5166066558187084e-21 1.2785190446386206e-21 -6.3611093629269696e-15 ;
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
	setAttr ".lr" -type "double3" 3.791516639546771e-22 -1.6926541107334368e-22 6.3611093629270761e-15 ;
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
	setAttr ".lr" -type "double3" -8.3176941033043308e-07 -1.6498243986629569e-22 3.3881928197222589e-15 ;
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
	setAttr ".lr" -type "double3" -5.2617863393427865e-39 9.4787915988669299e-23 -6.3611093629270375e-15 ;
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
	rename -uid "8C61976D-4550-0C8A-EA7E-99A3B8DA0A2E";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EC49A770-42F5-0DC9-5554-8AA4BD8C505B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "974DCE6A-4AF9-22A9-1335-6BA88BBB6766";
createNode displayLayerManager -n "layerManager";
	rename -uid "12CB4F6A-49DD-71C7-BC04-71B4BD3035A3";
createNode displayLayer -n "defaultLayer";
	rename -uid "EFCD817D-43C5-ADF5-31E8-FBAE3DF92149";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7AB6D64B-40D2-D61C-3F5C-2983444FB78D";
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
		"lamp_modelRN" 0
		"lamp_modelRN" 506
		0 "|lamp_modelRNfosterParent1|base_geoShapeDeformed" "|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|base_geo_parentConstraint1" "|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|base_geo_scaleConstraint1" "|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geoShapeDeformed" "|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geo_parentConstraint1" "|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geo_scaleConstraint1" "|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|upper_arm_geo_parentConstraint1" "|lamp_model:Geometry|lamp_model:upper_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|upper_arm_geo_scaleConstraint1" "|lamp_model:Geometry|lamp_model:upper_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|head_geo_parentConstraint1" "|lamp_model:Geometry|lamp_model:head_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|head_geo_scaleConstraint1" "|lamp_model:Geometry|lamp_model:head_geo" 
		"-s -r "
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "intermediateObject" 
		" 1"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints" 
		" -s 247"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[0]" 
		" -type \"float2\" 0.3958334 0.31474133999999998"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[1]" 
		" -type \"float2\" 0.375 0.68619841000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[2]" 
		" -type \"float2\" 0.41666669000000001 0.31474137000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[3]" 
		" -type \"float2\" 0.39583337000000002 0.68619841000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[4]" 
		" -type \"float2\" 0.4375 0.3147414"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[5]" 
		" -type \"float2\" 0.41666669000000001 0.68619841000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[6]" 
		" -type \"float2\" 0.45833337000000002 0.31474137000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[7]" 
		" -type \"float2\" 0.4375 0.68619834999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[8]" 
		" -type \"float2\" 0.47916671999999999 0.31474137000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[9]" 
		" -type \"float2\" 0.45833337000000002 0.68619841000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[10]" 
		" -type \"float2\" 0.5 0.3147414"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[11]" 
		" -type \"float2\" 0.47916671999999999 0.68619841000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[12]" 
		" -type \"float2\" 0.52083336999999996 0.31474137000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[13]" 
		" -type \"float2\" 0.49999997000000002 0.68619834999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[14]" 
		" -type \"float2\" 0.54166674999999997 0.31474133999999998"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[15]" 
		" -type \"float2\" 0.52083336999999996 0.68619817000000005"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[16]" 
		" -type \"float2\" 0.5625 0.31474163999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[17]" 
		" -type \"float2\" 0.54166669000000001 0.68619841000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[18]" 
		" -type \"float2\" 0.58333336999999996 0.31474133999999998"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[19]" 
		" -type \"float2\" 0.5625 0.68619841000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[20]" 
		" -type \"float2\" 0.60416663000000004 0.31474137000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[21]" 
		" -type \"float2\" 0.58333343000000004 0.68619841000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[22]" 
		" -type \"float2\" 0.62499994000000003 0.3147414"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[23]" 
		" -type \"float2\" 0.60416669000000001 0.68619841000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[24]" 
		" -type \"float2\" 0.62178617999999997 0.085311263999999998"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[25]" 
		" -type \"float2\" 0.57031321999999995 0.033839020999999997"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[26]" 
		" -type \"float2\" 0.5 0.014998627"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[27]" 
		" -type \"float2\" 0.42968677999999999 0.033839020999999997"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[28]" 
		" -type \"float2\" 0.37821381999999998 0.085311263999999998"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[29]" 
		" -type \"float2\" 0.35937342 0.15562506000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[30]" 
		" -type \"float2\" 0.37821385000000002 0.22593833999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[31]" 
		" -type \"float2\" 0.42968677999999999 0.27741110000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[32]" 
		" -type \"float2\" 0.5 0.29625148000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[33]" 
		" -type \"float2\" 0.57031321999999995 0.27741110000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[34]" 
		" -type \"float2\" 0.62178617999999997 0.22593833999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[35]" 
		" -type \"float2\" 0.5 0.15000000999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[36]" 
		" -type \"float2\" 0.64062655000000002 0.15562506000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[37]" 
		" -type \"float2\" 0.57031321999999995 0.96491110000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[38]" 
		" -type \"float2\" 0.5 0.98375148000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[39]" 
		" -type \"float2\" 0.42968677999999999 0.96491110000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[40]" 
		" -type \"float2\" 0.37821381999999998 0.91343892000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[41]" 
		" -type \"float2\" 0.35937342 0.84312505000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[42]" 
		" -type \"float2\" 0.37821385000000002 0.77281177000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[43]" 
		" -type \"float2\" 0.42968677999999999 0.72133899000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[44]" 
		" -type \"float2\" 0.5 0.70249861000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[45]" 
		" -type \"float2\" 0.57031321999999995 0.72133899000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[46]" 
		" -type \"float2\" 0.62178617999999997 0.77281177000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[47]" 
		" -type \"float2\" 0.64062655000000002 0.84312505000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[48]" 
		" -type \"float2\" 0.62178617999999997 0.91343892000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[49]" 
		" -type \"float2\" 0.5 0.83749998000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[50]" 
		" -type \"float2\" 0.375 0.31474137000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[51]" 
		" -type \"float2\" 0.62499994000000003 0.68619841000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[52]" 
		" -type \"float2\" 0.62499994000000003 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[53]" 
		" -type \"float2\" 0.63531649000000001 0.078125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[54]" 
		" -type \"float2\" 0.375 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[55]" 
		" -type \"float2\" 0.578125 0.020933539000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[56]" 
		" -type \"float2\" 0.39583333999999998 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[57]" 
		" -type \"float2\" 0.5 0"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[58]" 
		" -type \"float2\" 0.41666669000000001 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[59]" 
		" -type \"float2\" 0.421875 0.020933539000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[60]" 
		" -type \"float2\" 0.43750002999999998 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[61]" 
		" -type \"float2\" 0.36468353999999997 0.078125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[62]" 
		" -type \"float2\" 0.45833337000000002 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[63]" 
		" -type \"float2\" 0.34375 0.15625"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[64]" 
		" -type \"float2\" 0.47916671999999999 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[65]" 
		" -type \"float2\" 0.36468353999999997 0.234375"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[66]" 
		" -type \"float2\" 0.50000005999999997 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[67]" 
		" -type \"float2\" 0.421875 0.29156646000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[68]" 
		" -type \"float2\" 0.52083336999999996 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[69]" 
		" -type \"float2\" 0.5 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[70]" 
		" -type \"float2\" 0.54166669000000001 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[71]" 
		" -type \"float2\" 0.578125 0.29156646000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[72]" 
		" -type \"float2\" 0.5625 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[73]" 
		" -type \"float2\" 0.63531649000000001 0.234375"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[74]" 
		" -type \"float2\" 0.58333330999999999 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[75]" 
		" -type \"float2\" 0.65625 0.15625"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[76]" 
		" -type \"float2\" 0.60416663000000004 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[77]" 
		" -type \"float2\" 0.375 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[78]" 
		" -type \"float2\" 0.63531649000000001 0.921875"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[79]" 
		" -type \"float2\" 0.62499994000000003 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[80]" 
		" -type \"float2\" 0.39583333999999998 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[81]" 
		" -type \"float2\" 0.578125 0.97906649000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[82]" 
		" -type \"float2\" 0.41666669000000001 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[83]" 
		" -type \"float2\" 0.5 1"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[84]" 
		" -type \"float2\" 0.43750002999999998 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[85]" 
		" -type \"float2\" 0.421875 0.97906649000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[86]" 
		" -type \"float2\" 0.45833337000000002 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[87]" 
		" -type \"float2\" 0.36468353999999997 0.921875"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[88]" 
		" -type \"float2\" 0.47916671999999999 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[89]" 
		" -type \"float2\" 0.34375 0.84375"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[90]" 
		" -type \"float2\" 0.50000005999999997 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[91]" 
		" -type \"float2\" 0.36468353999999997 0.765625"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[92]" 
		" -type \"float2\" 0.52083336999999996 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[93]" 
		" -type \"float2\" 0.421875 0.70843350999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[94]" 
		" -type \"float2\" 0.54166669000000001 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[95]" 
		" -type \"float2\" 0.5 0.6875"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[96]" 
		" -type \"float2\" 0.5625 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[97]" 
		" -type \"float2\" 0.578125 0.70843350999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[98]" 
		" -type \"float2\" 0.58333330999999999 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[99]" 
		" -type \"float2\" 0.63531649000000001 0.765625"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[100]" 
		" -type \"float2\" 0.65625 0.84375"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[101]" 
		" -type \"float2\" 0.60416663000000004 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[102]" 
		" -type \"float2\" 0.62499994000000003 0.53807896"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[103]" 
		" -type \"float2\" 0.62469339000000002 0.68843979"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[104]" 
		" -type \"float2\" 0.60444193999999996 0.68347179999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[105]" 
		" -type \"float2\" 0.60416663000000004 0.53807908000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[106]" 
		" -type \"float2\" 0.37527530999999997 0.68347186000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[107]" 
		" -type \"float2\" 0.375 0.53807896"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[108]" 
		" -type \"float2\" 0.39583333999999998 0.53807901999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[109]" 
		" -type \"float2\" 0.39552683 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[110]" 
		" -type \"float2\" 0.39610866 0.68347179999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[111]" 
		" -type \"float2\" 0.41666669000000001 0.53807908000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[112]" 
		" -type \"float2\" 0.41636013999999999 0.68843979"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[113]" 
		" -type \"float2\" 0.416942 0.68347179999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[114]" 
		" -type \"float2\" 0.4375 0.53807896"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[115]" 
		" -type \"float2\" 0.43719348000000002 0.68843979"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[116]" 
		" -type \"float2\" 0.43777537 0.68347186000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[117]" 
		" -type \"float2\" 0.45833337000000002 0.53807896"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[118]" 
		" -type \"float2\" 0.45802685999999998 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[119]" 
		" -type \"float2\" 0.45860868999999999 0.68347179999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[120]" 
		" -type \"float2\" 0.47916671999999999 0.53807908000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[121]" 
		" -type \"float2\" 0.47886016999999997 0.68843979"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[122]" 
		" -type \"float2\" 0.47944203000000002 0.68347179999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[123]" 
		" -type \"float2\" 0.50000005999999997 0.53807896"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[124]" 
		" -type \"float2\" 0.49969353999999999 0.68843979"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[125]" 
		" -type \"float2\" 0.50027537 0.68347186000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[126]" 
		" -type \"float2\" 0.52083336999999996 0.53807901999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[127]" 
		" -type \"float2\" 0.52052683 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[128]" 
		" -type \"float2\" 0.52110869000000004 0.68347179999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[129]" 
		" -type \"float2\" 0.54166669000000001 0.53807908000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[130]" 
		" -type \"float2\" 0.54136013999999999 0.68843979"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[131]" 
		" -type \"float2\" 0.541942 0.68347179999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[132]" 
		" -type \"float2\" 0.5625 0.53807896"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[133]" 
		" -type \"float2\" 0.56219344999999998 0.68843979"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[134]" 
		" -type \"float2\" 0.56277531000000003 0.68347186000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[135]" 
		" -type \"float2\" 0.58333330999999999 0.53807896"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[136]" 
		" -type \"float2\" 0.58302683 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[137]" 
		" -type \"float2\" 0.58360862999999996 0.68347179999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[138]" 
		" -type \"float2\" 0.60386008000000002 0.68843979"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[139]" 
		" -type \"float2\" 0.62692481 0.91664248999999998"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[140]" 
		" -type \"float2\" 0.57328009999999996 0.97028725999999998"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[141]" 
		" -type \"float2\" 0.5 0.83749998000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[142]" 
		" -type \"float2\" 0.5 0.98992252000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[143]" 
		" -type \"float2\" 0.42671993000000003 0.97028725999999998"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[144]" 
		" -type \"float2\" 0.37307519 0.91664248999999998"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[145]" 
		" -type \"float2\" 0.35343986999999999 0.84336239000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[146]" 
		" -type \"float2\" 0.37307519 0.77008235000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[147]" 
		" -type \"float2\" 0.42671993000000003 0.71643758000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[148]" 
		" -type \"float2\" 0.5 0.69680226000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[149]" 
		" -type \"float2\" 0.57328009999999996 0.71643758000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[150]" 
		" -type \"float2\" 0.62692481 0.77008235000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[151]" 
		" -type \"float2\" 0.64656013000000001 0.84336239000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[152]" 
		" -type \"float2\" 0.57746350999999996 0.022026401000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[153]" 
		" -type \"float2\" 0.63417071000000003 0.078733593000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[154]" 
		" -type \"float2\" 0.5 0.15000000999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[155]" 
		" -type \"float2\" 0.5 0.0012701154"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[156]" 
		" -type \"float2\" 0.42253652000000003 0.022026401000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[157]" 
		" -type \"float2\" 0.36582932000000001 0.078733593000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[158]" 
		" -type \"float2\" 0.34507304 0.15619706999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[159]" 
		" -type \"float2\" 0.36582932000000001 0.23366055999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[160]" 
		" -type \"float2\" 0.42253652000000003 0.29036774999999998"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[161]" 
		" -type \"float2\" 0.5 0.31112403"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[162]" 
		" -type \"float2\" 0.57746350999999996 0.29036774999999998"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[163]" 
		" -type \"float2\" 0.63417071000000003 0.23366055999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[164]" 
		" -type \"float2\" 0.65492695999999995 0.15619706999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[165]" 
		" -type \"float2\" 0.375 0.33505559000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[166]" 
		" -type \"float2\" 0.39583333999999998 0.33505559000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[167]" 
		" -type \"float2\" 0.41666669000000001 0.33505568000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[168]" 
		" -type \"float2\" 0.43750002999999998 0.33505559000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[169]" 
		" -type \"float2\" 0.45833337000000002 0.33505559000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[170]" 
		" -type \"float2\" 0.47916671999999999 0.33505568000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[171]" 
		" -type \"float2\" 0.50000005999999997 0.33505559000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[172]" 
		" -type \"float2\" 0.52083336999999996 0.33505559000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[173]" 
		" -type \"float2\" 0.54166669000000001 0.33505568000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[174]" 
		" -type \"float2\" 0.5625 0.33505559000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[175]" 
		" -type \"float2\" 0.58333330999999999 0.33505559000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[176]" 
		" -type \"float2\" 0.60416663000000004 0.33505568000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[177]" 
		" -type \"float2\" 0.62499994000000003 0.33505559000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[178]" 
		" -type \"float2\" 0.63531649000000001 0.078125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[179]" 
		" -type \"float2\" 0.65625 0.15625"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[180]" 
		" -type \"float2\" 0.62499994000000003 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[181]" 
		" -type \"float2\" 0.60416663000000004 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[182]" 
		" -type \"float2\" 0.375 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[183]" 
		" -type \"float2\" 0.39583333999999998 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[184]" 
		" -type \"float2\" 0.578125 0.020933539000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[185]" 
		" -type \"float2\" 0.41666669000000001 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[186]" 
		" -type \"float2\" 0.5 0"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[187]" 
		" -type \"float2\" 0.43750002999999998 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[188]" 
		" -type \"float2\" 0.421875 0.020933539000000001"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[189]" 
		" -type \"float2\" 0.45833337000000002 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[190]" 
		" -type \"float2\" 0.36468353999999997 0.078125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[191]" 
		" -type \"float2\" 0.47916671999999999 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[192]" 
		" -type \"float2\" 0.34375 0.15625"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[193]" 
		" -type \"float2\" 0.50000005999999997 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[194]" 
		" -type \"float2\" 0.36468353999999997 0.234375"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[195]" 
		" -type \"float2\" 0.52083336999999996 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[196]" 
		" -type \"float2\" 0.421875 0.29156646000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[197]" 
		" -type \"float2\" 0.54166669000000001 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[198]" 
		" -type \"float2\" 0.5 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[199]" 
		" -type \"float2\" 0.5625 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[200]" 
		" -type \"float2\" 0.578125 0.29156646000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[201]" 
		" -type \"float2\" 0.58333330999999999 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[202]" 
		" -type \"float2\" 0.63531649000000001 0.234375"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[203]" 
		" -type \"float2\" 0.50000005999999997 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[204]" 
		" -type \"float2\" 0.52083336999999996 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[205]" 
		" -type \"float2\" 0.52083336999999996 0.68555014999999997"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[206]" 
		" -type \"float2\" 0.50000005999999997 0.68555014999999997"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[207]" 
		" -type \"float2\" 0.54166669000000001 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[208]" 
		" -type \"float2\" 0.5625 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[209]" 
		" -type \"float2\" 0.56250005999999997 0.68555014999999997"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[210]" 
		" -type \"float2\" 0.54166669000000001 0.68555014999999997"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[211]" 
		" -type \"float2\" 0.58333330999999999 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[212]" 
		" -type \"float2\" 0.60416663000000004 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[213]" 
		" -type \"float2\" 0.60416663000000004 0.68555014999999997"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[214]" 
		" -type \"float2\" 0.58333330999999999 0.68555014999999997"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[215]" 
		" -type \"float2\" 0.5 0.15000000999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[216]" 
		" -type \"float2\" 0.47916671999999999 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[217]" 
		" -type \"float2\" 0.34479091000000001 0.83966649000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[218]" 
		" -type \"float2\" 0.5 0.83221531000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[219]" 
		" -type \"float2\" 0.47916671999999999 0.3125"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[220]" 
		" -type \"float2\" 0.47916674999999997 0.68555014999999997"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[221]" 
		" -type \"float2\" 0.65625 0.15625"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[222]" 
		" -type \"float2\" 0.60456699000000003 0.68434912000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[223]" 
		" -type \"float2\" 0.5 0.83259039999999995"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[224]" 
		" -type \"float2\" 0.35045809 0.83845323000000005"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[225]" 
		" -type \"float2\" 0.36929848999999998 0.76828945000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[226]" 
		" -type \"float2\" 0.42453944999999998 0.71283531"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[227]" 
		" -type \"float2\" 0.5 0.69282889000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[228]" 
		" -type \"float2\" 0.57546054999999996 0.71283525000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[229]" 
		" -type \"float2\" 0.63070154 0.76828945000000004"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[230]" 
		" -type \"float2\" 0.64954190999999994 0.83845329000000002"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[231]" 
		" -type \"float2\" 0.34375 0.84375"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[232]" 
		" -type \"float2\" 0.36468353999999997 0.765625"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[233]" 
		" -type \"float2\" 0.47916671999999999 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[234]" 
		" -type \"float2\" 0.50000005999999997 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[235]" 
		" -type \"float2\" 0.421875 0.70843350999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[236]" 
		" -type \"float2\" 0.52083336999999996 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[237]" 
		" -type \"float2\" 0.5 0.6875"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[238]" 
		" -type \"float2\" 0.54166669000000001 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[239]" 
		" -type \"float2\" 0.578125 0.70843350999999999"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[240]" 
		" -type \"float2\" 0.5625 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[241]" 
		" -type \"float2\" 0.63531649000000001 0.765625"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[242]" 
		" -type \"float2\" 0.58333330999999999 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[243]" 
		" -type \"float2\" 0.65625 0.84375"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[244]" 
		" -type \"float2\" 0.60416663000000004 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[245]" 
		" -type \"float2\" 0.5 0.83749998000000003"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetPoints[246]" 
		" -type \"float2\" 0.60416663000000004 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "aiTranslator" 
		" -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"intermediateObject" " 1"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints" " -s 164"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[0]" " -type \"float2\" 0.36929848999999998 0.76828945000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[1]" " -type \"float2\" 0.42453944999999998 0.71283531"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[2]" " -type \"float2\" 0.5 0.69282889000000003"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[3]" " -type \"float2\" 0.57546054999999996 0.71283525000000003"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[4]" " -type \"float2\" 0.5 0.83259039999999995"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[5]" " -type \"float2\" 0.63070154 0.76828945000000004"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[6]" " -type \"float2\" 0.64954190999999994 0.83845329000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[7]" " -type \"float2\" 0.60416663000000004 0.68555014999999997"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[8]" " -type \"float2\" 0.34479091000000001 0.83966649000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[9]" " -type \"float2\" 0.35045809 0.83845323000000005"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[10]" " -type \"float2\" 0.34375 0.84375"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[11]" " -type \"float2\" 0.47916671999999999 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[12]" " -type \"float2\" 0.50000005999999997 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[13]" " -type \"float2\" 0.36468353999999997 0.765625"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[14]" " -type \"float2\" 0.52083336999999996 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[15]" " -type \"float2\" 0.421875 0.70843350999999999"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[16]" " -type \"float2\" 0.54166669000000001 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[17]" " -type \"float2\" 0.5 0.6875"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[18]" " -type \"float2\" 0.5625 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[19]" " -type \"float2\" 0.578125 0.70843350999999999"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[20]" " -type \"float2\" 0.58333330999999999 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[21]" " -type \"float2\" 0.63531649000000001 0.765625"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[22]" " -type \"float2\" 0.60416663000000004 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[23]" " -type \"float2\" 0.65625 0.84375"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[24]" " -type \"float2\" 0.60416663000000004 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[25]" " -type \"float2\" 0.5 0.83749998000000003"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[26]" " -type \"float2\" 0.50000005999999997 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[27]" " -type \"float2\" 0.54166669000000001 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[28]" " -type \"float2\" 0.65560227999999998 0.16286854000000001"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[29]" " -type \"float2\" 0.59822887000000002 0.30581859"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[30]" " -type \"float2\" 0.52083336999999996 0.31717541999999999"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[31]" " -type \"float2\" 0.50000005999999997 0.68555014999999997"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[32]" " -type \"float2\" 0.5625 0.31717503000000002"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[33]" " -type \"float2\" 0.54166669000000001 0.68555014999999997"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[34]" " -type \"float2\" 0.60416663000000004 0.31717541999999999"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[35]" " -type \"float2\" 0.58333330999999999 0.68555014999999997"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[36]" " -type \"float2\" 0.47748258999999998 0.31910691000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[37]" " -type \"float2\" 0.5 0.83221531000000004"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[38]" " -type \"float2\" 0.50000005999999997 0.31717503000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[39]" " -type \"float2\" 0.47916674999999997 0.68555014999999997"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[40]" " -type \"float2\" 0.54166669000000001 0.31717503000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[41]" " -type \"float2\" 0.52083336999999996 0.68555014999999997"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[42]" " -type \"float2\" 0.58333330999999999 0.31717541999999999"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[43]" " -type \"float2\" 0.56250005999999997 0.68555014999999997"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[44]" " -type \"float2\" 0.5 0.15855005"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[45]" " -type \"float2\" 0.60456699000000003 0.68434912000000003"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[46]" " -type \"float2\" 0.51997674000000005 0.30581852999999998"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[47]" " -type \"float2\" 0.50191081000000004 0.15745223999999999"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[48]" " -type \"float2\" 0.48167812999999998 0.30781533999999999"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[49]" " -type \"float2\" 0.55993020999999998 0.30581852999999998"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[50]" " -type \"float2\" 0.47916671999999999 0.31717503000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[51]" " -type \"float2\" 0.57990693999999998 0.30581852999999998"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[52]" " -type \"float2\" 0.50000005999999997 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[53]" " -type \"float2\" 0.52083336999999996 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[54]" " -type \"float2\" 0.54166669000000001 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[55]" " -type \"float2\" 0.5625 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[56]" " -type \"float2\" 0.58333330999999999 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[57]" " -type \"float2\" 0.60416663000000004 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[58]" " -type \"float2\" 0.65625 0.15625"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[59]" " -type \"float2\" 0.47916671999999999 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[60]" " -type \"float2\" 0.47916671999999999 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[61]" " -type \"float2\" 0.5 0.15000000999999999"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[62]" " -type \"float2\" 0.375 0.31474137000000002"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[63]" " -type \"float2\" 0.3958334 0.31474133999999998"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[64]" " -type \"float2\" 0.39583337000000002 0.68619841000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[65]" " -type \"float2\" 0.375 0.68619841000000004"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[66]" " -type \"float2\" 0.41666669000000001 0.31474137000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[67]" " -type \"float2\" 0.41666669000000001 0.68619841000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[68]" " -type \"float2\" 0.4375 0.3147414"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[69]" " -type \"float2\" 0.4375 0.68619834999999996"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[70]" " -type \"float2\" 0.45833337000000002 0.31474137000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[71]" " -type \"float2\" 0.45833337000000002 0.68619841000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[72]" " -type \"float2\" 0.47916671999999999 0.31474137000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[73]" " -type \"float2\" 0.47916671999999999 0.68619841000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[74]" " -type \"float2\" 0.5 0.3147414"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[75]" " -type \"float2\" 0.49999997000000002 0.68619834999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[76]" " -type \"float2\" 0.52083336999999996 0.31474137000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[77]" " -type \"float2\" 0.52083336999999996 0.68619817000000005"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[78]" " -type \"float2\" 0.54166674999999997 0.31474133999999998"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[79]" " -type \"float2\" 0.54166669000000001 0.68619841000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[80]" " -type \"float2\" 0.5625 0.31474163999999999"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[81]" " -type \"float2\" 0.5625 0.68619841000000004"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[82]" " -type \"float2\" 0.58333336999999996 0.31474133999999998"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[83]" " -type \"float2\" 0.58333343000000004 0.68619841000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[84]" " -type \"float2\" 0.60416663000000004 0.31474137000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[85]" " -type \"float2\" 0.60416669000000001 0.68619841000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[86]" " -type \"float2\" 0.62499994000000003 0.3147414"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[87]" " -type \"float2\" 0.62499994000000003 0.68619841000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[88]" " -type \"float2\" 0.57031321999999995 0.033839020999999997"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[89]" " -type \"float2\" 0.62178617999999997 0.085311263999999998"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[90]" " -type \"float2\" 0.5 0.15000000999999999"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[91]" " -type \"float2\" 0.5 0.014998627"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[92]" " -type \"float2\" 0.42968677999999999 0.033839020999999997"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[93]" " -type \"float2\" 0.37821381999999998 0.085311263999999998"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[94]" " -type \"float2\" 0.35937342 0.15562506000000001"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[95]" " -type \"float2\" 0.37821385000000002 0.22593833999999999"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[96]" " -type \"float2\" 0.42968677999999999 0.27741110000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[97]" " -type \"float2\" 0.5 0.29625148000000001"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[98]" " -type \"float2\" 0.57031321999999995 0.27741110000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[99]" " -type \"float2\" 0.62178617999999997 0.22593833999999999"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[100]" " -type \"float2\" 0.64062655000000002 0.15562506000000001"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[101]" " -type \"float2\" 0.62178617999999997 0.91343892000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[102]" " -type \"float2\" 0.57031321999999995 0.96491110000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[103]" " -type \"float2\" 0.5 0.83749998000000003"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[104]" " -type \"float2\" 0.5 0.98375148000000001"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[105]" " -type \"float2\" 0.42968677999999999 0.96491110000000002"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[106]" " -type \"float2\" 0.37821381999999998 0.91343892000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[107]" " -type \"float2\" 0.35937342 0.84312505000000004"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[108]" " -type \"float2\" 0.37821385000000002 0.77281177000000001"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[109]" " -type \"float2\" 0.42968677999999999 0.72133899000000001"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[110]" " -type \"float2\" 0.5 0.70249861000000002"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[111]" " -type \"float2\" 0.57031321999999995 0.72133899000000001"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[112]" " -type \"float2\" 0.62178617999999997 0.77281177000000001"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[113]" " -type \"float2\" 0.64062655000000002 0.84312505000000004"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[114]" " -type \"float2\" 0.375 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[115]" " -type \"float2\" 0.39583333999999998 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[116]" " -type \"float2\" 0.63531649000000001 0.078125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[117]" " -type \"float2\" 0.578125 0.020933539000000001"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[118]" " -type \"float2\" 0.41666669000000001 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[119]" " -type \"float2\" 0.5 0"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[120]" " -type \"float2\" 0.43750002999999998 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[121]" " -type \"float2\" 0.421875 0.020933539000000001"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[122]" " -type \"float2\" 0.45833337000000002 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[123]" " -type \"float2\" 0.36468353999999997 0.078125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[124]" " -type \"float2\" 0.47916671999999999 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[125]" " -type \"float2\" 0.34375 0.15625"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[126]" " -type \"float2\" 0.50000005999999997 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[127]" " -type \"float2\" 0.36468353999999997 0.234375"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[128]" " -type \"float2\" 0.52083336999999996 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[129]" " -type \"float2\" 0.421875 0.29156646000000003"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[130]" " -type \"float2\" 0.54166669000000001 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[131]" " -type \"float2\" 0.5 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[132]" " -type \"float2\" 0.5625 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[133]" " -type \"float2\" 0.578125 0.29156646000000003"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[134]" " -type \"float2\" 0.58333330999999999 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[135]" " -type \"float2\" 0.63531649000000001 0.234375"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[136]" " -type \"float2\" 0.60416663000000004 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[137]" " -type \"float2\" 0.65625 0.15625"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[138]" " -type \"float2\" 0.62499994000000003 0.3125"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[139]" " -type \"float2\" 0.62499994000000003 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[140]" " -type \"float2\" 0.60416663000000004 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[141]" " -type \"float2\" 0.63531649000000001 0.921875"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[142]" " -type \"float2\" 0.65625 0.84375"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[143]" " -type \"float2\" 0.578125 0.97906649000000001"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[144]" " -type \"float2\" 0.375 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[145]" " -type \"float2\" 0.39583333999999998 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[146]" " -type \"float2\" 0.5 1"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[147]" " -type \"float2\" 0.41666669000000001 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[148]" " -type \"float2\" 0.421875 0.97906649000000001"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[149]" " -type \"float2\" 0.43750002999999998 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[150]" " -type \"float2\" 0.36468353999999997 0.921875"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[151]" " -type \"float2\" 0.45833337000000002 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[152]" " -type \"float2\" 0.34375 0.84375"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[153]" " -type \"float2\" 0.47916671999999999 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[154]" " -type \"float2\" 0.36468353999999997 0.765625"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[155]" " -type \"float2\" 0.50000005999999997 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[156]" " -type \"float2\" 0.421875 0.70843350999999999"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[157]" " -type \"float2\" 0.52083336999999996 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[158]" " -type \"float2\" 0.5 0.6875"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[159]" " -type \"float2\" 0.54166669000000001 0.68843984999999996"
		
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[160]" " -type \"float2\" 0.578125 0.70843350999999999"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[161]" " -type \"float2\" 0.5625 0.68843984999999996"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[162]" " -type \"float2\" 0.63531649000000001 0.765625"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetPoints[163]" " -type \"float2\" 0.58333330999999999 0.68843984999999996"
		
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
		2 "lamp_model:groupParts1" "groupId" " 7"
		2 "lamp_model:groupParts4" "groupId" " 8"
		3 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.instObjGroups.objectGroups[0]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "lamp_model:groupId24.groupId" "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "lamp_model:groupParts1.outputGeometry" "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.inMesh" 
		""
		3 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.instObjGroups.objectGroups[0]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "lamp_model:groupId27.groupId" "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "lamp_model:groupParts4.outputGeometry" "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.inMesh" 
		""
		3 "lamp_model:groupId24.groupId" "lamp_model:groupParts1.groupId" ""
		3 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShapeOrig.worldMesh" 
		"lamp_model:groupParts1.inputGeometry" ""
		3 "lamp_model:groupId27.groupId" "lamp_model:groupParts4.groupId" ""
		3 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShapeOrig.worldMesh" 
		"lamp_model:groupParts4.inputGeometry" ""
		3 "lamp_model:groupId24.message" ":initialShadingGroup.groupNodes" "-na"
		3 "lamp_model:groupId27.message" ":initialShadingGroup.groupNodes" "-na"
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.translateX" 
		"lamp_modelRN.placeHolderList[1]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.translateY" 
		"lamp_modelRN.placeHolderList[2]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.translateZ" 
		"lamp_modelRN.placeHolderList[3]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.rotateX" 
		"lamp_modelRN.placeHolderList[4]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.rotateY" 
		"lamp_modelRN.placeHolderList[5]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[6]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[7]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[8]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[9]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[10]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[11]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.scaleX" 
		"lamp_modelRN.placeHolderList[12]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.scaleY" 
		"lamp_modelRN.placeHolderList[13]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[14]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.translateX" 
		"lamp_modelRN.placeHolderList[15]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.translateY" 
		"lamp_modelRN.placeHolderList[16]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.translateZ" 
		"lamp_modelRN.placeHolderList[17]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateX" 
		"lamp_modelRN.placeHolderList[18]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateY" 
		"lamp_modelRN.placeHolderList[19]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[20]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[21]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[22]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[23]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[24]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[25]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleX" 
		"lamp_modelRN.placeHolderList[26]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleY" 
		"lamp_modelRN.placeHolderList[27]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[28]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.translateX" 
		"lamp_modelRN.placeHolderList[29]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.translateY" 
		"lamp_modelRN.placeHolderList[30]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.translateZ" 
		"lamp_modelRN.placeHolderList[31]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateX" 
		"lamp_modelRN.placeHolderList[32]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateY" 
		"lamp_modelRN.placeHolderList[33]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[34]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[35]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[36]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[37]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[38]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[39]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleX" 
		"lamp_modelRN.placeHolderList[40]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleY" 
		"lamp_modelRN.placeHolderList[41]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[42]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.translateX" 
		"lamp_modelRN.placeHolderList[43]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.translateY" 
		"lamp_modelRN.placeHolderList[44]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.translateZ" 
		"lamp_modelRN.placeHolderList[45]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.rotateX" 
		"lamp_modelRN.placeHolderList[46]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.rotateY" 
		"lamp_modelRN.placeHolderList[47]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[48]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[49]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[50]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[51]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[52]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[53]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.scaleX" 
		"lamp_modelRN.placeHolderList[54]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.scaleY" 
		"lamp_modelRN.placeHolderList[55]" ""
		5 4 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo.scaleZ" 
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
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 787\n            -height 727\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 787\n            -height 727\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 787\\n    -height 727\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 787\\n    -height 727\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "400C1D4C-43E1-FE0E-42AD-6D879110E61E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId7";
	rename -uid "7F81AA62-4F1B-8092-5CF5-07978CBF4413";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "51860779-4C2B-ACAD-6FF3-FBA476B4C7C3";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "base_geoShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "lower_arm_geoShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na
		;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
// End of Lamp02_Rig.ma
