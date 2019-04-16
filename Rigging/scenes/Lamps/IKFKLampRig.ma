//Maya ASCII 2018 scene
//Name: IKFKLampRig.ma
//Last modified: Tue, Apr 16, 2019 03:51:18 PM
//Codeset: 1252
file -rdi 1 -ns "lamp_model" -rfn "lamp_modelRN" -op "v=0;" -typ "mayaAscii"
		 "E:/School/Spring2019/DGM2211/Rigging//scenes/Lamps/01-lamp_model.ma";
file -r -ns "lamp_model" -dr 1 -rfn "lamp_modelRN" -op "v=0;" -typ "mayaAscii" "E:/School/Spring2019/DGM2211/Rigging//scenes/Lamps/01-lamp_model.ma";
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "2F9A3ADB-40B9-574C-AD00-1EA2BB11BAE0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.041617338069372 20.755553883775057 71.536141331220392 ;
	setAttr ".r" -type "double3" -5.7383527296041006 -355.39999999993483 -9.9713523173441437e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "7CA1AC56-4DBD-E58B-B264-DDBF5329BE52";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 62.809276877540427;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "0D6C2FB9-4B78-7678-A2A3-B5B3073698CF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1B453E5B-4418-F5A1-4B35-6EA66686A415";
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
	rename -uid "69020E34-43DD-7762-FF89-73B9A82DEECA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.9290975121589522 10.844025867314379 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9B6AEB52-4C61-ADC9-B1DC-95AA6AE0901B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 29.53224235393817;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "79AAAAFA-4041-24F6-5BD9-3DB9884E5898";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0007DA03-4EFA-96B8-3D02-0BA7565703F7";
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
createNode transform -n "Skeleton";
	rename -uid "20779209-4BFC-3557-A7BF-47BAC1B65BD4";
createNode transform -n "Joints" -p "Skeleton";
	rename -uid "88F7D8D9-47DF-BA39-7E56-9C8BCF6B5CAA";
	setAttr ".v" no;
createNode joint -n "Root_Jnt" -p "Joints";
	rename -uid "987343E6-44E6-6444-40CF-219BCFA6C210";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".radi" 1.3355928919924474;
createNode joint -n "Base_Jnt" -p "Root_Jnt";
	rename -uid "CEAB081A-4442-8EAF-DE4D-58A1182BE37A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -179.99999999999997 ;
	setAttr ".bps" -type "matrix" 3.4450928483976665e-16 -1 0 0 1 3.4450928483976665e-16 0 0
		 0 0 1 0 0 0.75988005251402635 0 1;
	setAttr ".radi" 1.3355928919924474;
createNode parentConstraint -n "Base_Jnt_parentConstraint1" -p "Base_Jnt";
	rename -uid "BD78545C-45D4-34D1-B330-BAA4AF3BEE96";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.3403942400458391e-08 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".lr" -type "double3" 0 0 -7.0167092985348775e-15 ;
	setAttr ".rst" -type "double3" 0.75988005251402635 1.6872726605088902e-16 0 ;
	setAttr ".rsrr" -type "double3" 0 0 -7.0167092985348775e-15 ;
	setAttr -k on ".w0";
createNode transform -n "IK_Jnts" -p "Base_Jnt";
	rename -uid "2AD46CD2-435B-6889-5E1B-8BAEDAE63938";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.75988005251402635 -2.6178573345561155e-16 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
createNode joint -n "IK_lower_arm_jnt" -p "IK_Jnts";
	rename -uid "217EC456-4A0A-E207-4770-BEAA52E41CC0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 41.185925165709691 ;
	setAttr ".bps" -type "matrix" 0.75257669470687716 0.65850460786851883 0 0 -0.65850460786851883 0.75257669470687716 0 0
		 0 0 1 0 -0.010824629983109535 2.7247832865724573 0 1;
	setAttr ".radi" 1.2398410834167186;
createNode joint -n "IK_upper_arm_jnt" -p "IK_lower_arm_jnt";
	rename -uid "8988A91F-43F8-2FB6-00F1-EEA5BACBE687";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 15.303594279389896 -3.1086244689504383e-15 0 ;
	setAttr ".r" -type "double3" 2.1942619109129574e-47 5.8346506399240382e-45 -9.2597133419807423e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 99.186355399467914 ;
	setAttr ".bps" -type "matrix" -0.77020476981850727 0.63779668590297656 0 0 -0.63779668590297656 -0.77020476981850727 0 0
		 0 0 1 0 11.506303769935215 12.802270636501007 0 1;
	setAttr ".radi" 1.3355928919924474;
createNode joint -n "IK_head_jnt" -p "IK_upper_arm_jnt";
	rename -uid "6FB9449E-49A6-B7F1-B9DB-7686FBC49AF5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 17.154795911853984 0 4.0651490892499235e-32 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.77020476981850727 0.63779668590297656 0 0 -0.63779668590297656 -0.77020476981850727 0 0
		 0 0 1 0 -1.7064018666377532 23.743542616423408 4.0651490892499235e-32 1;
	setAttr ".radi" 1.3355928919924474;
createNode joint -n "IK_head_rotate_jnt" -p "IK_head_jnt";
	rename -uid "DC582EB1-4D30-0ACF-5AEA-CCB090A6D703";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.77020476981850727 0.63779668590297656 0 0 -0.63779668590297656 -0.77020476981850727 0 0
		 0 0 1 0 -1.7064018666377554 23.743542616423404 4.0651490892499224e-32 1;
	setAttr ".radi" 1.3355928919924474;
createNode parentConstraint -n "IK_head_rotate_jnt_parentConstraint1" -p "IK_head_rotate_jnt";
	rename -uid "F78A358F-416F-AD9C-2081-DBA1C1213503";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.1686582630262592e-08 8.9889411114540962e-07 
		-1.3525102439228061e-39 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 140.37228056517762 ;
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-15 -5.4738221262688167e-48 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "IK_upper_arm_jnt";
	rename -uid "E26AC726-4285-7D63-BA04-6B907511071A";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "IK_lower_arm_jnt_parentConstraint1" -p "IK_lower_arm_jnt";
	rename -uid "B3D13A2C-407F-1D41-91D7-218A9C37E64A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.3840576094699166e-11 1.0442829223578087e-07 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 41.185925165709691 ;
	setAttr ".rst" -type "double3" -0.010824629983109535 2.7247832865724573 0 ;
	setAttr -k on ".w0";
createNode transform -n "RK_Jnts" -p "Base_Jnt";
	rename -uid "085A0DB1-4C5D-4E13-CB19-A69B808B3AA8";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.75988005251402635 -2.6178573345561155e-16 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
createNode joint -n "RK_lower_arm_jnt" -p "RK_Jnts";
	rename -uid "08BB8115-4C32-B07B-3C86-4D8F151020DB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 41.185925165709691 ;
	setAttr ".bps" -type "matrix" 0.75257669470687716 0.65850460786851883 0 0 -0.65850460786851883 0.75257669470687716 0 0
		 0 0 1 0 -0.010824629983109535 2.7247832865724573 0 1;
	setAttr ".radi" 1.2398410834167186;
createNode joint -n "RK_upper_arm_jnt" -p "RK_lower_arm_jnt";
	rename -uid "45625C1A-46AF-FE2E-24BA-8B98EB90CA00";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 99.186355399467914 ;
	setAttr ".bps" -type "matrix" -0.77020476981850727 0.63779668590297656 0 0 -0.63779668590297656 -0.77020476981850727 0 0
		 0 0 1 0 11.506303769935215 12.802270636501005 0 1;
	setAttr ".radi" 1.3355928919924474;
createNode joint -n "RK_head_jnt" -p "RK_upper_arm_jnt";
	rename -uid "EE3719D0-4210-4FD4-8141-DD9A1C770D4E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.77020476981850727 0.63779668590297656 0 0 -0.63779668590297656 -0.77020476981850727 0 0
		 0 0 1 0 -1.7064018666377532 23.743542616423412 4.0651490892499235e-32 1;
	setAttr ".radi" 1.3355928919924474;
createNode joint -n "RK_head_rotate_jnt" -p "RK_head_jnt";
	rename -uid "222FF368-405E-1700-FE08-4C904AB4B4BD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.77020476981850727 0.63779668590297656 0 0 -0.63779668590297656 -0.77020476981850727 0 0
		 0 0 1 0 -1.7064018666377549 23.743542616423404 4.0651490892499213e-32 1;
	setAttr ".radi" 1.3355928919924474;
createNode parentConstraint -n "RK_head_rotate_jnt_parentConstraint1" -p "RK_head_rotate_jnt";
	rename -uid "514B0616-4D4F-ED53-3664-D6801F92F64F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_head_rotate_jntW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IK_head_rotate_jntW1" -dv 1 -min 0 
		-at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 -2.1895288505075267e-47 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "RK_head_jnt_parentConstraint1" -p "RK_head_jnt";
	rename -uid "B4E210E6-4E12-068D-8B9C-ADA854B91CDD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_head_jntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IK_head_jntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 17.154795911853984 0 4.0651490892499235e-32 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "RK_upper_arm_jnt_parentConstraint1" -p "RK_upper_arm_jnt";
	rename -uid "E71E9BE2-4DBE-8AAF-3A79-57A1D700B63D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_upper_arm_jntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IK_upper_arm_jntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 15.303594279389896 -3.5527136788005009e-15 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "RK_lower_arm_jnt_parentConstraint1" -p "RK_lower_arm_jnt";
	rename -uid "9B513E4A-4081-B1C0-8180-F19824EE6C22";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_lower_arm_jntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IK_lower_arm_jntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -0.010824629983109202 2.7247832865724573 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "FK_Jnts1" -p "Base_Jnt";
	rename -uid "926C6F00-434C-CE6B-2693-4CA8A8ADD294";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.75988005251402635 -2.6178573345561155e-16 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
createNode joint -n "FK_lower_arm_jnt" -p "FK_Jnts1";
	rename -uid "71CF7381-48E8-84D4-378D-259FF5CBF93E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 41.185925165709691 ;
	setAttr ".bps" -type "matrix" 0.75257669470687716 0.65850460786851883 0 0 -0.65850460786851883 0.75257669470687716 0 0
		 0 0 1 0 -0.010824629983109535 2.7247832865724568 0 1;
	setAttr ".radi" 1.2398410834167186;
createNode joint -n "FK_upper_arm_jnt" -p "FK_lower_arm_jnt";
	rename -uid "59183258-4C5B-F268-3B82-53A896AEBC97";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 99.186355399467914 ;
	setAttr ".bps" -type "matrix" -0.77020476981850727 0.63779668590297656 0 0 -0.63779668590297656 -0.77020476981850727 0 0
		 0 0 1 0 11.506303769935217 12.802270636501008 0 1;
	setAttr ".radi" 1.3355928919924474;
createNode joint -n "FK_head_jnt" -p "FK_upper_arm_jnt";
	rename -uid "F1A776E0-44DE-C143-FCC2-09B714DF2B1C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.77020476981850727 0.63779668590297656 0 0 -0.63779668590297656 -0.77020476981850727 0 0
		 0 0 1 0 -1.7064018666377496 23.743542616423404 4.0651490892499235e-32 1;
	setAttr ".radi" 1.3355928919924474;
createNode joint -n "FK_head_rotate_jnt" -p "FK_head_jnt";
	rename -uid "350514F3-47FC-9B0F-490A-BFA59BE5497B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0 0 -1.0947644252537633e-47 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.77020476981850727 0.63779668590297656 0 0 -0.63779668590297656 -0.77020476981850727 0 0
		 0 0 1 0 -1.7064018666377496 23.743542616423404 4.0651490892499224e-32 1;
	setAttr ".radi" 1.3355928919924474;
createNode parentConstraint -n "FK_head_jnt_parentConstraint1" -p "FK_head_jnt";
	rename -uid "E6659C99-4CB7-3816-D1E5-7F9F615B40D1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.1686581297994962e-08 8.9889410403998227e-07 
		-1.3525102439228061e-39 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 140.37228056517762 ;
	setAttr ".rst" -type "double3" 17.154795911853981 3.5527136788005009e-15 4.0651490892499235e-32 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "FK_upper_arm_jnt_parentConstraint1" -p "FK_upper_arm_jnt";
	rename -uid "F1AFF65D-4314-ADB7-B5D0-4B96315EE82E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.7296228449481532e-08 -2.527812164032639e-07 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 140.37228056517762 ;
	setAttr ".rst" -type "double3" 15.3035942793899 -2.6645352591003757e-15 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "FK_lower_arm_jnt_parentConstraint1" -p "FK_lower_arm_jnt";
	rename -uid "773092D7-436F-ED31-1D8D-FAA6A5159562";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.3840576094699166e-11 1.0442829179169166e-07 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 41.185925165709691 ;
	setAttr ".rst" -type "double3" -0.010824629983109202 2.7247832865724568 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Root_Jnt_parentConstraint1" -p "Root_Jnt";
	rename -uid "E62168B7-4F56-05BE-7521-B9B653AC1958";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tor" -type "double3" 0 0 89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "Controls" -p "Skeleton";
	rename -uid "8040AB4A-4737-7521-B369-6B92A0E59A8A";
createNode transform -n "transform_ctrl_grp" -p "Controls";
	rename -uid "1795957E-4B7E-E780-BF54-B9B7881252B3";
createNode transform -n "nurbsCircle1" -p "transform_ctrl_grp";
	rename -uid "4C1E11BE-4F30-E858-DBF9-8382199556FE";
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1";
	rename -uid "B721C6EB-4329-D9FA-06E5-2FAC0CDA0E13";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.4236784129142794 4.7982373409884731e-17 -8.4236784129142812
		7.2945353374433066e-16 6.7857323231109122e-17 -11.912880256612839
		-8.4236784129142794 4.7982373409884719e-17 -8.4236784129142794
		-11.912880256612844 3.5177356190060272e-33 -6.1756581615982044e-16
		-8.4236784129142794 -4.7982373409884725e-17 8.4236784129142794
		-1.1933213628967808e-15 -6.7857323231109171e-17 11.912880256612846
		8.4236784129142794 -4.7982373409884719e-17 8.4236784129142794
		11.912880256612844 -9.2536792101100989e-33 1.6245552744204152e-15
		8.4236784129142794 4.7982373409884731e-17 -8.4236784129142812
		7.2945353374433066e-16 6.7857323231109122e-17 -11.912880256612839
		-8.4236784129142794 4.7982373409884719e-17 -8.4236784129142794
		;
createNode transform -n "cog_ctrl_grp" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1";
	rename -uid "FC8696C1-4B7A-EC21-7B96-948DF64B0AAF";
createNode transform -n "nurbsCircle1" -p "cog_ctrl_grp";
	rename -uid "D8ABAAE0-49AD-A23D-C32C-E0A67FBFD966";
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1";
	rename -uid "59A18B4E-421F-5044-DC43-F09124A1937A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.9418474405560486 4.7982373409884731e-17 -6.9418474405560504
		6.011334832612367e-16 6.7857323231109122e-17 -9.8172547983593184
		-6.9418474405560486 4.7982373409884719e-17 -6.9418474405560477
		-9.8172547983593237 3.5177356190060272e-33 -5.0892822234423329e-16
		-6.9418474405560486 -4.7982373409884725e-17 6.9418474405560486
		-9.8340112747964814e-16 -6.7857323231109171e-17 9.8172547983593255
		6.9418474405560486 -4.7982373409884719e-17 6.9418474405560477
		9.8172547983593237 -9.2536792101100989e-33 1.3387755705972662e-15
		6.9418474405560486 4.7982373409884731e-17 -6.9418474405560504
		6.011334832612367e-16 6.7857323231109122e-17 -9.8172547983593184
		-6.9418474405560486 4.7982373409884719e-17 -6.9418474405560477
		;
createNode transform -n "Base_ctrl_grp" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1";
	rename -uid "CC471659-4983-589B-3864-79A96A733321";
	setAttr ".rp" -type "double3" 0 0.75988006591796875 0 ;
	setAttr ".sp" -type "double3" 0 0.75988006591796875 0 ;
createNode transform -n "nurbsCircle1" -p "Base_ctrl_grp";
	rename -uid "F7692B5E-4106-09EF-1EEF-D888223EFDE0";
	setAttr ".rp" -type "double3" 0 0.75988006591796875 0 ;
	setAttr ".sp" -type "double3" 0 0.75988006591796875 0 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1";
	rename -uid "D71D069C-4280-3318-8D7A-D4A567BC84F7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.9549936107091108 0.75988006591796875 -5.9549936107091117
		5.1567627820372202e-16 0.75988006591796886 -8.4216327281099481
		-5.9549936107091108 0.75988006591796875 -5.9549936107091099
		-8.4216327281099517 0.75988006591796875 -4.3657892777411653e-16
		-5.9549936107091108 0.75988006591796875 5.9549936107091108
		-8.4360071019312933e-16 0.75988006591796864 8.4216327281099534
		5.9549936107091108 0.75988006591796875 5.9549936107091099
		8.4216327281099517 0.75988006591796875 1.1484550816405678e-15
		5.9549936107091108 0.75988006591796875 -5.9549936107091117
		5.1567627820372202e-16 0.75988006591796886 -8.4216327281099481
		-5.9549936107091108 0.75988006591796875 -5.9549936107091099
		;
createNode transform -n "IK_controls" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1";
	rename -uid "366A2956-47D5-5A28-44A9-6F854364BF39";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode transform -n "head_rotate_ctrl_grp" -p "IK_controls";
	rename -uid "A3D6BAEE-442D-FB21-1AD3-9CBA67BFA087";
	setAttr ".rp" -type "double3" -1.7064018249511719 23.743541717529297 4.0651492245009479e-32 ;
	setAttr ".sp" -type "double3" -1.7064018249511719 23.743541717529297 4.0651492245009479e-32 ;
createNode transform -n "nurbsCircle1" -p "head_rotate_ctrl_grp";
	rename -uid "F57F081F-4FDA-6880-6B77-049ED7F99FCD";
	setAttr ".rp" -type "double3" -1.7064018249511719 23.743541717529297 4.0651492245009479e-32 ;
	setAttr ".sp" -type "double3" -1.7064018249511719 23.743541717529297 4.0651492245009479e-32 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1";
	rename -uid "731BA385-4B35-8951-39C0-668B0ADD5DA9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0820023572260835 23.743541717529297 -2.7884041821772558
		-1.7064018249511717 23.743541717529297 -3.9433990118129318
		-4.4948060071284273 23.743541717529297 -2.7884041821772549
		-5.6498008367641059 23.743541717529297 -2.0442650112446503e-16
		-4.4948060071284273 23.743541717529297 2.7884041821772554
		-1.7064018249511723 23.743541717529297 3.9433990118129341
		1.0820023572260835 23.743541717529297 2.7884041821772549
		2.2369971868617617 23.743541717529297 5.3775993091417432e-16
		1.0820023572260835 23.743541717529297 -2.7884041821772558
		-1.7064018249511717 23.743541717529297 -3.9433990118129318
		-4.4948060071284273 23.743541717529297 -2.7884041821772549
		;
createNode parentConstraint -n "nurbsCircle1_parentConstraint1" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1";
	rename -uid "FA6CC509-433C-91E5-5B05-B8A47C5C1AFD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ikHandle1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.1686577967325888e-08 -8.988941146981233e-07 
		1.3525102439228061e-39 ;
	setAttr ".rst" -type "double3" 2.2204460492503131e-16 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "ik_main_ctrl_grp" -p "IK_controls";
	rename -uid "59801EED-449E-42B4-02BF-4A90D73A1678";
createNode transform -n "ik_handle_ctrl_grp" -p "ik_main_ctrl_grp";
	rename -uid "E15EE2AC-4A11-25B3-94F8-3B9B6047F3B1";
	setAttr ".rp" -type "double3" -1.7064018249511719 23.743541717529297 4.0651492245009479e-32 ;
	setAttr ".sp" -type "double3" -1.7064018249511719 23.743541717529297 4.0651492245009479e-32 ;
createNode transform -n "nurbsCircle1" -p "ik_handle_ctrl_grp";
	rename -uid "50D7BE69-4ABD-820F-64F7-3590D5303048";
	setAttr ".rp" -type "double3" -1.7064018249511719 23.743541717529297 4.0651492245009479e-32 ;
	setAttr ".sp" -type "double3" -1.7064018249511719 23.743541717529297 4.0651492245009479e-32 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|ik_handle_ctrl_grp|nurbsCircle1";
	rename -uid "20893B29-4435-B762-C107-B38DC3915281";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.224274987044033 23.743541717529297 -3.9306768119952054
		-1.7064018249511714 23.743541717529297 -5.5588164568290575
		-5.6370786369463772 23.743541717529297 -3.930676811995204
		-7.2652182817802311 23.743541717529297 -2.8817002673544503e-16
		-5.6370786369463772 23.743541717529297 3.9306768119952049
		-1.7064018249511725 23.743541717529297 5.5588164568290601
		2.224274987044033 23.743541717529297 3.930676811995204
		3.8524146318778874 23.743541717529297 7.5805383752294161e-16
		2.224274987044033 23.743541717529297 -3.9306768119952054
		-1.7064018249511714 23.743541717529297 -5.5588164568290575
		-5.6370786369463772 23.743541717529297 -3.930676811995204
		;
createNode ikHandle -n "ikHandle1" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|ik_handle_ctrl_grp|nurbsCircle1";
	rename -uid "3434B625-43E6-DEFC-5337-319245F65D1B";
	setAttr ".t" -type "double3" -1.7064018666377496 23.743542616423412 4.0651490892499235e-32 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "CFC8FE8C-41B5-6C04-51F6-8893CF6B6C4D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 18.564381543604515 15.091551575719237 0 ;
	setAttr -k on ".w0";
createNode transform -n "root_ctrl_grp" -p "ik_main_ctrl_grp";
	rename -uid "5ADEE21E-4985-D3F4-0ADE-80AE6892C046";
	setAttr ".rp" -type "double3" -0.010824630036950111 2.724783182144165 0 ;
	setAttr ".sp" -type "double3" -0.010824630036950111 2.724783182144165 0 ;
createNode transform -n "nurbsCircle1" -p "root_ctrl_grp";
	rename -uid "01FC7877-4826-2D0E-200B-C2B7C9C7CE97";
	setAttr ".rp" -type "double3" -0.010824630036950111 2.724783182144165 0 ;
	setAttr ".sp" -type "double3" -0.010824630036950111 2.724783182144165 0 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1";
	rename -uid "54BF8C9D-474E-3C28-1A83-0FB987E504CC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.9198521819582548 2.724783182144165 -3.9306768119952054
		-0.010824630036949771 2.724783182144165 -5.5588164568290575
		-3.941501442032155 2.724783182144165 -3.930676811995204
		-5.5696410868660093 2.724783182144165 -2.8817002673544508e-16
		-3.941501442032155 2.724783182144165 3.9306768119952049
		-0.010824630036950668 2.724783182144165 5.5588164568290601
		3.9198521819582548 2.724783182144165 3.930676811995204
		5.5479918267921091 2.724783182144165 7.5805383752294161e-16
		3.9198521819582548 2.724783182144165 -3.9306768119952054
		-0.010824630036949771 2.724783182144165 -5.5588164568290575
		-3.941501442032155 2.724783182144165 -3.930676811995204
		;
createNode transform -n "pv_ctrl_grp" -p "ik_main_ctrl_grp";
	rename -uid "15FD3823-4CA3-07A8-D2F4-C7B611BE8696";
	setAttr ".rp" -type "double3" 11.506303769935217 12.802270636501007 0 ;
	setAttr ".sp" -type "double3" 11.506303769935217 12.802270636501007 0 ;
createNode transform -n "offset" -p "pv_ctrl_grp";
	rename -uid "595DF504-4B67-7190-8B4A-FCA15C286985";
	setAttr ".rp" -type "double3" 18.553556913621406 17.816334862291693 0 ;
	setAttr ".sp" -type "double3" 18.553556913621406 17.816334862291693 0 ;
createNode transform -n "nurbsCircle1" -p "offset";
	rename -uid "3D0CE2E7-4055-1504-8581-BC9B4ED49125";
	setAttr ".rp" -type "double3" 18.553556913621406 17.816334862291693 0 ;
	setAttr ".sp" -type "double3" 18.553556913621406 17.816334862291693 0 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|pv_ctrl_grp|offset|nurbsCircle1";
	rename -uid "AB3C95C2-4F7F-A390-E4F2-0988DD4713A2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.526193195160323 20.32325590760329 -3.9306768119952054
		18.553556913621406 17.816334862291693 -5.5588164568290575
		21.580920632082488 15.309413816980095 -3.930676811995204
		22.834895742505317 14.271013120213496 -2.8817002673544508e-16
		21.580920632082488 15.309413816980095 3.9306768119952049
		18.553556913621406 17.816334862291693 5.5588164568290601
		15.526193195160323 20.32325590760329 3.930676811995204
		14.272218084737498 21.361656604369891 7.5805383752294161e-16
		15.526193195160323 20.32325590760329 -3.9306768119952054
		18.553556913621406 17.816334862291693 -5.5588164568290575
		21.580920632082488 15.309413816980095 -3.930676811995204
		;
createNode transform -n "FK_Controls" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1";
	rename -uid "79B3C4C7-45A4-0042-3F7E-30BE83199F10";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode transform -n "lower_arm_ctrl_grp" -p "FK_Controls";
	rename -uid "549C5AFB-4CFA-1F36-5BD8-CB8C4F3E79F2";
	setAttr ".rp" -type "double3" -0.010824630036950111 2.724783182144165 0 ;
	setAttr ".sp" -type "double3" -0.010824630036950111 2.724783182144165 0 ;
createNode transform -n "nurbsCircle1" -p "lower_arm_ctrl_grp";
	rename -uid "9435F7C3-43F8-2DE3-1BE9-139FE46A6385";
	setAttr ".rp" -type "double3" -0.010824630036950111 2.724783182144165 0 ;
	setAttr ".sp" -type "double3" -0.010824630036950111 2.724783182144165 0 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1";
	rename -uid "A74CAD0B-4F9B-7AF7-9CEA-9598C1FCF8E6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.9523629378269383 2.724783182144165 -3.9631875678638888
		-0.010824630036949768 2.724783182144165 -5.6047936087015495
		-3.9740121979008385 2.724783182144165 -3.9631875678638875
		-5.6156182387385023 2.724783182144165 -2.9055349040747172e-16
		-3.9740121979008385 2.724783182144165 3.9631875678638884
		-0.010824630036950673 2.724783182144165 5.6047936087015531
		3.9523629378269383 2.724783182144165 3.9631875678638875
		5.5939689786646021 2.724783182144165 7.6432372549028059e-16
		3.9523629378269383 2.724783182144165 -3.9631875678638888
		-0.010824630036949768 2.724783182144165 -5.6047936087015495
		-3.9740121979008385 2.724783182144165 -3.9631875678638875
		;
createNode transform -n "upper_arm_ctrl_grp" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1";
	rename -uid "E436C596-4CF6-6559-F984-27B7840D7936";
	setAttr ".rp" -type "double3" 11.506303787231445 12.802270889282227 0 ;
	setAttr ".sp" -type "double3" 11.506303787231445 12.802270889282227 0 ;
createNode transform -n "nurbsCircle1" -p "upper_arm_ctrl_grp";
	rename -uid "36630D47-4723-B3B3-8297-CC9F0A5A3688";
	setAttr ".rp" -type "double3" 11.506303787231445 12.802270889282227 0 ;
	setAttr ".sp" -type "double3" 11.506303787231445 12.802270889282227 0 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1";
	rename -uid "1D674548-4C4B-B9C5-BD60-68B16FB67E67";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.469491355095334 12.802270889282227 -3.9631875678638888
		11.506303787231445 12.802270889282227 -5.6047936087015495
		7.5431162193675565 12.802270889282227 -3.9631875678638875
		5.9015101785298931 12.802270889282227 -2.9055349040747172e-16
		7.5431162193675565 12.802270889282227 3.9631875678638884
		11.506303787231445 12.802270889282227 5.6047936087015531
		15.469491355095334 12.802270889282227 3.9631875678638875
		17.111097395932998 12.802270889282227 7.6432372549028059e-16
		15.469491355095334 12.802270889282227 -3.9631875678638888
		11.506303787231445 12.802270889282227 -5.6047936087015495
		7.5431162193675565 12.802270889282227 -3.9631875678638875
		;
createNode transform -n "head_ctrl_grp" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1";
	rename -uid "62BF0209-4ED6-1D68-6A01-338B4EEDEF35";
	setAttr ".rp" -type "double3" -1.7064018249511719 23.743541717529297 4.0651492245009479e-32 ;
	setAttr ".sp" -type "double3" -1.7064018249511719 23.743541717529297 4.0651492245009479e-32 ;
createNode transform -n "nurbsCircle1" -p "head_ctrl_grp";
	rename -uid "9D5B537A-43C9-7350-CA72-14BEE6B2FB31";
	setAttr ".rp" -type "double3" -1.7064018249511719 23.743541717529297 4.0651492245009479e-32 ;
	setAttr ".sp" -type "double3" -1.7064018249511719 23.743541717529297 4.0651492245009479e-32 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1|head_ctrl_grp|nurbsCircle1";
	rename -uid "BD026C2A-4656-87CE-490E-47AD48A21AEA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2567857429127165 23.743541717529297 -3.9631875678638888
		-1.7064018249511714 23.743541717529297 -5.6047936087015495
		-5.6695893928150607 23.743541717529297 -3.9631875678638875
		-7.3111954336527241 23.743541717529297 -2.9055349040747167e-16
		-5.6695893928150607 23.743541717529297 3.9631875678638884
		-1.7064018249511725 23.743541717529297 5.6047936087015531
		2.2567857429127165 23.743541717529297 3.9631875678638875
		3.8983917837503803 23.743541717529297 7.6432372549028059e-16
		2.2567857429127165 23.743541717529297 -3.9631875678638888
		-1.7064018249511714 23.743541717529297 -5.6047936087015495
		-5.6695893928150607 23.743541717529297 -3.9631875678638875
		;
createNode transform -n "Switch" -p "Skeleton";
	rename -uid "48AD6E53-4EF3-2225-5685-1EB900A9816E";
	addAttr -ci true -sn "IK_FK_Switch" -ln "IK_FK_Switch" -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 36.353761943137087 0 ;
	setAttr ".s" -type "double3" 9.2270673101631875 1 9.2270673101631875 ;
	setAttr -k on ".IK_FK_Switch" 1;
createNode nurbsCurve -n "SwitchShape" -p "Switch";
	rename -uid "8A2DBB39-40D3-2887-2947-E48CF2BCA3DC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode fosterParent -n "lamp_modelRNfosterParent1";
	rename -uid "0B136F7E-4ED2-E21C-99FE-F58433E605AB";
createNode mesh -n "head_geoShapeDeformed" -p "lamp_modelRNfosterParent1";
	rename -uid "0D303E01-4A7F-46DC-8B62-3AA85BE72D82";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "upper_arm_geoShapeDeformed" -p "lamp_modelRNfosterParent1";
	rename -uid "59CF260C-4301-FBA9-D42A-7CBFE1C43E67";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "lower_arm_geoShapeDeformed" -p "lamp_modelRNfosterParent1";
	rename -uid "7C81D6D2-4AD9-B9C2-F28A-6486E9CC4EC8";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "base_geoShapeDeformed" -p "lamp_modelRNfosterParent1";
	rename -uid "6ED0A1E4-4706-E085-B5B5-28BB721A987F";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "196FC22C-4F82-1130-8648-E891F1FE7A82";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A3EABBB0-4269-23AC-B056-91B40F0530C0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A9125436-499F-C597-9A7B-38A0E1CA0537";
createNode displayLayerManager -n "layerManager";
	rename -uid "7B52EC30-4E3F-3532-B3EA-9BA3DA47417A";
createNode displayLayer -n "defaultLayer";
	rename -uid "0D4F584E-4440-0C57-0381-20AECE66640A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "30083028-484B-0B4F-0825-0593F1C5DAA7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "093C7690-440F-E5CA-57E1-AE8187193533";
	setAttr ".g" yes;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "B11B5B5E-46AE-6D1E-4A61-BFBD4E73BBB7";
createNode reference -n "lamp_modelRN";
	rename -uid "8A5107D8-4B7E-18F8-B8FD-3B9EBC33C9EA";
	setAttr -s 4 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"lamp_modelRN"
		"lamp_modelRN" 7
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
		"lamp_modelRN" 99
		0 "|lamp_modelRNfosterParent1|base_geoShapeDeformed" "|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geoShapeDeformed" "|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|upper_arm_geoShapeDeformed" "|lamp_model:Geometry|lamp_model:upper_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|head_geoShapeDeformed" "|lamp_model:Geometry|lamp_model:head_geo" 
		"-s -r "
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "intermediateObject" 
		" 1"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "vertexColorSource" 
		" 2"
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" "aiTranslator" 
		" -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"intermediateObject" " 1"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"vertexColorSource" " 2"
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShape" 
		"intermediateObject" " 1"
		2 "|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShape" 
		"vertexColorSource" " 2"
		2 "|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShape" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShapeOrig" 
		"aiTranslator" " -type \"string\" \"polymesh\""
		2 "|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" "intermediateObject" 
		" 1"
		2 "|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" "vertexColorSource" 
		" 2"
		2 "|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" "aiTranslator" 
		" -type \"string\" \"polymesh\""
		2 "lamp_model:geo_layer" "displayType" " 0"
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.worldMesh" 
		"lamp_modelRN.placeHolderList[1]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.worldMesh" 
		"lamp_modelRN.placeHolderList[2]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:upper_arm_geo|lamp_model:upper_arm_geoShape.worldMesh" 
		"lamp_modelRN.placeHolderList[3]" ""
		5 3 "lamp_modelRN" "|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape.worldMesh" 
		"lamp_modelRN.placeHolderList[4]" ""
		8 "|lamp_model:Geometry|lamp_model:base_geo" "translateX"
		8 "|lamp_model:Geometry|lamp_model:base_geo" "translateY"
		8 "|lamp_model:Geometry|lamp_model:base_geo" "translateZ"
		8 "|lamp_model:Geometry|lamp_model:base_geo" "rotateX"
		8 "|lamp_model:Geometry|lamp_model:base_geo" "rotateY"
		8 "|lamp_model:Geometry|lamp_model:base_geo" "rotateZ"
		8 "|lamp_model:Geometry|lamp_model:base_geo" "scaleX"
		8 "|lamp_model:Geometry|lamp_model:base_geo" "scaleY"
		8 "|lamp_model:Geometry|lamp_model:base_geo" "scaleZ"
		8 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "translateX"
		8 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "translateY"
		8 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "translateZ"
		8 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "rotateX"
		8 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "rotateY"
		8 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "rotateZ"
		8 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "scaleX"
		8 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "scaleY"
		8 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "scaleZ"
		8 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "translateX"
		8 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "translateY"
		8 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "translateZ"
		8 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "rotateX"
		8 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "rotateY"
		8 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "rotateZ"
		8 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "scaleX"
		8 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "scaleY"
		8 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "scaleZ"
		8 "|lamp_model:Geometry|lamp_model:head_geo" "translateX"
		8 "|lamp_model:Geometry|lamp_model:head_geo" "translateY"
		8 "|lamp_model:Geometry|lamp_model:head_geo" "translateZ"
		8 "|lamp_model:Geometry|lamp_model:head_geo" "rotateX"
		8 "|lamp_model:Geometry|lamp_model:head_geo" "rotateY"
		8 "|lamp_model:Geometry|lamp_model:head_geo" "rotateZ"
		8 "|lamp_model:Geometry|lamp_model:head_geo" "scaleX"
		8 "|lamp_model:Geometry|lamp_model:head_geo" "scaleY"
		8 "|lamp_model:Geometry|lamp_model:head_geo" "scaleZ"
		9 "|lamp_model:Geometry|lamp_model:base_geo" "translateX"
		9 "|lamp_model:Geometry|lamp_model:base_geo" "translateY"
		9 "|lamp_model:Geometry|lamp_model:base_geo" "translateZ"
		9 "|lamp_model:Geometry|lamp_model:base_geo" "rotateX"
		9 "|lamp_model:Geometry|lamp_model:base_geo" "rotateY"
		9 "|lamp_model:Geometry|lamp_model:base_geo" "rotateZ"
		9 "|lamp_model:Geometry|lamp_model:base_geo" "scaleX"
		9 "|lamp_model:Geometry|lamp_model:base_geo" "scaleY"
		9 "|lamp_model:Geometry|lamp_model:base_geo" "scaleZ"
		9 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "translateX"
		9 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "translateY"
		9 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "translateZ"
		9 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "rotateX"
		9 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "rotateY"
		9 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "rotateZ"
		9 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "scaleX"
		9 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "scaleY"
		9 "|lamp_model:Geometry|lamp_model:lower_arm_geo" "scaleZ"
		9 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "translateX"
		9 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "translateY"
		9 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "translateZ"
		9 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "rotateX"
		9 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "rotateY"
		9 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "rotateZ"
		9 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "scaleX"
		9 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "scaleY"
		9 "|lamp_model:Geometry|lamp_model:upper_arm_geo" "scaleZ"
		9 "|lamp_model:Geometry|lamp_model:head_geo" "translateX"
		9 "|lamp_model:Geometry|lamp_model:head_geo" "translateY"
		9 "|lamp_model:Geometry|lamp_model:head_geo" "translateZ"
		9 "|lamp_model:Geometry|lamp_model:head_geo" "rotateX"
		9 "|lamp_model:Geometry|lamp_model:head_geo" "rotateY"
		9 "|lamp_model:Geometry|lamp_model:head_geo" "rotateZ"
		9 "|lamp_model:Geometry|lamp_model:head_geo" "scaleX"
		9 "|lamp_model:Geometry|lamp_model:head_geo" "scaleY"
		9 "|lamp_model:Geometry|lamp_model:head_geo" "scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DCC8D1CA-43FD-D12F-9037-C186DB32F602";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 794\n            -height 517\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 794\\n    -height 517\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 794\\n    -height 517\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9B4F448D-4256-314D-3251-A6AADB435694";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reverse -n "reverse1";
	rename -uid "A4B02C99-45C0-9118-A17A-9EBDEAEBA72E";
createNode reverse -n "reverse2";
	rename -uid "EE68CE4C-423B-C2FA-CB20-A5BB19544371";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "76AF7FCC-4802-4498-E064-3D915F6C8950";
	setAttr ".pee" yes;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1848.7872126159205 1576.5001021614198 ;
	setAttr ".tgi[0].vh" -type "double2" 391.68888883174793 1755.0715236370577 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -802.81976318359375;
	setAttr ".tgi[0].ni[0].y" 1311.097900390625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -581.3912353515625;
	setAttr ".tgi[0].ni[1].y" 1311.097900390625;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -1271.867431640625;
	setAttr ".tgi[0].ni[2].y" 1128.955078125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -359.962646484375;
	setAttr ".tgi[0].ni[3].y" 1311.097900390625;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -1154.94189453125;
	setAttr ".tgi[0].ni[4].y" 1413.9515380859375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -1024.2484130859375;
	setAttr ".tgi[0].ni[5].y" 1311.097900390625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -1403.8760986328125;
	setAttr ".tgi[0].ni[6].y" 1624.2452392578125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -1493.2958984375;
	setAttr ".tgi[0].ni[7].y" 1128.955078125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
createNode objectSet -n "tweakSet3";
	rename -uid "0CCB55A6-40C0-6652-E089-39AFD1B3D0EB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	rename -uid "E25D3966-405C-8BE5-8F83-5AB899BE54C8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "607C6394-4022-C3DF-BB67-E08EBA4B5577";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak3";
	rename -uid "EE278413-435C-C7CB-7FBA-89B631CC0AF0";
createNode groupId -n "groupId9";
	rename -uid "87B35A68-4027-0891-DD12-C89816102FCC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "1EE667FE-41C2-30F8-C526-32BBC12DF87D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:105]";
createNode objectSet -n "tweakSet2";
	rename -uid "88E5B7D9-477E-6447-35E9-64AD8C43A2C2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId5";
	rename -uid "316C1697-4D7C-E073-25AF-2AB604A748FC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "A8D215E9-41C4-19A1-66F1-71B79C05AFA8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak2";
	rename -uid "095399CE-4D33-600D-155A-83B4F90615A7";
createNode groupId -n "groupId6";
	rename -uid "244EEAED-46F3-5167-6D59-45BD97754CAD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "4335F6EC-44A1-08A0-4640-8088A5058F54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode objectSet -n "tweakSet1";
	rename -uid "E7751F61-4616-E546-6A45-F6A82A80E99C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "E1E40BE4-41A8-2427-0C0B-6A825A70DBFA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "886934A1-4CC4-8C2E-FE9F-FBB3F7BF61A4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak1";
	rename -uid "89BF3093-4380-6B33-C161-779DF11F30DD";
createNode groupId -n "groupId3";
	rename -uid "0FC5386F-494B-CBDC-353D-EA962992FB10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "AED6235E-40B4-6CC6-891B-97A0DBC03CB0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:182]";
createNode skinCluster -n "skinCluster1";
	rename -uid "0D7CDA0D-4387-8497-A9B7-EC832D7E0726";
	setAttr -s 168 ".wl";
	setAttr ".wl[0:167].w"
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1;
	setAttr -s 14 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503131e-16 -1 0 -0 1 2.2204460492503131e-16 -0 0
		 0 -0 1 -0 -0 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 3.4450928483976665e-16 1 0 -0 -1 3.4450928483976665e-16 -0 0
		 0 -0 1 -0 0.75988005251402635 -2.6178573345561155e-16 -0 1;
	setAttr ".pm[2]" -type "matrix" 0.75257669470687716 -0.65850460786851883 0 -0 0.65850460786851883 0.75257669470687716 -0 0
		 0 -0 1 -0 -1.7861359853969765 -2.0577364683235908 -0 1;
	setAttr ".pm[3]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 0.69696426259144151 17.199052320198103 -0 1;
	setAttr ".pm[4]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198103 -4.0651490892499246e-32 1;
	setAttr ".pm[5]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198096 -4.0651490892499224e-32 1;
	setAttr ".pm[6]" -type "matrix" 0.75257669470687716 -0.65850460786851883 0 -0 0.65850460786851883 0.75257669470687716 -0 0
		 0 -0 1 -0 -1.7861359853969765 -2.0577364683235908 -0 1;
	setAttr ".pm[7]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 0.69696426259144328 17.199052320198099 -0 1;
	setAttr ".pm[8]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198103 -4.0651490892499246e-32 1;
	setAttr ".pm[9]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198096 -4.0651490892499219e-32 1;
	setAttr ".pm[10]" -type "matrix" 0.75257669470687716 -0.65850460786851883 0 -0 0.65850460786851883 0.75257669470687716 -0 0
		 0 -0 1 -0 -1.786135985396976 -2.0577364683235908 -0 1;
	setAttr ".pm[11]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 0.69696426259144328 17.199052320198103 -0 1;
	setAttr ".pm[12]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262538 17.199052320198099 -4.0651490892499246e-32 1;
	setAttr ".pm[13]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262538 17.199052320198099 -4.0651490892499224e-32 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 14 ".dpf[0:13]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode objectSet -n "skinCluster1Set";
	rename -uid "1A747A72-4A50-A067-B82D-F98DB710A287";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "FED4B140-408B-29CE-FFA2-C6A13DCBAFD7";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "A7A993C7-4F04-901C-A1D6-25A6C62F926F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "C3C997F6-4558-BB2A-97D9-4B91D4723B6B";
	setAttr -s 19 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[4]" -type "matrix" 1 1.2246467991473535e-16 0 0 -1.2246467991473535e-16 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wm[9]" -type "matrix" 1 1.2246467991473535e-16 0 0 -1.2246467991473535e-16 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wm[14]" -type "matrix" 1 1.2246467991473535e-16 0 0 -1.2246467991473535e-16 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr -s 27 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654757 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 -1.2246467991473535e-16 0 0.75988005251402635
		 1.6872726605088902e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -1 2.8327694488239898e-16 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 1.5707963267948963 0 0.75988005251402635
		 -2.6178573345561155e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -1.459433148083002e-16 -1.967001275272583e-16
		 1.4353534317271726e-32 0 -0.010824629983109202 2.7247832865724573 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.3517266732088446 0.93610274401554805 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 3.8297094996533602e-49 1.0183386437026857e-46
		 -1.6161248560841161e-16 0 15.303594279389896 -4.8849813083506888e-15 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.76146112946331768 0.64821057405479632 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 17.154795911853988 -3.5527136788005009e-15
		 4.0651490892499235e-32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 3.5527136788005009e-15
		 -1.0947644252537633e-47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 1.5707963267948963 0 0.75988005251402635
		 -2.6178573345561155e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.010824629983109202
		 2.7247832865724573 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.3517266732088446 0.93610274401554805 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 15.303594279389896 -6.6613381477509392e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.76146112946331768 0.64821057405479632 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 17.154795911853988 -3.5527136788005009e-15
		 4.0651490892499235e-32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5527136788005009e-15
		 7.1054273576010019e-15 -2.1895288505075267e-47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 1.5707963267948963 0 0.75988005251402635
		 -2.6178573345561155e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.010824629983109202
		 2.7247832865724568 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.3517266732088446 0.93610274401554805 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 15.303594279389896 -4.4408920985006262e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.76146112946331768 0.64821057405479632 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 17.154795911853981 3.5527136788005009e-15
		 4.0651490892499235e-32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 -1.0947644252537633e-47 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 3.5527136788005009e-15
		 -1.0947644252537633e-47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5527136788005009e-15
		 7.1054273576010019e-15 -2.1895288505075267e-47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 -1.0947644252537633e-47 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 3.5527136788005009e-15
		 -1.0947644252537633e-47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5527136788005009e-15
		 7.1054273576010019e-15 -2.1895288505075267e-47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -3.5527136788005009e-15
		 -1.642146637880645e-47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 3.5527136788005009e-15
		 -1.0947644252537633e-47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5527136788005009e-15
		 7.1054273576010019e-15 -2.1895288505075267e-47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr -s 19 ".m";
	setAttr -s 19 ".p";
	setAttr -s 27 ".g[0:26]" yes yes no no yes no yes yes no yes no yes 
		yes no yes no yes yes no no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "0ED0895E-4F94-F846-EB2B-9091818B1D8D";
	setAttr -s 122 ".wl";
	setAttr ".wl[0:121].w"
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1;
	setAttr -s 14 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503131e-16 -1 0 -0 1 2.2204460492503131e-16 -0 0
		 0 -0 1 -0 -0 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 3.4450928483976665e-16 1 0 -0 -1 3.4450928483976665e-16 -0 0
		 0 -0 1 -0 0.75988005251402635 -2.6178573345561155e-16 -0 1;
	setAttr ".pm[2]" -type "matrix" 0.75257669470687716 -0.65850460786851883 0 -0 0.65850460786851883 0.75257669470687716 -0 0
		 0 -0 1 -0 -1.7861359853969765 -2.0577364683235908 -0 1;
	setAttr ".pm[3]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 0.69696426259144151 17.199052320198103 -0 1;
	setAttr ".pm[4]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198103 -4.0651490892499246e-32 1;
	setAttr ".pm[5]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198096 -4.0651490892499224e-32 1;
	setAttr ".pm[6]" -type "matrix" 0.75257669470687716 -0.65850460786851883 0 -0 0.65850460786851883 0.75257669470687716 -0 0
		 0 -0 1 -0 -1.7861359853969765 -2.0577364683235908 -0 1;
	setAttr ".pm[7]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 0.69696426259144328 17.199052320198099 -0 1;
	setAttr ".pm[8]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198103 -4.0651490892499246e-32 1;
	setAttr ".pm[9]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198096 -4.0651490892499219e-32 1;
	setAttr ".pm[10]" -type "matrix" 0.75257669470687716 -0.65850460786851883 0 -0 0.65850460786851883 0.75257669470687716 -0 0
		 0 -0 1 -0 -1.786135985396976 -2.0577364683235908 -0 1;
	setAttr ".pm[11]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 0.69696426259144328 17.199052320198103 -0 1;
	setAttr ".pm[12]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262538 17.199052320198099 -4.0651490892499246e-32 1;
	setAttr ".pm[13]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262538 17.199052320198099 -4.0651490892499224e-32 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.8817841970012523e-16 8.8817841970012523e-16 0 1;
	setAttr -s 8 ".ma";
	setAttr -s 14 ".dpf[0:13]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
createNode objectSet -n "skinCluster2Set";
	rename -uid "E63E9FE0-4CA2-768F-7261-B295281BCCEC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "555E4F2B-4C31-AE8B-2312-49A5B5596070";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "966F3679-49F7-9EDD-D714-B99B8E0D9398";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster3";
	rename -uid "7B54E4C1-4C12-C844-A0C2-7393BB0A1DFF";
	setAttr -s 126 ".wl";
	setAttr ".wl[0:125].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr -s 14 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503131e-16 -1 0 -0 1 2.2204460492503131e-16 -0 0
		 0 -0 1 -0 -0 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 3.4450928483976665e-16 1 0 -0 -1 3.4450928483976665e-16 -0 0
		 0 -0 1 -0 0.75988005251402635 -2.6178573345561155e-16 -0 1;
	setAttr ".pm[2]" -type "matrix" 0.75257669470687716 -0.65850460786851883 0 -0 0.65850460786851883 0.75257669470687716 -0 0
		 0 -0 1 -0 -1.7861359853969765 -2.0577364683235908 -0 1;
	setAttr ".pm[3]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 0.69696426259144151 17.199052320198103 -0 1;
	setAttr ".pm[4]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198103 -4.0651490892499246e-32 1;
	setAttr ".pm[5]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198096 -4.0651490892499224e-32 1;
	setAttr ".pm[6]" -type "matrix" 0.75257669470687716 -0.65850460786851883 0 -0 0.65850460786851883 0.75257669470687716 -0 0
		 0 -0 1 -0 -1.7861359853969765 -2.0577364683235908 -0 1;
	setAttr ".pm[7]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 0.69696426259144328 17.199052320198099 -0 1;
	setAttr ".pm[8]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198103 -4.0651490892499246e-32 1;
	setAttr ".pm[9]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198096 -4.0651490892499219e-32 1;
	setAttr ".pm[10]" -type "matrix" 0.75257669470687716 -0.65850460786851883 0 -0 0.65850460786851883 0.75257669470687716 -0 0
		 0 -0 1 -0 -1.786135985396976 -2.0577364683235908 -0 1;
	setAttr ".pm[11]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 0.69696426259144328 17.199052320198103 -0 1;
	setAttr ".pm[12]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262538 17.199052320198099 -4.0651490892499246e-32 1;
	setAttr ".pm[13]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262538 17.199052320198099 -4.0651490892499224e-32 1;
	setAttr ".gm" -type "matrix" 0.99999999999999978 0 0 0 0 1.0000000000000002 0 0 0 0 1 0
		 0 -7.1054273576010019e-15 -2.6020852139652106e-17 1;
	setAttr -s 8 ".ma";
	setAttr -s 14 ".dpf[0:13]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
createNode objectSet -n "skinCluster3Set";
	rename -uid "4D11392F-4A86-0659-64F7-D29CCC17FD48";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "2588F5D8-4C41-27F3-FC82-C3BE4585C8CA";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "7021786F-464C-15BB-D1D4-7BB0543AD897";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster4";
	rename -uid "2F3EC5F9-4B54-DAAC-F00E-91957978B9DC";
	setAttr -s 206 ".wl";
	setAttr ".wl[0:205].w"
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1;
	setAttr -s 14 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503131e-16 -1 0 -0 1 2.2204460492503131e-16 -0 0
		 0 -0 1 -0 -0 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 3.4450928483976665e-16 1 0 -0 -1 3.4450928483976665e-16 -0 0
		 0 -0 1 -0 0.75988005251402635 -2.6178573345561155e-16 -0 1;
	setAttr ".pm[2]" -type "matrix" 0.75257669470687716 -0.65850460786851883 0 -0 0.65850460786851883 0.75257669470687716 -0 0
		 0 -0 1 -0 -1.7861359853969765 -2.0577364683235908 -0 1;
	setAttr ".pm[3]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 0.69696426259144151 17.199052320198103 -0 1;
	setAttr ".pm[4]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198103 -4.0651490892499246e-32 1;
	setAttr ".pm[5]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198096 -4.0651490892499224e-32 1;
	setAttr ".pm[6]" -type "matrix" 0.75257669470687716 -0.65850460786851883 0 -0 0.65850460786851883 0.75257669470687716 -0 0
		 0 -0 1 -0 -1.7861359853969765 -2.0577364683235908 -0 1;
	setAttr ".pm[7]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 0.69696426259144328 17.199052320198099 -0 1;
	setAttr ".pm[8]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198103 -4.0651490892499246e-32 1;
	setAttr ".pm[9]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262545 17.199052320198096 -4.0651490892499219e-32 1;
	setAttr ".pm[10]" -type "matrix" 0.75257669470687716 -0.65850460786851883 0 -0 0.65850460786851883 0.75257669470687716 -0 0
		 0 -0 1 -0 -1.786135985396976 -2.0577364683235908 -0 1;
	setAttr ".pm[11]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 0.69696426259144328 17.199052320198103 -0 1;
	setAttr ".pm[12]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262538 17.199052320198099 -4.0651490892499246e-32 1;
	setAttr ".pm[13]" -type "matrix" -0.7702047698185075 -0.63779668590297667 0 -0 0.63779668590297667 -0.7702047698185075 -0 0
		 0 -0 1 -0 -16.457831649262538 17.199052320198099 -4.0651490892499224e-32 1;
	setAttr ".gm" -type "matrix" 0.99999999999999967 0 2.4492935982947054e-16 0 0 1.0000000000000002 0 0
		 -2.4492935982947064e-16 0 1 0 -1.1123817907748535e-15 -7.1054273576010019e-15 3.920475055707584e-16 1;
	setAttr -s 9 ".ma";
	setAttr -s 14 ".dpf[0:13]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 9 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 9 ".ifcl";
createNode tweak -n "tweak4";
	rename -uid "C85BB24E-4A0F-6F25-6982-FCABE02B9610";
createNode objectSet -n "skinCluster4Set";
	rename -uid "FDAEDD63-411C-21D8-0113-EE8654BC7462";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	rename -uid "7FBBE914-40CA-9885-CDAB-48ABF09F6D88";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	rename -uid "B6221500-4C54-4F81-6693-5E84072E0181";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	rename -uid "3AB051B1-4556-5A68-6917-03A467008812";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId11";
	rename -uid "D1858BE3-4831-EDF1-CFF6-89A1C477B6B7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "A1A1FF5C-43E8-3024-7181-0C97C3A3D8C2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
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
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
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
connectAttr "lamp_modelRN.phl[1]" "groupParts2.ig";
connectAttr "lamp_modelRN.phl[2]" "groupParts5.ig";
connectAttr "lamp_modelRN.phl[3]" "groupParts8.ig";
connectAttr "lamp_modelRN.phl[4]" "groupParts11.ig";
connectAttr "Root_Jnt_parentConstraint1.ctx" "Root_Jnt.tx";
connectAttr "Root_Jnt_parentConstraint1.cty" "Root_Jnt.ty";
connectAttr "Root_Jnt_parentConstraint1.ctz" "Root_Jnt.tz";
connectAttr "Root_Jnt_parentConstraint1.crx" "Root_Jnt.rx";
connectAttr "Root_Jnt_parentConstraint1.cry" "Root_Jnt.ry";
connectAttr "Root_Jnt_parentConstraint1.crz" "Root_Jnt.rz";
connectAttr "Root_Jnt.s" "Base_Jnt.is";
connectAttr "Base_Jnt_parentConstraint1.ctx" "Base_Jnt.tx";
connectAttr "Base_Jnt_parentConstraint1.cty" "Base_Jnt.ty";
connectAttr "Base_Jnt_parentConstraint1.ctz" "Base_Jnt.tz";
connectAttr "Base_Jnt_parentConstraint1.crx" "Base_Jnt.rx";
connectAttr "Base_Jnt_parentConstraint1.cry" "Base_Jnt.ry";
connectAttr "Base_Jnt_parentConstraint1.crz" "Base_Jnt.rz";
connectAttr "Base_Jnt.ro" "Base_Jnt_parentConstraint1.cro";
connectAttr "Base_Jnt.pim" "Base_Jnt_parentConstraint1.cpim";
connectAttr "Base_Jnt.rp" "Base_Jnt_parentConstraint1.crp";
connectAttr "Base_Jnt.rpt" "Base_Jnt_parentConstraint1.crt";
connectAttr "Base_Jnt.jo" "Base_Jnt_parentConstraint1.cjo";
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1.t" "Base_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1.rp" "Base_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1.rpt" "Base_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1.r" "Base_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1.ro" "Base_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1.s" "Base_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1.pm" "Base_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Base_Jnt_parentConstraint1.w0" "Base_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_lower_arm_jnt_parentConstraint1.ctx" "IK_lower_arm_jnt.tx";
connectAttr "IK_lower_arm_jnt_parentConstraint1.cty" "IK_lower_arm_jnt.ty";
connectAttr "IK_lower_arm_jnt_parentConstraint1.ctz" "IK_lower_arm_jnt.tz";
connectAttr "IK_lower_arm_jnt_parentConstraint1.crx" "IK_lower_arm_jnt.rx";
connectAttr "IK_lower_arm_jnt_parentConstraint1.cry" "IK_lower_arm_jnt.ry";
connectAttr "IK_lower_arm_jnt_parentConstraint1.crz" "IK_lower_arm_jnt.rz";
connectAttr "IK_lower_arm_jnt.s" "IK_upper_arm_jnt.is";
connectAttr "IK_upper_arm_jnt.s" "IK_head_jnt.is";
connectAttr "IK_head_jnt.s" "IK_head_rotate_jnt.is";
connectAttr "IK_head_rotate_jnt_parentConstraint1.ctx" "IK_head_rotate_jnt.tx";
connectAttr "IK_head_rotate_jnt_parentConstraint1.cty" "IK_head_rotate_jnt.ty";
connectAttr "IK_head_rotate_jnt_parentConstraint1.ctz" "IK_head_rotate_jnt.tz";
connectAttr "IK_head_rotate_jnt_parentConstraint1.crx" "IK_head_rotate_jnt.rx";
connectAttr "IK_head_rotate_jnt_parentConstraint1.cry" "IK_head_rotate_jnt.ry";
connectAttr "IK_head_rotate_jnt_parentConstraint1.crz" "IK_head_rotate_jnt.rz";
connectAttr "IK_head_rotate_jnt.ro" "IK_head_rotate_jnt_parentConstraint1.cro";
connectAttr "IK_head_rotate_jnt.pim" "IK_head_rotate_jnt_parentConstraint1.cpim"
		;
connectAttr "IK_head_rotate_jnt.rp" "IK_head_rotate_jnt_parentConstraint1.crp";
connectAttr "IK_head_rotate_jnt.rpt" "IK_head_rotate_jnt_parentConstraint1.crt";
connectAttr "IK_head_rotate_jnt.jo" "IK_head_rotate_jnt_parentConstraint1.cjo";
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.t" "IK_head_rotate_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.rp" "IK_head_rotate_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.rpt" "IK_head_rotate_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.r" "IK_head_rotate_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.ro" "IK_head_rotate_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.s" "IK_head_rotate_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.pm" "IK_head_rotate_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_head_rotate_jnt_parentConstraint1.w0" "IK_head_rotate_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_head_jnt.tx" "effector1.tx";
connectAttr "IK_head_jnt.ty" "effector1.ty";
connectAttr "IK_head_jnt.tz" "effector1.tz";
connectAttr "IK_lower_arm_jnt.ro" "IK_lower_arm_jnt_parentConstraint1.cro";
connectAttr "IK_lower_arm_jnt.pim" "IK_lower_arm_jnt_parentConstraint1.cpim";
connectAttr "IK_lower_arm_jnt.rp" "IK_lower_arm_jnt_parentConstraint1.crp";
connectAttr "IK_lower_arm_jnt.rpt" "IK_lower_arm_jnt_parentConstraint1.crt";
connectAttr "IK_lower_arm_jnt.jo" "IK_lower_arm_jnt_parentConstraint1.cjo";
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.t" "IK_lower_arm_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.rp" "IK_lower_arm_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.rpt" "IK_lower_arm_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.r" "IK_lower_arm_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.ro" "IK_lower_arm_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.s" "IK_lower_arm_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.pm" "IK_lower_arm_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_lower_arm_jnt_parentConstraint1.w0" "IK_lower_arm_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "RK_lower_arm_jnt_parentConstraint1.ctx" "RK_lower_arm_jnt.tx";
connectAttr "RK_lower_arm_jnt_parentConstraint1.cty" "RK_lower_arm_jnt.ty";
connectAttr "RK_lower_arm_jnt_parentConstraint1.ctz" "RK_lower_arm_jnt.tz";
connectAttr "RK_lower_arm_jnt_parentConstraint1.crx" "RK_lower_arm_jnt.rx";
connectAttr "RK_lower_arm_jnt_parentConstraint1.cry" "RK_lower_arm_jnt.ry";
connectAttr "RK_lower_arm_jnt_parentConstraint1.crz" "RK_lower_arm_jnt.rz";
connectAttr "RK_lower_arm_jnt.s" "RK_upper_arm_jnt.is";
connectAttr "RK_upper_arm_jnt_parentConstraint1.ctx" "RK_upper_arm_jnt.tx";
connectAttr "RK_upper_arm_jnt_parentConstraint1.cty" "RK_upper_arm_jnt.ty";
connectAttr "RK_upper_arm_jnt_parentConstraint1.ctz" "RK_upper_arm_jnt.tz";
connectAttr "RK_upper_arm_jnt_parentConstraint1.crx" "RK_upper_arm_jnt.rx";
connectAttr "RK_upper_arm_jnt_parentConstraint1.cry" "RK_upper_arm_jnt.ry";
connectAttr "RK_upper_arm_jnt_parentConstraint1.crz" "RK_upper_arm_jnt.rz";
connectAttr "RK_upper_arm_jnt.s" "RK_head_jnt.is";
connectAttr "RK_head_jnt_parentConstraint1.ctx" "RK_head_jnt.tx";
connectAttr "RK_head_jnt_parentConstraint1.cty" "RK_head_jnt.ty";
connectAttr "RK_head_jnt_parentConstraint1.ctz" "RK_head_jnt.tz";
connectAttr "RK_head_jnt_parentConstraint1.crx" "RK_head_jnt.rx";
connectAttr "RK_head_jnt_parentConstraint1.cry" "RK_head_jnt.ry";
connectAttr "RK_head_jnt_parentConstraint1.crz" "RK_head_jnt.rz";
connectAttr "RK_head_jnt.s" "RK_head_rotate_jnt.is";
connectAttr "RK_head_rotate_jnt_parentConstraint1.ctx" "RK_head_rotate_jnt.tx";
connectAttr "RK_head_rotate_jnt_parentConstraint1.cty" "RK_head_rotate_jnt.ty";
connectAttr "RK_head_rotate_jnt_parentConstraint1.ctz" "RK_head_rotate_jnt.tz";
connectAttr "RK_head_rotate_jnt_parentConstraint1.crx" "RK_head_rotate_jnt.rx";
connectAttr "RK_head_rotate_jnt_parentConstraint1.cry" "RK_head_rotate_jnt.ry";
connectAttr "RK_head_rotate_jnt_parentConstraint1.crz" "RK_head_rotate_jnt.rz";
connectAttr "RK_head_rotate_jnt.ro" "RK_head_rotate_jnt_parentConstraint1.cro";
connectAttr "RK_head_rotate_jnt.pim" "RK_head_rotate_jnt_parentConstraint1.cpim"
		;
connectAttr "RK_head_rotate_jnt.rp" "RK_head_rotate_jnt_parentConstraint1.crp";
connectAttr "RK_head_rotate_jnt.rpt" "RK_head_rotate_jnt_parentConstraint1.crt";
connectAttr "RK_head_rotate_jnt.jo" "RK_head_rotate_jnt_parentConstraint1.cjo";
connectAttr "FK_head_rotate_jnt.t" "RK_head_rotate_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "FK_head_rotate_jnt.rp" "RK_head_rotate_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "FK_head_rotate_jnt.rpt" "RK_head_rotate_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "FK_head_rotate_jnt.r" "RK_head_rotate_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "FK_head_rotate_jnt.ro" "RK_head_rotate_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "FK_head_rotate_jnt.s" "RK_head_rotate_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "FK_head_rotate_jnt.pm" "RK_head_rotate_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_head_rotate_jnt.jo" "RK_head_rotate_jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "FK_head_rotate_jnt.ssc" "RK_head_rotate_jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "FK_head_rotate_jnt.is" "RK_head_rotate_jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "RK_head_rotate_jnt_parentConstraint1.w0" "RK_head_rotate_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_head_rotate_jnt.t" "RK_head_rotate_jnt_parentConstraint1.tg[1].tt"
		;
connectAttr "IK_head_rotate_jnt.rp" "RK_head_rotate_jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "IK_head_rotate_jnt.rpt" "RK_head_rotate_jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "IK_head_rotate_jnt.r" "RK_head_rotate_jnt_parentConstraint1.tg[1].tr"
		;
connectAttr "IK_head_rotate_jnt.ro" "RK_head_rotate_jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "IK_head_rotate_jnt.s" "RK_head_rotate_jnt_parentConstraint1.tg[1].ts"
		;
connectAttr "IK_head_rotate_jnt.pm" "RK_head_rotate_jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "IK_head_rotate_jnt.jo" "RK_head_rotate_jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "IK_head_rotate_jnt.ssc" "RK_head_rotate_jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "IK_head_rotate_jnt.is" "RK_head_rotate_jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "RK_head_rotate_jnt_parentConstraint1.w1" "RK_head_rotate_jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Switch.IK_FK_Switch" "RK_head_rotate_jnt_parentConstraint1.w0";
connectAttr "reverse2.ox" "RK_head_rotate_jnt_parentConstraint1.w1";
connectAttr "RK_head_jnt.ro" "RK_head_jnt_parentConstraint1.cro";
connectAttr "RK_head_jnt.pim" "RK_head_jnt_parentConstraint1.cpim";
connectAttr "RK_head_jnt.rp" "RK_head_jnt_parentConstraint1.crp";
connectAttr "RK_head_jnt.rpt" "RK_head_jnt_parentConstraint1.crt";
connectAttr "RK_head_jnt.jo" "RK_head_jnt_parentConstraint1.cjo";
connectAttr "FK_head_jnt.t" "RK_head_jnt_parentConstraint1.tg[0].tt";
connectAttr "FK_head_jnt.rp" "RK_head_jnt_parentConstraint1.tg[0].trp";
connectAttr "FK_head_jnt.rpt" "RK_head_jnt_parentConstraint1.tg[0].trt";
connectAttr "FK_head_jnt.r" "RK_head_jnt_parentConstraint1.tg[0].tr";
connectAttr "FK_head_jnt.ro" "RK_head_jnt_parentConstraint1.tg[0].tro";
connectAttr "FK_head_jnt.s" "RK_head_jnt_parentConstraint1.tg[0].ts";
connectAttr "FK_head_jnt.pm" "RK_head_jnt_parentConstraint1.tg[0].tpm";
connectAttr "FK_head_jnt.jo" "RK_head_jnt_parentConstraint1.tg[0].tjo";
connectAttr "FK_head_jnt.ssc" "RK_head_jnt_parentConstraint1.tg[0].tsc";
connectAttr "FK_head_jnt.is" "RK_head_jnt_parentConstraint1.tg[0].tis";
connectAttr "RK_head_jnt_parentConstraint1.w0" "RK_head_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_head_jnt.t" "RK_head_jnt_parentConstraint1.tg[1].tt";
connectAttr "IK_head_jnt.rp" "RK_head_jnt_parentConstraint1.tg[1].trp";
connectAttr "IK_head_jnt.rpt" "RK_head_jnt_parentConstraint1.tg[1].trt";
connectAttr "IK_head_jnt.r" "RK_head_jnt_parentConstraint1.tg[1].tr";
connectAttr "IK_head_jnt.ro" "RK_head_jnt_parentConstraint1.tg[1].tro";
connectAttr "IK_head_jnt.s" "RK_head_jnt_parentConstraint1.tg[1].ts";
connectAttr "IK_head_jnt.pm" "RK_head_jnt_parentConstraint1.tg[1].tpm";
connectAttr "IK_head_jnt.jo" "RK_head_jnt_parentConstraint1.tg[1].tjo";
connectAttr "IK_head_jnt.ssc" "RK_head_jnt_parentConstraint1.tg[1].tsc";
connectAttr "IK_head_jnt.is" "RK_head_jnt_parentConstraint1.tg[1].tis";
connectAttr "RK_head_jnt_parentConstraint1.w1" "RK_head_jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "RK_head_rotate_jnt_parentConstraint1.w0" "RK_head_jnt_parentConstraint1.w0"
		;
connectAttr "RK_head_rotate_jnt_parentConstraint1.w1" "RK_head_jnt_parentConstraint1.w1"
		;
connectAttr "RK_upper_arm_jnt.ro" "RK_upper_arm_jnt_parentConstraint1.cro";
connectAttr "RK_upper_arm_jnt.pim" "RK_upper_arm_jnt_parentConstraint1.cpim";
connectAttr "RK_upper_arm_jnt.rp" "RK_upper_arm_jnt_parentConstraint1.crp";
connectAttr "RK_upper_arm_jnt.rpt" "RK_upper_arm_jnt_parentConstraint1.crt";
connectAttr "RK_upper_arm_jnt.jo" "RK_upper_arm_jnt_parentConstraint1.cjo";
connectAttr "FK_upper_arm_jnt.t" "RK_upper_arm_jnt_parentConstraint1.tg[0].tt";
connectAttr "FK_upper_arm_jnt.rp" "RK_upper_arm_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "FK_upper_arm_jnt.rpt" "RK_upper_arm_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "FK_upper_arm_jnt.r" "RK_upper_arm_jnt_parentConstraint1.tg[0].tr";
connectAttr "FK_upper_arm_jnt.ro" "RK_upper_arm_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "FK_upper_arm_jnt.s" "RK_upper_arm_jnt_parentConstraint1.tg[0].ts";
connectAttr "FK_upper_arm_jnt.pm" "RK_upper_arm_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_upper_arm_jnt.jo" "RK_upper_arm_jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "FK_upper_arm_jnt.ssc" "RK_upper_arm_jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "FK_upper_arm_jnt.is" "RK_upper_arm_jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "RK_upper_arm_jnt_parentConstraint1.w0" "RK_upper_arm_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_upper_arm_jnt.t" "RK_upper_arm_jnt_parentConstraint1.tg[1].tt";
connectAttr "IK_upper_arm_jnt.rp" "RK_upper_arm_jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "IK_upper_arm_jnt.rpt" "RK_upper_arm_jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "IK_upper_arm_jnt.r" "RK_upper_arm_jnt_parentConstraint1.tg[1].tr";
connectAttr "IK_upper_arm_jnt.ro" "RK_upper_arm_jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "IK_upper_arm_jnt.s" "RK_upper_arm_jnt_parentConstraint1.tg[1].ts";
connectAttr "IK_upper_arm_jnt.pm" "RK_upper_arm_jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "IK_upper_arm_jnt.jo" "RK_upper_arm_jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "IK_upper_arm_jnt.ssc" "RK_upper_arm_jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "IK_upper_arm_jnt.is" "RK_upper_arm_jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "RK_upper_arm_jnt_parentConstraint1.w1" "RK_upper_arm_jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "RK_head_jnt_parentConstraint1.w0" "RK_upper_arm_jnt_parentConstraint1.w0"
		;
connectAttr "RK_head_jnt_parentConstraint1.w1" "RK_upper_arm_jnt_parentConstraint1.w1"
		;
connectAttr "RK_lower_arm_jnt.ro" "RK_lower_arm_jnt_parentConstraint1.cro";
connectAttr "RK_lower_arm_jnt.pim" "RK_lower_arm_jnt_parentConstraint1.cpim";
connectAttr "RK_lower_arm_jnt.rp" "RK_lower_arm_jnt_parentConstraint1.crp";
connectAttr "RK_lower_arm_jnt.rpt" "RK_lower_arm_jnt_parentConstraint1.crt";
connectAttr "RK_lower_arm_jnt.jo" "RK_lower_arm_jnt_parentConstraint1.cjo";
connectAttr "FK_lower_arm_jnt.t" "RK_lower_arm_jnt_parentConstraint1.tg[0].tt";
connectAttr "FK_lower_arm_jnt.rp" "RK_lower_arm_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "FK_lower_arm_jnt.rpt" "RK_lower_arm_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "FK_lower_arm_jnt.r" "RK_lower_arm_jnt_parentConstraint1.tg[0].tr";
connectAttr "FK_lower_arm_jnt.ro" "RK_lower_arm_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "FK_lower_arm_jnt.s" "RK_lower_arm_jnt_parentConstraint1.tg[0].ts";
connectAttr "FK_lower_arm_jnt.pm" "RK_lower_arm_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_lower_arm_jnt.jo" "RK_lower_arm_jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "FK_lower_arm_jnt.ssc" "RK_lower_arm_jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "FK_lower_arm_jnt.is" "RK_lower_arm_jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "RK_lower_arm_jnt_parentConstraint1.w0" "RK_lower_arm_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_lower_arm_jnt.t" "RK_lower_arm_jnt_parentConstraint1.tg[1].tt";
connectAttr "IK_lower_arm_jnt.rp" "RK_lower_arm_jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "IK_lower_arm_jnt.rpt" "RK_lower_arm_jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "IK_lower_arm_jnt.r" "RK_lower_arm_jnt_parentConstraint1.tg[1].tr";
connectAttr "IK_lower_arm_jnt.ro" "RK_lower_arm_jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "IK_lower_arm_jnt.s" "RK_lower_arm_jnt_parentConstraint1.tg[1].ts";
connectAttr "IK_lower_arm_jnt.pm" "RK_lower_arm_jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "IK_lower_arm_jnt.jo" "RK_lower_arm_jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "IK_lower_arm_jnt.ssc" "RK_lower_arm_jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "IK_lower_arm_jnt.is" "RK_lower_arm_jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "RK_lower_arm_jnt_parentConstraint1.w1" "RK_lower_arm_jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "RK_upper_arm_jnt_parentConstraint1.w0" "RK_lower_arm_jnt_parentConstraint1.w0"
		;
connectAttr "RK_upper_arm_jnt_parentConstraint1.w1" "RK_lower_arm_jnt_parentConstraint1.w1"
		;
connectAttr "FK_lower_arm_jnt_parentConstraint1.ctx" "FK_lower_arm_jnt.tx";
connectAttr "FK_lower_arm_jnt_parentConstraint1.cty" "FK_lower_arm_jnt.ty";
connectAttr "FK_lower_arm_jnt_parentConstraint1.ctz" "FK_lower_arm_jnt.tz";
connectAttr "FK_lower_arm_jnt_parentConstraint1.crx" "FK_lower_arm_jnt.rx";
connectAttr "FK_lower_arm_jnt_parentConstraint1.cry" "FK_lower_arm_jnt.ry";
connectAttr "FK_lower_arm_jnt_parentConstraint1.crz" "FK_lower_arm_jnt.rz";
connectAttr "FK_upper_arm_jnt_parentConstraint1.ctx" "FK_upper_arm_jnt.tx";
connectAttr "FK_upper_arm_jnt_parentConstraint1.cty" "FK_upper_arm_jnt.ty";
connectAttr "FK_upper_arm_jnt_parentConstraint1.ctz" "FK_upper_arm_jnt.tz";
connectAttr "FK_upper_arm_jnt_parentConstraint1.crx" "FK_upper_arm_jnt.rx";
connectAttr "FK_upper_arm_jnt_parentConstraint1.cry" "FK_upper_arm_jnt.ry";
connectAttr "FK_upper_arm_jnt_parentConstraint1.crz" "FK_upper_arm_jnt.rz";
connectAttr "FK_lower_arm_jnt.s" "FK_upper_arm_jnt.is";
connectAttr "FK_head_jnt_parentConstraint1.ctx" "FK_head_jnt.tx";
connectAttr "FK_head_jnt_parentConstraint1.cty" "FK_head_jnt.ty";
connectAttr "FK_head_jnt_parentConstraint1.ctz" "FK_head_jnt.tz";
connectAttr "FK_head_jnt_parentConstraint1.crx" "FK_head_jnt.rx";
connectAttr "FK_head_jnt_parentConstraint1.cry" "FK_head_jnt.ry";
connectAttr "FK_head_jnt_parentConstraint1.crz" "FK_head_jnt.rz";
connectAttr "FK_upper_arm_jnt.s" "FK_head_jnt.is";
connectAttr "FK_head_jnt.s" "FK_head_rotate_jnt.is";
connectAttr "FK_head_jnt.ro" "FK_head_jnt_parentConstraint1.cro";
connectAttr "FK_head_jnt.pim" "FK_head_jnt_parentConstraint1.cpim";
connectAttr "FK_head_jnt.rp" "FK_head_jnt_parentConstraint1.crp";
connectAttr "FK_head_jnt.rpt" "FK_head_jnt_parentConstraint1.crt";
connectAttr "FK_head_jnt.jo" "FK_head_jnt_parentConstraint1.cjo";
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1|head_ctrl_grp|nurbsCircle1.t" "FK_head_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1|head_ctrl_grp|nurbsCircle1.rp" "FK_head_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1|head_ctrl_grp|nurbsCircle1.rpt" "FK_head_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1|head_ctrl_grp|nurbsCircle1.r" "FK_head_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1|head_ctrl_grp|nurbsCircle1.ro" "FK_head_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1|head_ctrl_grp|nurbsCircle1.s" "FK_head_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1|head_ctrl_grp|nurbsCircle1.pm" "FK_head_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_head_jnt_parentConstraint1.w0" "FK_head_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "FK_upper_arm_jnt.ro" "FK_upper_arm_jnt_parentConstraint1.cro";
connectAttr "FK_upper_arm_jnt.pim" "FK_upper_arm_jnt_parentConstraint1.cpim";
connectAttr "FK_upper_arm_jnt.rp" "FK_upper_arm_jnt_parentConstraint1.crp";
connectAttr "FK_upper_arm_jnt.rpt" "FK_upper_arm_jnt_parentConstraint1.crt";
connectAttr "FK_upper_arm_jnt.jo" "FK_upper_arm_jnt_parentConstraint1.cjo";
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1.t" "FK_upper_arm_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1.rp" "FK_upper_arm_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1.rpt" "FK_upper_arm_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1.r" "FK_upper_arm_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1.ro" "FK_upper_arm_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1.s" "FK_upper_arm_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1|upper_arm_ctrl_grp|nurbsCircle1.pm" "FK_upper_arm_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_upper_arm_jnt_parentConstraint1.w0" "FK_upper_arm_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "FK_lower_arm_jnt.ro" "FK_lower_arm_jnt_parentConstraint1.cro";
connectAttr "FK_lower_arm_jnt.pim" "FK_lower_arm_jnt_parentConstraint1.cpim";
connectAttr "FK_lower_arm_jnt.rp" "FK_lower_arm_jnt_parentConstraint1.crp";
connectAttr "FK_lower_arm_jnt.rpt" "FK_lower_arm_jnt_parentConstraint1.crt";
connectAttr "FK_lower_arm_jnt.jo" "FK_lower_arm_jnt_parentConstraint1.cjo";
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1.t" "FK_lower_arm_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1.rp" "FK_lower_arm_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1.rpt" "FK_lower_arm_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1.r" "FK_lower_arm_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1.ro" "FK_lower_arm_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1.s" "FK_lower_arm_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|FK_Controls|lower_arm_ctrl_grp|nurbsCircle1.pm" "FK_lower_arm_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_lower_arm_jnt_parentConstraint1.w0" "FK_lower_arm_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Root_Jnt.ro" "Root_Jnt_parentConstraint1.cro";
connectAttr "Root_Jnt.pim" "Root_Jnt_parentConstraint1.cpim";
connectAttr "Root_Jnt.rp" "Root_Jnt_parentConstraint1.crp";
connectAttr "Root_Jnt.rpt" "Root_Jnt_parentConstraint1.crt";
connectAttr "Root_Jnt.jo" "Root_Jnt_parentConstraint1.cjo";
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1.t" "Root_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1.rp" "Root_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1.rpt" "Root_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1.r" "Root_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1.ro" "Root_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1.s" "Root_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1.pm" "Root_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Root_Jnt_parentConstraint1.w0" "Root_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "reverse2.ox" "IK_controls.v";
connectAttr "nurbsCircle1_parentConstraint1.ctx" "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.tx"
		;
connectAttr "nurbsCircle1_parentConstraint1.cty" "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.ty"
		;
connectAttr "nurbsCircle1_parentConstraint1.ctz" "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.tz"
		;
connectAttr "nurbsCircle1_parentConstraint1.crz" "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.rz"
		;
connectAttr "nurbsCircle1_parentConstraint1.crx" "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.rx"
		;
connectAttr "nurbsCircle1_parentConstraint1.cry" "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.ry"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.ro" "nurbsCircle1_parentConstraint1.cro"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.pim" "nurbsCircle1_parentConstraint1.cpim"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.rp" "nurbsCircle1_parentConstraint1.crp"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|head_rotate_ctrl_grp|nurbsCircle1.rpt" "nurbsCircle1_parentConstraint1.crt"
		;
connectAttr "ikHandle1.t" "nurbsCircle1_parentConstraint1.tg[0].tt";
connectAttr "ikHandle1.rp" "nurbsCircle1_parentConstraint1.tg[0].trp";
connectAttr "ikHandle1.rpt" "nurbsCircle1_parentConstraint1.tg[0].trt";
connectAttr "ikHandle1.r" "nurbsCircle1_parentConstraint1.tg[0].tr";
connectAttr "ikHandle1.ro" "nurbsCircle1_parentConstraint1.tg[0].tro";
connectAttr "ikHandle1.s" "nurbsCircle1_parentConstraint1.tg[0].ts";
connectAttr "ikHandle1.pm" "nurbsCircle1_parentConstraint1.tg[0].tpm";
connectAttr "nurbsCircle1_parentConstraint1.w0" "nurbsCircle1_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_lower_arm_jnt.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "IK_lower_arm_jnt.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "IK_lower_arm_jnt.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|pv_ctrl_grp|offset|nurbsCircle1.t" "ikHandle1_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|pv_ctrl_grp|offset|nurbsCircle1.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|pv_ctrl_grp|offset|nurbsCircle1.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "|Skeleton|Controls|transform_ctrl_grp|nurbsCircle1|cog_ctrl_grp|nurbsCircle1|Base_ctrl_grp|nurbsCircle1|IK_controls|ik_main_ctrl_grp|pv_ctrl_grp|offset|nurbsCircle1.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Switch.IK_FK_Switch" "FK_Controls.v";
connectAttr "skinCluster4GroupId.id" "head_geoShapeDeformed.iog.og[4].gid";
connectAttr "skinCluster4Set.mwc" "head_geoShapeDeformed.iog.og[4].gco";
connectAttr "groupId11.id" "head_geoShapeDeformed.iog.og[5].gid";
connectAttr "tweakSet4.mwc" "head_geoShapeDeformed.iog.og[5].gco";
connectAttr "skinCluster4.og[0]" "head_geoShapeDeformed.i";
connectAttr "tweak4.vl[0].vt[0]" "head_geoShapeDeformed.twl";
connectAttr "groupId8.id" "upper_arm_geoShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "upper_arm_geoShapeDeformed.iog.og[1].gco";
connectAttr "groupId9.id" "upper_arm_geoShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "upper_arm_geoShapeDeformed.iog.og[2].gco"
		;
connectAttr "skinCluster3GroupId.id" "upper_arm_geoShapeDeformed.iog.og[3].gid";
connectAttr "skinCluster3Set.mwc" "upper_arm_geoShapeDeformed.iog.og[3].gco";
connectAttr "skinCluster3.og[0]" "upper_arm_geoShapeDeformed.i";
connectAttr "tweak3.vl[0].vt[0]" "upper_arm_geoShapeDeformed.twl";
connectAttr "groupId5.id" "lower_arm_geoShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "lower_arm_geoShapeDeformed.iog.og[1].gco";
connectAttr "groupId6.id" "lower_arm_geoShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "lower_arm_geoShapeDeformed.iog.og[2].gco"
		;
connectAttr "skinCluster2GroupId.id" "lower_arm_geoShapeDeformed.iog.og[3].gid";
connectAttr "skinCluster2Set.mwc" "lower_arm_geoShapeDeformed.iog.og[3].gco";
connectAttr "skinCluster2.og[0]" "lower_arm_geoShapeDeformed.i";
connectAttr "tweak2.vl[0].vt[0]" "lower_arm_geoShapeDeformed.twl";
connectAttr "groupId2.id" "base_geoShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "base_geoShapeDeformed.iog.og[1].gco";
connectAttr "groupId3.id" "base_geoShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "base_geoShapeDeformed.iog.og[2].gco";
connectAttr "skinCluster1GroupId.id" "base_geoShapeDeformed.iog.og[3].gid";
connectAttr "skinCluster1Set.mwc" "base_geoShapeDeformed.iog.og[3].gco";
connectAttr "skinCluster1.og[0]" "base_geoShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "base_geoShapeDeformed.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lamp_modelRNfosterParent1.msg" "lamp_modelRN.fp";
connectAttr "Switch.IK_FK_Switch" "reverse1.ix";
connectAttr "Switch.IK_FK_Switch" "reverse2.ix";
connectAttr "RK_head_jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "RK_upper_arm_jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "FK_Controls.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "RK_lower_arm_jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "reverse2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "RK_head_rotate_jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Switch.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "IK_controls.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "groupId8.msg" "tweakSet3.gn" -na;
connectAttr "upper_arm_geoShapeDeformed.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "groupParts8.og" "tweak3.ip[0].ig";
connectAttr "groupId8.id" "tweak3.ip[0].gi";
connectAttr "tweak3.og[0]" "groupParts9.ig";
connectAttr "groupId9.id" "groupParts9.gi";
connectAttr "groupId5.msg" "tweakSet2.gn" -na;
connectAttr "lower_arm_geoShapeDeformed.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "groupParts5.og" "tweak2.ip[0].ig";
connectAttr "groupId5.id" "tweak2.ip[0].gi";
connectAttr "tweak2.og[0]" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "base_geoShapeDeformed.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "tweak1.og[0]" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Root_Jnt.wm" "skinCluster1.ma[0]";
connectAttr "Base_Jnt.wm" "skinCluster1.ma[1]";
connectAttr "IK_lower_arm_jnt.wm" "skinCluster1.ma[2]";
connectAttr "RK_lower_arm_jnt.wm" "skinCluster1.ma[6]";
connectAttr "FK_lower_arm_jnt.wm" "skinCluster1.ma[10]";
connectAttr "Root_Jnt.liw" "skinCluster1.lw[0]";
connectAttr "Base_Jnt.liw" "skinCluster1.lw[1]";
connectAttr "IK_lower_arm_jnt.liw" "skinCluster1.lw[2]";
connectAttr "RK_lower_arm_jnt.liw" "skinCluster1.lw[6]";
connectAttr "FK_lower_arm_jnt.liw" "skinCluster1.lw[10]";
connectAttr "Root_Jnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "Base_Jnt.obcc" "skinCluster1.ifcl[1]";
connectAttr "IK_lower_arm_jnt.obcc" "skinCluster1.ifcl[2]";
connectAttr "RK_lower_arm_jnt.obcc" "skinCluster1.ifcl[6]";
connectAttr "FK_lower_arm_jnt.obcc" "skinCluster1.ifcl[10]";
connectAttr "Base_Jnt.msg" "skinCluster1.ptt";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "base_geoShapeDeformed.iog.og[3]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "groupParts3.og" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "Skeleton.msg" "bindPose1.m[0]";
connectAttr "Joints.msg" "bindPose1.m[1]";
connectAttr "Root_Jnt.msg" "bindPose1.m[2]";
connectAttr "Base_Jnt.msg" "bindPose1.m[3]";
connectAttr "IK_Jnts.msg" "bindPose1.m[4]";
connectAttr "IK_lower_arm_jnt.msg" "bindPose1.m[5]";
connectAttr "IK_upper_arm_jnt.msg" "bindPose1.m[6]";
connectAttr "IK_head_jnt.msg" "bindPose1.m[7]";
connectAttr "RK_Jnts.msg" "bindPose1.m[9]";
connectAttr "RK_lower_arm_jnt.msg" "bindPose1.m[10]";
connectAttr "RK_upper_arm_jnt.msg" "bindPose1.m[11]";
connectAttr "RK_head_jnt.msg" "bindPose1.m[12]";
connectAttr "FK_Jnts1.msg" "bindPose1.m[14]";
connectAttr "FK_lower_arm_jnt.msg" "bindPose1.m[15]";
connectAttr "FK_upper_arm_jnt.msg" "bindPose1.m[16]";
connectAttr "FK_head_jnt.msg" "bindPose1.m[17]";
connectAttr "FK_head_rotate_jnt.msg" "bindPose1.m[24]";
connectAttr "IK_head_rotate_jnt.msg" "bindPose1.m[25]";
connectAttr "RK_head_rotate_jnt.msg" "bindPose1.m[26]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[3]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[3]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[24]";
connectAttr "bindPose1.m[7]" "bindPose1.p[25]";
connectAttr "bindPose1.m[12]" "bindPose1.p[26]";
connectAttr "Root_Jnt.bps" "bindPose1.wm[2]";
connectAttr "Base_Jnt.bps" "bindPose1.wm[3]";
connectAttr "IK_lower_arm_jnt.bps" "bindPose1.wm[5]";
connectAttr "IK_upper_arm_jnt.bps" "bindPose1.wm[6]";
connectAttr "IK_head_jnt.bps" "bindPose1.wm[7]";
connectAttr "RK_lower_arm_jnt.bps" "bindPose1.wm[10]";
connectAttr "RK_upper_arm_jnt.bps" "bindPose1.wm[11]";
connectAttr "RK_head_jnt.bps" "bindPose1.wm[12]";
connectAttr "FK_lower_arm_jnt.bps" "bindPose1.wm[15]";
connectAttr "FK_upper_arm_jnt.bps" "bindPose1.wm[16]";
connectAttr "FK_head_jnt.bps" "bindPose1.wm[17]";
connectAttr "FK_head_rotate_jnt.bps" "bindPose1.wm[24]";
connectAttr "IK_head_rotate_jnt.bps" "bindPose1.wm[25]";
connectAttr "RK_head_rotate_jnt.bps" "bindPose1.wm[26]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "Root_Jnt.wm" "skinCluster2.ma[0]";
connectAttr "Base_Jnt.wm" "skinCluster2.ma[1]";
connectAttr "IK_lower_arm_jnt.wm" "skinCluster2.ma[2]";
connectAttr "IK_upper_arm_jnt.wm" "skinCluster2.ma[3]";
connectAttr "RK_lower_arm_jnt.wm" "skinCluster2.ma[6]";
connectAttr "RK_upper_arm_jnt.wm" "skinCluster2.ma[7]";
connectAttr "FK_lower_arm_jnt.wm" "skinCluster2.ma[10]";
connectAttr "FK_upper_arm_jnt.wm" "skinCluster2.ma[11]";
connectAttr "Root_Jnt.liw" "skinCluster2.lw[0]";
connectAttr "Base_Jnt.liw" "skinCluster2.lw[1]";
connectAttr "IK_lower_arm_jnt.liw" "skinCluster2.lw[2]";
connectAttr "IK_upper_arm_jnt.liw" "skinCluster2.lw[3]";
connectAttr "RK_lower_arm_jnt.liw" "skinCluster2.lw[6]";
connectAttr "RK_upper_arm_jnt.liw" "skinCluster2.lw[7]";
connectAttr "FK_lower_arm_jnt.liw" "skinCluster2.lw[10]";
connectAttr "FK_upper_arm_jnt.liw" "skinCluster2.lw[11]";
connectAttr "Root_Jnt.obcc" "skinCluster2.ifcl[0]";
connectAttr "Base_Jnt.obcc" "skinCluster2.ifcl[1]";
connectAttr "IK_lower_arm_jnt.obcc" "skinCluster2.ifcl[2]";
connectAttr "IK_upper_arm_jnt.obcc" "skinCluster2.ifcl[3]";
connectAttr "RK_lower_arm_jnt.obcc" "skinCluster2.ifcl[6]";
connectAttr "RK_upper_arm_jnt.obcc" "skinCluster2.ifcl[7]";
connectAttr "FK_lower_arm_jnt.obcc" "skinCluster2.ifcl[10]";
connectAttr "FK_upper_arm_jnt.obcc" "skinCluster2.ifcl[11]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "RK_lower_arm_jnt.msg" "skinCluster2.ptt";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "lower_arm_geoShapeDeformed.iog.og[3]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "groupParts6.og" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "IK_lower_arm_jnt.wm" "skinCluster3.ma[2]";
connectAttr "IK_upper_arm_jnt.wm" "skinCluster3.ma[3]";
connectAttr "RK_lower_arm_jnt.wm" "skinCluster3.ma[6]";
connectAttr "RK_upper_arm_jnt.wm" "skinCluster3.ma[7]";
connectAttr "FK_lower_arm_jnt.wm" "skinCluster3.ma[10]";
connectAttr "FK_upper_arm_jnt.wm" "skinCluster3.ma[11]";
connectAttr "FK_head_jnt.wm" "skinCluster3.ma[12]";
connectAttr "FK_head_rotate_jnt.wm" "skinCluster3.ma[13]";
connectAttr "IK_lower_arm_jnt.liw" "skinCluster3.lw[2]";
connectAttr "IK_upper_arm_jnt.liw" "skinCluster3.lw[3]";
connectAttr "RK_lower_arm_jnt.liw" "skinCluster3.lw[6]";
connectAttr "RK_upper_arm_jnt.liw" "skinCluster3.lw[7]";
connectAttr "FK_lower_arm_jnt.liw" "skinCluster3.lw[10]";
connectAttr "FK_upper_arm_jnt.liw" "skinCluster3.lw[11]";
connectAttr "FK_head_jnt.liw" "skinCluster3.lw[12]";
connectAttr "FK_head_rotate_jnt.liw" "skinCluster3.lw[13]";
connectAttr "IK_lower_arm_jnt.obcc" "skinCluster3.ifcl[2]";
connectAttr "IK_upper_arm_jnt.obcc" "skinCluster3.ifcl[3]";
connectAttr "RK_lower_arm_jnt.obcc" "skinCluster3.ifcl[6]";
connectAttr "RK_upper_arm_jnt.obcc" "skinCluster3.ifcl[7]";
connectAttr "FK_lower_arm_jnt.obcc" "skinCluster3.ifcl[10]";
connectAttr "FK_upper_arm_jnt.obcc" "skinCluster3.ifcl[11]";
connectAttr "FK_head_jnt.obcc" "skinCluster3.ifcl[12]";
connectAttr "FK_head_rotate_jnt.obcc" "skinCluster3.ifcl[13]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "RK_upper_arm_jnt.msg" "skinCluster3.ptt";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "upper_arm_geoShapeDeformed.iog.og[3]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "groupParts9.og" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "IK_upper_arm_jnt.wm" "skinCluster4.ma[3]";
connectAttr "IK_head_jnt.wm" "skinCluster4.ma[4]";
connectAttr "IK_head_rotate_jnt.wm" "skinCluster4.ma[5]";
connectAttr "RK_upper_arm_jnt.wm" "skinCluster4.ma[7]";
connectAttr "RK_head_jnt.wm" "skinCluster4.ma[8]";
connectAttr "RK_head_rotate_jnt.wm" "skinCluster4.ma[9]";
connectAttr "FK_upper_arm_jnt.wm" "skinCluster4.ma[11]";
connectAttr "FK_head_jnt.wm" "skinCluster4.ma[12]";
connectAttr "FK_head_rotate_jnt.wm" "skinCluster4.ma[13]";
connectAttr "IK_upper_arm_jnt.liw" "skinCluster4.lw[3]";
connectAttr "IK_head_jnt.liw" "skinCluster4.lw[4]";
connectAttr "IK_head_rotate_jnt.liw" "skinCluster4.lw[5]";
connectAttr "RK_upper_arm_jnt.liw" "skinCluster4.lw[7]";
connectAttr "RK_head_jnt.liw" "skinCluster4.lw[8]";
connectAttr "RK_head_rotate_jnt.liw" "skinCluster4.lw[9]";
connectAttr "FK_upper_arm_jnt.liw" "skinCluster4.lw[11]";
connectAttr "FK_head_jnt.liw" "skinCluster4.lw[12]";
connectAttr "FK_head_rotate_jnt.liw" "skinCluster4.lw[13]";
connectAttr "IK_upper_arm_jnt.obcc" "skinCluster4.ifcl[3]";
connectAttr "IK_head_jnt.obcc" "skinCluster4.ifcl[4]";
connectAttr "IK_head_rotate_jnt.obcc" "skinCluster4.ifcl[5]";
connectAttr "RK_upper_arm_jnt.obcc" "skinCluster4.ifcl[7]";
connectAttr "RK_head_jnt.obcc" "skinCluster4.ifcl[8]";
connectAttr "RK_head_rotate_jnt.obcc" "skinCluster4.ifcl[9]";
connectAttr "FK_upper_arm_jnt.obcc" "skinCluster4.ifcl[11]";
connectAttr "FK_head_jnt.obcc" "skinCluster4.ifcl[12]";
connectAttr "FK_head_rotate_jnt.obcc" "skinCluster4.ifcl[13]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "RK_head_rotate_jnt.msg" "skinCluster4.ptt";
connectAttr "groupParts11.og" "tweak4.ip[0].ig";
connectAttr "groupId11.id" "tweak4.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "head_geoShapeDeformed.iog.og[4]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId11.msg" "tweakSet4.gn" -na;
connectAttr "head_geoShapeDeformed.iog.og[5]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "groupId11.id" "groupParts11.gi";
connectAttr "reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "base_geoShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "lower_arm_geoShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na
		;
connectAttr "upper_arm_geoShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na
		;
connectAttr "head_geoShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of IKFKLampRig.ma
