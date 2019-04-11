//Maya ASCII 2018 scene
//Name: FKIKLamp.ma
//Last modified: Thu, Apr 11, 2019 03:44:25 PM
//Codeset: 1252
file -rdi 1 -ns "lamp_model" -rfn "lamp_modelRN" -op "v=0;" -typ "mayaAscii"
		 "E:/School/Spring2019/DGM2211/Rigging//scenes/Lamps/01-lamp_model.ma";
file -r -ns "lamp_model" -dr 1 -rfn "lamp_modelRN" -op "v=0;" -typ "mayaAscii" "E:/School/Spring2019/DGM2211/Rigging//scenes/Lamps/01-lamp_model.ma";
requires maya "2018";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "2.0.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "C625B066-4474-6C91-D9A4-688533D5CAC9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.97706266303303169 33.153749901243437 116.28529135725532 ;
	setAttr ".r" -type "double3" -8.7383527297459249 -361.40000000042841 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5A6DCEB8-46D0-0777-806D-86934277C262";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 114.10401981720032;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "1D52CB51-47FA-0589-9ED8-7A9A9A128960";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0762E200-4868-88EE-2452-129CDAAED112";
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
	rename -uid "AC72CDE6-49BF-31F3-37B4-B0928E99277E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.662131490458588 21.752767200421165 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5EE52241-4B30-A95A-AB30-B590524EF41E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 45.762100929784175;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "DA7E328A-49AE-878F-0DD3-6998AB306A05";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C0E145FA-4868-56AC-780F-AE8D26A16DC0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 174.98316534399791;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Lamp_Rig";
	rename -uid "EB05BDD3-498B-398D-8385-AB96DD315D23";
createNode transform -n "FK_IK_Switch" -p "Lamp_Rig";
	rename -uid "81B8F7E8-48DC-4C28-34BE-FBB31F02A505";
	addAttr -ci true -sn "FK" -ln "FK" -min 0 -max 1 -at "bool";
	setAttr ".rp" -type "double3" 0 31.065691692126059 0 ;
	setAttr ".sp" -type "double3" 0 31.065691692126059 0 ;
	setAttr -k on ".FK" yes;
createNode nurbsCurve -n "FK_IK_SwitchShape" -p "FK_IK_Switch";
	rename -uid "D52A937B-4E3E-7C6F-6E4E-048A1F84984D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.4595182824953818 31.065691692126059 -7.4595182824953827
		6.459615033326259e-16 31.065691692126059 -10.549351923875022
		-7.4595182824953818 31.065691692126059 -7.4595182824953801
		-10.549351923875026 31.065691692126059 -5.468802666096318e-16
		-7.4595182824953818 31.065691692126059 7.4595182824953818
		-1.0567357972467067e-15 31.065691692126059 10.549351923875028
		7.4595182824953818 31.065691692126059 7.4595182824953801
		10.549351923875026 31.065691692126059 1.4386113971165801e-15
		7.4595182824953818 31.065691692126059 -7.4595182824953827
		6.459615033326259e-16 31.065691692126059 -10.549351923875022
		-7.4595182824953818 31.065691692126059 -7.4595182824953801
		;
createNode transform -n "IK_Rig" -p "Lamp_Rig";
	rename -uid "5814A848-47F0-FA31-8B7A-F4888D855BE4";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode transform -n "IK_JOints" -p "IK_Rig";
	rename -uid "3FF05F90-4534-D2FC-D075-C0BC2ACD5552";
createNode joint -n "IK_base_jnt" -p "IK_JOints";
	rename -uid "C32E4255-42BA-9AA6-13F0-E091F30838E8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 3.4327468722885918e-32 3.4093154268932243e-32 90.392430709340886 ;
	setAttr ".radi" 0.56187455764443384;
createNode joint -n "IK_Lower_Arm_Jnt" -p "IK_base_jnt";
	rename -uid "68CB7F0E-4ED7-7F19-0186-D38F91D687A6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -49.791136064336392 ;
	setAttr ".radi" 1.2373402621558545;
createNode joint -n "IK_Upper_Arm_Jnt" -p "IK_Lower_Arm_Jnt";
	rename -uid "7B49BEB7-4AA7-BAAA-B85E-0989A2530D4D";
	setAttr ".t" -type "double3" 15.255245068346522 0 0 ;
	setAttr ".r" -type "double3" 1.400164869387064e-29 3.759395783157157e-27 -6.5294602949825408e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 99.7356124531982 ;
	setAttr ".radi" 1.3296143872313113;
createNode joint -n "IK_Head_Jnt" -p "IK_Upper_Arm_Jnt";
	rename -uid "B1EEC0DD-44C8-C7DB-F09D-E8AC0061EF6B";
	setAttr ".t" -type "double3" 17.039211486472009 -3.552713678800499e-15 3.6538556400666869e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 1.3296143872313113;
createNode joint -n "IK_Head_Rotate_Jnt" -p "IK_Head_Jnt";
	rename -uid "71F5C3DB-4633-67AE-FB93-2DA62C140C17";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 1.3296143872313113;
createNode parentConstraint -n "IK_Head_Rotate_Jnt_parentConstraint1" -p "IK_Head_Rotate_Jnt";
	rename -uid "4FCE4669-450B-C07E-CA9F-47816D9271EE";
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
	setAttr ".tg[0].tot" -type "double3" -2.8057400403014299e-08 8.1132947471473926e-07 
		-1.2538308187712284e-22 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 140.33690709820269 ;
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "IK_Upper_Arm_Jnt";
	rename -uid "04F0A65D-4D37-6911-B577-5D87AD0BD718";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "IK_Lower_Arm_Jnt_parentConstraint1" -p "IK_Lower_Arm_Jnt";
	rename -uid "5E3B9748-4CCD-5D6E-97AD-B0B5D772BD9D";
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
	setAttr ".tg[0].tot" -type "double3" 1.0887583959395819e-09 -3.9877400492827064e-08 
		-6.0503469678959535e-42 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 40.601294645004494 ;
	setAttr ".lr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" 2.1962414477923859 -1.1449174941446927e-16 -1.3068466670274093e-33 ;
	setAttr ".rsrr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IK_base_jnt_parentConstraint1" -p "IK_base_jnt";
	rename -uid "21953711-41C6-1334-7357-6FA82054EE83";
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
	setAttr ".tg[0].tot" -type "double3" -2.3248277608578505e-10 2.6363974225951381e-08 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 90.392430709340886 ;
	setAttr ".rst" -type "double3" -0.032441843533540592 0.68153634323561729 0 ;
	setAttr -k on ".w0";
createNode transform -n "Controls" -p "IK_Rig";
	rename -uid "39F3EC23-4D7A-D259-B5A9-ED9352A67A45";
createNode transform -n "Base_ctrl_grp" -p "Controls";
	rename -uid "DDF72868-40CB-D9AE-B353-E093A2E90A91";
	setAttr ".rp" -type "double3" -0.032441843301057816 0.68153631687164307 0 ;
	setAttr ".sp" -type "double3" -0.032441843301057816 0.68153631687164307 0 ;
createNode transform -n "nurbsCircle1" -p "Base_ctrl_grp";
	rename -uid "135F8F3C-44B8-C3E6-B8EF-4F9E101BC886";
	setAttr ".rp" -type "double3" -0.032441843301057816 0.68153631687164307 0 ;
	setAttr ".sp" -type "double3" -0.032441843301057816 0.68153631687164307 0 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Lamp_Rig|IK_Rig|Controls|Base_ctrl_grp|nurbsCircle1";
	rename -uid "CF30899E-4358-8D9C-22A5-20A2FB656020";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.9501729458410724 0.68153631687164307 -7.982614789142132
		-0.032441843301057122 0.68153631687164318 -11.289122098004841
		-8.0150566324431871 0.68153631687164307 -7.9826147891421284
		-11.321563941305904 0.68153631687164307 -5.8523008307014501e-16
		-8.0150566324431871 0.68153631687164307 7.9826147891421302
		-0.032441843301058947 0.68153631687164296 11.289122098004848
		7.9501729458410724 0.68153631687164307 7.9826147891421284
		11.256680254703788 0.68153631687164307 1.5394935945662177e-15
		7.9501729458410724 0.68153631687164307 -7.982614789142132
		-0.032441843301057122 0.68153631687164318 -11.289122098004841
		-8.0150566324431871 0.68153631687164307 -7.9826147891421284
		;
createNode transform -n "head_rotate_ctrl_grp" -p "Controls";
	rename -uid "CCF2FE08-4985-ADBE-3563-378B5A3F6163";
	setAttr ".rp" -type "double3" -1.5818086862564087 23.681360244750977 3.6538557654497688e-15 ;
	setAttr ".sp" -type "double3" -1.5818086862564087 23.681360244750977 3.6538557654497688e-15 ;
createNode transform -n "nurbsCircle1" -p "head_rotate_ctrl_grp";
	rename -uid "8F8070AD-41A6-2D32-0158-A686D3095AA1";
	setAttr ".rp" -type "double3" -1.5818086862564087 23.681360244750977 3.6538557654497688e-15 ;
	setAttr ".sp" -type "double3" -1.5818086862564087 23.681360244750977 3.6538557654497688e-15 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1";
	rename -uid "32198499-4594-172C-EED1-638666DF1FB8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.7786344233838847 23.681360244750977 -6.3604431096402916
		-1.5818086862564082 23.681360244750977 -8.9950249083558003
		-7.942251795896702 23.681360244750977 -6.3604431096402889
		-10.576833594612216 23.681360244750977 3.1875520857982356e-15
		-7.942251795896702 23.681360244750977 6.3604431096402969
		-1.5818086862564096 23.681360244750977 8.9950249083558109
		4.7786344233838847 23.681360244750977 6.360443109640296
		7.4132162220993987 23.681360244750977 4.8805041362583984e-15
		4.7786344233838847 23.681360244750977 -6.3604431096402916
		-1.5818086862564082 23.681360244750977 -8.9950249083558003
		-7.942251795896702 23.681360244750977 -6.3604431096402889
		;
createNode parentConstraint -n "nurbsCircle1_parentConstraint1" -p "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1";
	rename -uid "BDCB5520-4C48-0E7E-236A-19A8ECF02DA5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_handleW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.805739640621141e-08 -8.1132947471473926e-07 
		1.2538308266598375e-22 ;
	setAttr ".rst" -type "double3" 0 -3.5527136788005009e-15 7.8886090522101181e-31 ;
	setAttr -k on ".w0";
createNode transform -n "Ik_main_ctrl_grp" -p "Controls";
	rename -uid "A9E6F589-4075-0C1B-3E56-5782D67BDABD";
createNode transform -n "root_ctrl_grp" -p "Ik_main_ctrl_grp";
	rename -uid "D54508D4-4C11-CD9A-49BB-2CBD6080CEB4";
	setAttr ".rp" -type "double3" -0.047484241425991058 2.8777263164520264 -1.3068466609770623e-33 ;
	setAttr ".sp" -type "double3" -0.047484241425991058 2.8777263164520264 -1.3068466609770623e-33 ;
createNode transform -n "nurbsCircle1" -p "root_ctrl_grp";
	rename -uid "6B65D8DA-4750-ABE1-35FE-6C87F9587CAE";
	setAttr ".rp" -type "double3" -0.047484241425991058 2.8777263164520264 -1.3068466609770623e-33 ;
	setAttr ".sp" -type "double3" -0.047484241425991058 2.8777263164520264 -1.3068466609770623e-33 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Lamp_Rig|IK_Rig|Controls|Ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1";
	rename -uid "8D4FC6AD-4070-842D-C542-EEBBD48C881B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2811158037084986 2.8777263164520264 -5.3286000451344906
		-0.0474842414259906 2.8777263164520264 -7.5357784522910789
		-5.3760842865604808 2.8777263164520264 -5.3286000451344888
		-7.5832626937170735 2.8777263164520264 -3.9065608568552361e-16
		-5.3760842865604808 2.8777263164520264 5.3286000451344897
		-0.047484241425991815 2.8777263164520264 7.5357784522910833
		5.2811158037084986 2.8777263164520264 5.3286000451344888
		7.4882942108650914 2.8777263164520264 1.0276514468226515e-15
		5.2811158037084986 2.8777263164520264 -5.3286000451344906
		-0.0474842414259906 2.8777263164520264 -7.5357784522910789
		-5.3760842865604808 2.8777263164520264 -5.3286000451344888
		;
createNode transform -n "ik_handle_ctrl_grp" -p "Ik_main_ctrl_grp";
	rename -uid "5187CA3A-4E77-0697-209E-92B50194F40A";
	setAttr ".rp" -type "double3" -1.5818086862564087 23.681360244750977 3.6538557654497688e-15 ;
	setAttr ".sp" -type "double3" -1.5818086862564087 23.681360244750977 3.6538557654497688e-15 ;
createNode transform -n "nurbsCircle1" -p "ik_handle_ctrl_grp";
	rename -uid "759E7954-4735-49B6-7A07-9EBA5015B6DF";
	setAttr ".rp" -type "double3" -1.5818086862564087 23.681360244750977 3.6538557654497688e-15 ;
	setAttr ".sp" -type "double3" -1.5818086862564087 23.681360244750977 3.6538557654497688e-15 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "|Lamp_Rig|IK_Rig|Controls|Ik_main_ctrl_grp|ik_handle_ctrl_grp|nurbsCircle1";
	rename -uid "797329F0-4DA4-CD1F-4163-7FB510274C7D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.7428802682473652 23.681360244750977 -9.3246889545037721
		-1.5818086862564078 23.681360244750977 -13.187101584369826
		-10.906497640760183 23.681360244750977 -9.3246889545037686
		-14.768910270626243 23.681360244750977 2.9702340906484013e-15
		-10.906497640760183 23.681360244750977 9.3246889545037774
		-1.58180868625641 23.681360244750977 13.18710158436984
		7.7428802682473652 23.681360244750977 9.3246889545037757
		11.605292898113426 23.681360244750977 5.4521761524371062e-15
		7.7428802682473652 23.681360244750977 -9.3246889545037721
		-1.5818086862564078 23.681360244750977 -13.187101584369826
		-10.906497640760183 23.681360244750977 -9.3246889545037686
		;
createNode ikHandle -n "IK_handle" -p "|Lamp_Rig|IK_Rig|Controls|Ik_main_ctrl_grp|ik_handle_ctrl_grp|nurbsCircle1";
	rename -uid "AE1C5FB1-40AA-8BE5-16F3-119F3CD1C593";
	setAttr ".rp" -type "double3" -1.5818087143138051 23.681361056080448 3.6538556400666869e-15 ;
	setAttr ".sp" -type "double3" -1.5818087143138051 23.681361056080448 3.6538556400666869e-15 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "IK_handle_poleVectorConstraint1" -p "IK_handle";
	rename -uid "3528A434-4A24-870A-C557-FF9D399890F5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 19.766259906237629 14.943563575448506 0 ;
	setAttr -k on ".w0";
createNode transform -n "pv_ctrl_grp" -p "Ik_main_ctrl_grp";
	rename -uid "32D04B9C-4D4E-C8BB-AAF4-FDB2BB1E7E68";
	setAttr ".rp" -type "double3" 11.535161298505491 12.805708167011254 -1.3068466670274093e-33 ;
	setAttr ".sp" -type "double3" 11.535161298505491 12.805708167011254 -1.3068466670274093e-33 ;
createNode transform -n "offset_ctrl_grp" -p "pv_ctrl_grp";
	rename -uid "7CFC0037-4631-2964-4365-52948985CE8B";
	setAttr ".rp" -type "double3" 19.718775665900395 17.821289852023131 -1.3068466670274093e-33 ;
	setAttr ".sp" -type "double3" 19.718775665900395 17.821289852023131 -1.3068466670274093e-33 ;
createNode transform -n "nurbsCircle2" -p "offset_ctrl_grp";
	rename -uid "21567B05-4665-2CA0-912F-E29BF816C073";
	setAttr ".rp" -type "double3" 19.718775665900395 17.821289852023131 -1.3068466670274093e-33 ;
	setAttr ".sp" -type "double3" 19.718775665900395 17.821289852023131 -1.3068466670274093e-33 ;
createNode nurbsCurve -n "nurbsCircleShape2" -p "nurbsCircle2";
	rename -uid "73C84EF9-401B-8E31-A504-97BB15E913CA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.540528861921199 23.772978429175598 -9.3246889545037757
		19.718775665900395 17.821289852023131 -13.187101584369829
		26.897022469879595 11.869601274870666 -9.3246889545037721
		29.870349650149102 9.4043311471930853 -6.8362167480136743e-16
		26.897022469879595 11.869601274870666 9.3246889545037739
		19.718775665900395 17.821289852023131 13.187101584369836
		12.540528861921199 23.772978429175598 9.3246889545037721
		9.5672016816516905 26.238248556853176 1.7983203869873378e-15
		12.540528861921199 23.772978429175598 -9.3246889545037757
		19.718775665900395 17.821289852023131 -13.187101584369829
		26.897022469879595 11.869601274870666 -9.3246889545037721
		;
createNode transform -n "RK_Joints" -p "Lamp_Rig";
	rename -uid "77A42FE2-457D-8D0D-2128-B5B724AF8127";
	setAttr ".v" no;
createNode joint -n "RK_base_jnt" -p "RK_Joints";
	rename -uid "B2D29041-4814-F3C2-7E8A-56A6B5B1B794";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 90.392430709340886 ;
	setAttr ".radi" 0.56187455764443384;
createNode joint -n "RK_Lower_Arm_Jnt" -p "RK_base_jnt";
	rename -uid "80C7A01C-435C-ECA0-E4C6-95B298F33D7D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -49.791136064336392 ;
	setAttr ".radi" 1.2373402621558545;
createNode joint -n "RK_Upper_Arm_Jnt" -p "RK_Lower_Arm_Jnt";
	rename -uid "ACF34C1D-4E7B-A7A6-8E7D-05B3C34CF6B3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 99.7356124531982 ;
	setAttr ".radi" 1.3296143872313113;
createNode joint -n "RK_Head_Jnt" -p "RK_Upper_Arm_Jnt";
	rename -uid "4328375A-4BF0-19FE-953E-15A6DC8D66C5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 1.3296143872313113;
createNode joint -n "RK_Head_Rotate_Jnt" -p "RK_Head_Jnt";
	rename -uid "247DD027-4AF2-45DC-4DE6-9CA2695DDE14";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 1.3296143872313113;
createNode parentConstraint -n "RK_Head_Rotate_Jnt_parentConstraint1" -p "RK_Head_Rotate_Jnt";
	rename -uid "65E8D8F2-463C-991D-8233-1EBD8E5D7E91";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_Head_Rotate_JntW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IK_Head_Rotate_JntW1" -dv 1 -min 0 
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
	setAttr ".rst" -type "double3" -3.5527136788005009e-15 3.5527136788005009e-15 -7.8886090522101181e-31 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "RK_Head_Jnt_parentConstraint1" -p "RK_Head_Jnt";
	rename -uid "02DFE2F8-49F1-CC4A-4E99-D9A40FBDDFED";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_Head_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IK_Head_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 17.039211486472013 -7.1054273576010019e-15 3.6538556400666869e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "RK_Upper_Arm_Jnt_parentConstraint1" -p "RK_Upper_Arm_Jnt";
	rename -uid "ADEF1B95-4D9F-4C11-558D-6C86EAF44C31";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_Upper_Arm_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IK_Upper_Arm_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 15.255245068346522 -4.4408920985006262e-16 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "RK_Lower_Arm_Jnt_parentConstraint1" -p "RK_Lower_Arm_Jnt";
	rename -uid "24001C45-4537-22E2-A451-279C65E00413";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_Lower_Arm_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IK_Lower_Arm_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2.1962414477923855 -1.0408340855860843e-16 -1.3068466670274093e-33 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "RK_base_jnt_parentConstraint1" -p "RK_base_jnt";
	rename -uid "F31E38F6-4480-729D-29EC-EFAAE5035798";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_base_jntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IK_base_jntW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -0.032441843533540592 0.68153634323561729 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "FK_Rig" -p "Lamp_Rig";
	rename -uid "7C2DB68B-4C7B-C626-CE13-7DAB8F93D6A1";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode transform -n "FK_Controls" -p "FK_Rig";
	rename -uid "1135611A-4856-1C7B-0913-64B3574C7976";
createNode transform -n "FK_base_ctrl_grp" -p "FK_Controls";
	rename -uid "14C5F1A2-4F93-A013-6CB4-1BA1754AC621";
	setAttr ".rp" -type "double3" -0.032441843301057816 0.68153631687164307 0 ;
	setAttr ".sp" -type "double3" -0.032441843301057816 0.68153631687164307 0 ;
createNode transform -n "nurbsCircle3" -p "FK_base_ctrl_grp";
	rename -uid "F2D6F6E4-4996-7CD3-724D-ACA010125761";
	setAttr ".rp" -type "double3" -0.032441843301057816 0.68153631687164307 0 ;
	setAttr ".sp" -type "double3" -0.032441843301057816 0.68153631687164307 0 ;
createNode nurbsCurve -n "nurbsCircleShape3" -p "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3";
	rename -uid "EA5D5027-4B64-4337-0092-F2B29BD6F538";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.7848578424646755 0.68153631687164307 -6.8172996857657342
		-0.032441843301057226 0.68153631687164318 -9.6411176743717366
		-6.8497415290667911 0.68153631687164307 -6.8172996857657324
		-9.673559517672798 0.68153631687164307 -4.9979724273323162e-16
		-6.8497415290667911 0.68153631687164307 6.8172996857657333
		-0.03244184330105878 0.68153631687164296 9.6411176743717419
		6.7848578424646755 0.68153631687164307 6.8172996857657324
		9.6086758310706823 0.68153631687164307 1.3147558131891925e-15
		6.7848578424646755 0.68153631687164307 -6.8172996857657342
		-0.032441843301057226 0.68153631687164318 -9.6411176743717366
		-6.8497415290667911 0.68153631687164307 -6.8172996857657324
		;
createNode transform -n "FK_lower_arm_ctrl_grp" -p "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3";
	rename -uid "7D0071B3-40A2-762F-3407-7682FBEB90EC";
	setAttr ".rp" -type "double3" -0.047484241425991058 2.8777263164520264 -1.3068466609770623e-33 ;
	setAttr ".sp" -type "double3" -0.047484241425991058 2.8777263164520264 -1.3068466609770623e-33 ;
createNode transform -n "nurbsCircle3" -p "FK_lower_arm_ctrl_grp";
	rename -uid "1AC4F0D2-41F9-18E7-5918-DA94A0566B0C";
	setAttr ".rp" -type "double3" -0.047484241425991058 2.8777263164520264 -1.3068466609770623e-33 ;
	setAttr ".sp" -type "double3" -0.047484241425991058 2.8777263164520264 -1.3068466609770623e-33 ;
createNode nurbsCurve -n "nurbsCircleShape3" -p "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3";
	rename -uid "42F6F404-470B-466F-BA83-84B7361DEB2D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.7698154443397422 2.8777263164520264 -6.8172996857657342
		-0.047484241425990469 2.8777263164520264 -9.6411176743717366
		-6.8647839271917244 2.8777263164520264 -6.8172996857657324
		-9.6886019157977312 2.8777263164520264 -4.9979724273323162e-16
		-6.8647839271917244 2.8777263164520264 6.8172996857657333
		-0.047484241425992023 2.8777263164520264 9.6411176743717419
		6.7698154443397422 2.8777263164520264 6.8172996857657324
		9.5936334329457491 2.8777263164520264 1.3147558131891925e-15
		6.7698154443397422 2.8777263164520264 -6.8172996857657342
		-0.047484241425990469 2.8777263164520264 -9.6411176743717366
		-6.8647839271917244 2.8777263164520264 -6.8172996857657324
		;
createNode transform -n "FK_upper_arm_ctrl_grp" -p "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3";
	rename -uid "BABC2CBD-4884-DF53-9E75-4886F4F045CD";
	setAttr ".rp" -type "double3" 11.535161018371582 12.805707931518555 -1.3068466609770623e-33 ;
	setAttr ".sp" -type "double3" 11.535161018371582 12.805707931518555 -1.3068466609770623e-33 ;
createNode transform -n "nurbsCircle3" -p "FK_upper_arm_ctrl_grp";
	rename -uid "C34FD208-42C8-8D49-3BAD-16B0D4C6EA15";
	setAttr ".rp" -type "double3" 11.535161018371582 12.805707931518555 -1.3068466609770623e-33 ;
	setAttr ".sp" -type "double3" 11.535161018371582 12.805707931518555 -1.3068466609770623e-33 ;
createNode nurbsCurve -n "nurbsCircleShape3" -p "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3";
	rename -uid "1F7A7B23-4ABC-D8B1-5670-F79747635982";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.352460704137314 12.805707931518555 -6.8172996857657342
		11.535161018371582 12.805707931518555 -9.6411176743717366
		4.7178613326058487 12.805707931518555 -6.8172996857657324
		1.8940433439998419 12.805707931518555 -4.9979724273323162e-16
		4.7178613326058487 12.805707931518555 6.8172996857657333
		11.53516101837158 12.805707931518555 9.6411176743717419
		18.352460704137314 12.805707931518555 6.8172996857657324
		21.176278692743324 12.805707931518555 1.3147558131891925e-15
		18.352460704137314 12.805707931518555 -6.8172996857657342
		11.535161018371582 12.805707931518555 -9.6411176743717366
		4.7178613326058487 12.805707931518555 -6.8172996857657324
		;
createNode transform -n "FK_Head_ctrl_grp" -p "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3";
	rename -uid "DEE3A002-4330-2490-6E84-26BD6F8CF96C";
	setAttr ".rp" -type "double3" -1.5818086862564087 23.681360244750977 3.6538557654497688e-15 ;
	setAttr ".sp" -type "double3" -1.5818086862564087 23.681360244750977 3.6538557654497688e-15 ;
createNode transform -n "nurbsCircle3" -p "FK_Head_ctrl_grp";
	rename -uid "0D2BC7D2-45EB-E184-9FA0-9EA0003959E2";
	setAttr ".rp" -type "double3" -1.5818086862564087 23.681360244750977 3.6538557654497688e-15 ;
	setAttr ".sp" -type "double3" -1.5818086862564087 23.681360244750977 3.6538557654497688e-15 ;
createNode nurbsCurve -n "nurbsCircleShape3" -p "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3|FK_Head_ctrl_grp|nurbsCircle3";
	rename -uid "91BD6ABF-401B-D080-4ADB-1FA4A0C850A8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2354909995093246 23.681360244750977 -6.8172996857657306
		-1.581808686256408 23.681360244750977 -9.6411176743717331
		-8.3991083720221411 23.681360244750977 -6.8172996857657289
		-11.222926360628149 23.681360244750977 3.1540585227165373e-15
		-8.3991083720221411 23.681360244750977 6.8172996857657369
		-1.5818086862564096 23.681360244750977 9.6411176743717455
		5.2354909995093246 23.681360244750977 6.817299685765736
		8.0593089881153315 23.681360244750977 4.9686115786389615e-15
		5.2354909995093246 23.681360244750977 -6.8172996857657306
		-1.581808686256408 23.681360244750977 -9.6411176743717331
		-8.3991083720221411 23.681360244750977 -6.8172996857657289
		;
createNode transform -n "FK_JOints1" -p "FK_Rig";
	rename -uid "7B48D398-4DA4-6EAA-BD17-19974A274FC2";
	setAttr ".v" no;
createNode joint -n "FK_base_jnt" -p "FK_JOints1";
	rename -uid "26D23860-4468-FA7C-2DE8-4F94EDA9AF3B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 90.392430709340886 ;
	setAttr ".radi" 0.56187455764443384;
createNode joint -n "FK_Lower_Arm_Jnt" -p "FK_base_jnt";
	rename -uid "82A6D46F-4A08-147C-8798-908A66C44553";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -49.791136064336392 ;
	setAttr ".radi" 1.2373402621558545;
createNode joint -n "FK_Upper_Arm_Jnt" -p "FK_Lower_Arm_Jnt";
	rename -uid "9483A42D-4F63-293A-DD71-76A8771FDEBB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 99.7356124531982 ;
	setAttr ".radi" 1.3296143872313113;
createNode joint -n "FK_Head_Jnt" -p "FK_Upper_Arm_Jnt";
	rename -uid "4C1FB777-40C3-0322-FB5A-5CA91C2C0814";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 1.3296143872313113;
createNode joint -n "FK_Head_Rotate_Jnt" -p "FK_Head_Jnt";
	rename -uid "6395E89C-4069-E1A5-6979-F184BF57B389";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 1.3296143872313113;
createNode parentConstraint -n "FK_Head_Jnt_parentConstraint1" -p "FK_Head_Jnt";
	rename -uid "CE637213-4CE1-D111-D993-E3AD318A0EFE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.8057402179371138e-08 8.1132947116202558e-07 
		-1.2538307872167922e-22 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 140.33690709820269 ;
	setAttr ".rst" -type "double3" 17.03921148647202 -3.5527136788005009e-15 3.6538556400666901e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "FK_Upper_Arm_Jnt_parentConstraint1" -p "FK_Upper_Arm_Jnt";
	rename -uid "C1A4811F-488B-DFCF-F6FE-0698B0B985CF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.8013390895864632e-07 2.354926991188222e-07 
		-6.0503462836681877e-42 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 140.33690709820269 ;
	setAttr ".lr" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" 15.255245068346522 -8.8817841970012523e-16 6.8422776578360209e-49 ;
	setAttr ".rsrr" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "FK_Lower_Arm_Jnt_parentConstraint1" -p "FK_Lower_Arm_Jnt";
	rename -uid "99DD79B8-46B2-D5F5-D971-2196E35C4B84";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.088758389000688e-09 -3.9877400936916274e-08 
		-6.0503469678959535e-42 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 40.601294645004494 ;
	setAttr ".lr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" 2.1962414477923855 -1.0408340855860843e-16 -1.3068466670274093e-33 ;
	setAttr ".rsrr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "FK_base_jnt_parentConstraint1" -p "FK_base_jnt";
	rename -uid "B6E160AE-457D-63D4-AFB5-6299BFD67837";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.3248277608578505e-10 2.6363974225951381e-08 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 90.392430709340886 ;
	setAttr ".rst" -type "double3" -0.032441843533540592 0.68153634323561729 0 ;
	setAttr -k on ".w0";
createNode fosterParent -n "lamp_modelRNfosterParent1";
	rename -uid "083AD5A4-48C0-2744-0519-B6B8030CF8CD";
createNode parentConstraint -n "head_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "745E96C5-4F1B-225C-E666-D79B5A63920C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RK_Head_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "RK_Head_Rotate_JntW1" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 0.027487043585313842 0.0046745456224499549 
		-0.0088138316745730479 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -140.33690709820269 ;
	setAttr ".tg[1].tot" -type "double3" 0.027487043585317394 0.0046745456224464021 
		-0.0088138316745730479 ;
	setAttr ".tg[1].tor" -type "double3" 0 0 -140.33690709820269 ;
	setAttr ".rst" -type "double3" 9.3258734068513149e-15 -3.1974423109204508e-14 -1.7347234759768071e-18 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "upper_arm_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "09F61A8B-42E6-BD1E-8485-0BB1EC355DF7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RK_Upper_Arm_JntW0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 0.026991303522019394 0.012072394689866428 -0.0088138282299041731 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -140.33690709820269 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 -1.7763568394002505e-15 -2.6020852139652106e-17 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "lower_arm_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "EEEFE2AD-4B3A-5132-5C51-03A44EA16CAF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RK_Lower_Arm_JntW0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 7.5475508266452529 -0.027755970954773446 -0.0088138314227734441 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -40.601294645004479 ;
	setAttr ".rst" -type "double3" 7.1054273576010019e-15 2.6645352591003757e-15 -5.2041704279304213e-18 ;
	setAttr -k on ".w0";
createNode mesh -n "lower_arm_geoShapeDeformed" -p "lamp_modelRNfosterParent1";
	rename -uid "56965B08-4E40-DC6B-3852-BE83E249DF84";
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
createNode parentConstraint -n "base_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "669439A9-4056-81AE-59AC-F5AE045D64C9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RK_base_jntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.96998475707091403 -0.039086335711429707 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -90.392430709340886 ;
	setAttr -k on ".w0";
createNode mesh -n "base_geoShapeDeformed" -p "lamp_modelRNfosterParent1";
	rename -uid "2CD73A79-479D-AB4C-D613-0C99C1A9C803";
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
	rename -uid "98241440-498F-1B62-0389-049DE451B493";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5534681F-4045-5B11-5967-A49D04C68669";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C2CDFDEE-45F6-892B-E424-709D93C2D19C";
createNode displayLayerManager -n "layerManager";
	rename -uid "136C557B-4AF3-13BE-A573-4E959428309D";
createNode displayLayer -n "defaultLayer";
	rename -uid "611DA425-46FB-E830-4DD1-6ABB0380782F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0F67E854-4179-19F2-2E45-18B140066D71";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D5BF3338-4596-BAB6-AF31-5CBB2047D523";
	setAttr ".g" yes;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "57913079-4074-369E-CD2B-5DBBE96393DC";
createNode reference -n "lamp_modelRN";
	rename -uid "EDF23421-4638-21FD-67FB-CF89833F17A7";
	setAttr -s 40 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"lamp_modelRN"
		"lamp_modelRN" 0
		"lamp_modelRN" 70
		0 "|lamp_model:Geometry" "|Lamp_Rig" "-s -r "
		0 "|lamp_modelRNfosterParent1|base_geoShapeDeformed" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|base_geo_parentConstraint1" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geoShapeDeformed" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geo_parentConstraint1" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|upper_arm_geo_parentConstraint1" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|head_geo_parentConstraint1" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo" 
		"-s -r "
		2 "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"intermediateObject" " 1"
		2 "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"uvst[0].uvsp[0:246]" (" -s 247 -type \"float2\" 0.3958334 0.31474133999999998 0.375 0.68619841000000004 0.41666669000000001 0.31474137000000002 0.39583337000000002 0.68619841000000004 0.4375 0.3147414 0.41666669000000001 0.68619841000000004 0.45833337000000002 0.31474137000000002 0.4375 0.68619834999999996 0.47916671999999999 0.31474137000000002 0.45833337000000002 0.68619841000000004 0.5 0.3147414 0.47916671999999999 0.68619841000000004 0.52083336999999996 0.31474137000000002 0.49999997000000002 0.68619834999999996 0.54166674999999997 0.31474133999999998 0.52083336999999996 0.68619817000000005 0.5625 0.31474163999999999 0.54166669000000001 0.68619841000000004 0.58333336999999996 0.31474133999999998 0.5625 0.68619841000000004 0.60416663000000004 0.31474137000000002 0.58333343000000004 0.68619841000000004 0.62499994000000003 0.3147414 0.60416669000000001 0.68619841000000004 0.62178617999999997 0.085311263999999998 0.57031321999999995 0.033839020999999997 0.5 0.014998627 0.42968677999999999 0.033839020999999997 0.37821381999999998 0.08"
		+ "5311263999999998 0.35937342 0.15562506000000001 0.37821385000000002 0.22593833999999999 0.42968677999999999 0.27741110000000002 0.5 0.29625148000000001 0.57031321999999995 0.27741110000000002 0.62178617999999997 0.22593833999999999 0.5 0.15000000999999999 0.64062655000000002 0.15562506000000001 0.57031321999999995 0.96491110000000002 0.5 0.98375148000000001 0.42968677999999999 0.96491110000000002 0.37821381999999998 0.91343892000000004 0.35937342 0.84312505000000004 0.37821385000000002 0.77281177000000001 0.42968677999999999 0.72133899000000001 0.5 0.70249861000000002 0.57031321999999995 0.72133899000000001 0.62178617999999997 0.77281177000000001 0.64062655000000002 0.84312505000000004 0.62178617999999997 0.91343892000000004 0.5 0.83749998000000003 0.375 0.31474137000000002 0.62499994000000003 0.68619841000000004 0.62499994000000003 0.3125 0.63531649000000001 0.078125 0.375 0.3125 0.578125 0.020933539000000001 0.39583333999999998 0.3125 0.5 0 0.41666669000000001 0.3125 0.421875 0.020933539000000001 0.43750002"
		+ "999999998 0.3125 0.36468353999999997 0.078125 0.45833337000000002 0.3125 0.34375 0.15625 0.47916671999999999 0.3125 0.36468353999999997 0.234375 0.50000005999999997 0.3125 0.421875 0.29156646000000003 0.52083336999999996 0.3125 0.5 0.3125 0.54166669000000001 0.3125 0.578125 0.29156646000000003 0.5625 0.3125 0.63531649000000001 0.234375 0.58333330999999999 0.3125 0.65625 0.15625 0.60416663000000004 0.3125 0.375 0.68843984999999996 0.63531649000000001 0.921875 0.62499994000000003 0.68843984999999996 0.39583333999999998 0.68843984999999996 0.578125 0.97906649000000001 0.41666669000000001 0.68843984999999996 0.5 1 0.43750002999999998 0.68843984999999996 0.421875 0.97906649000000001 0.45833337000000002 0.68843984999999996 0.36468353999999997 0.921875 0.47916671999999999 0.68843984999999996 0.34375 0.84375 0.50000005999999997 0.68843984999999996 0.36468353999999997 0.765625 0.52083336999999996 0.68843984999999996 0.421875 0.70843350999999999 0.54166669000000001 0.68843984999999996 0.5 0.6875 0.5625 0.68843984999999"
		+ "996 0.578125 0.70843350999999999 0.58333330999999999 0.68843984999999996 0.63531649000000001 0.765625 0.65625 0.84375 0.60416663000000004 0.68843984999999996 0.62499994000000003 0.53807896 0.62469339000000002 0.68843979 0.60444193999999996 0.68347179999999996 0.60416663000000004 0.53807908000000004 0.37527530999999997 0.68347186000000004 0.375 0.53807896 0.39583333999999998 0.53807901999999996 0.39552683 0.68843984999999996 0.39610866 0.68347179999999996 0.41666669000000001 0.53807908000000004 0.41636013999999999 0.68843979 0.416942 0.68347179999999996 0.4375 0.53807896 0.43719348000000002 0.68843979 0.43777537 0.68347186000000004 0.45833337000000002 0.53807896 0.45802685999999998 0.68843984999999996 0.45860868999999999 0.68347179999999996 0.47916671999999999 0.53807908000000004 0.47886016999999997 0.68843979 0.47944203000000002 0.68347179999999996 0.50000005999999997 0.53807896 0.49969353999999999 0.68843979 0.50027537 0.68347186000000004 0.52083336999999996 0.53807901999999996 0.52052683 0.68843984999999996"
		+ " 0.52110869000000004 0.68347179999999996 0.54166669000000001 0.53807908000000004 0.54136013999999999 0.68843979 0.541942 0.68347179999999996 0.5625 0.53807896 0.56219344999999998 0.68843979 0.56277531000000003 0.68347186000000004 0.58333330999999999 0.53807896 0.58302683 0.68843984999999996 0.58360862999999996 0.68347179999999996 0.60386008000000002 0.68843979 0.62692481 0.91664248999999998 0.57328009999999996 0.97028725999999998 0.5 0.83749998000000003 0.5 0.98992252000000003 0.42671993000000003 0.97028725999999998 0.37307519 0.91664248999999998 0.35343986999999999 0.84336239000000002 0.37307519 0.77008235000000003 0.42671993000000003 0.71643758000000002 0.5 0.69680226000000001 0.57328009999999996 0.71643758000000002 0.62692481 0.77008235000000003 0.64656013000000001 0.84336239000000002 0.57746350999999996 0.022026401000000001 0.63417071000000003 0.078733593000000004 0.5 0.15000000999999999 0.5 0.0012701154 0.42253652000000003 0.022026401000000001 0.36582932000000001 0.078733593000000004 0.34507304 0.1561970"
		+ "6999999999 0.36582932000000001 0.23366055999999999 0.42253652000000003 0.29036774999999998 0.5 0.31112403 0.57746350999999996 0.29036774999999998 0.63417071000000003 0.23366055999999999 0.65492695999999995 0.15619706999999999 0.375 0.33505559000000001 0.39583333999999998 0.33505559000000001 0.41666669000000001 0.33505568000000002 0.43750002999999998 0.33505559000000001 0.45833337000000002 0.33505559000000001 0.47916671999999999 0.33505568000000002 0.50000005999999997 0.33505559000000001 0.52083336999999996 0.33505559000000001 0.54166669000000001 0.33505568000000002 0.5625 0.33505559000000001 0.58333330999999999 0.33505559000000001 0.60416663000000004 0.33505568000000002 0.62499994000000003 0.33505559000000001 0.63531649000000001 0.078125 0.65625 0.15625 0.62499994000000003 0.3125 0.60416663000000004 0.3125 0.375 0.3125 0.39583333999999998 0.3125 0.578125 0.020933539000000001 0.41666669000000001 0.3125 0.5 0 0.43750002999999998 0.3125 0.421875 0.020933539000000001 0.45833337000000002 0.3125 0.36468353999999997"
		+ " 0.078125 0.47916671999999999 0.3125 0.34375 0.15625 0.50000005999999997 0.3125 0.36468353999999997 0.234375 0.52083336999999996 0.3125 0.421875 0.29156646000000003 0.54166669000000001 0.3125 0.5 0.3125 0.5625 0.3125 0.578125 0.29156646000000003 0.58333330999999999 0.3125 0.63531649000000001 0.234375 0.50000005999999997 0.3125 0.52083336999999996 0.3125 0.52083336999999996 0.68555014999999997 0.50000005999999997 0.68555014999999997 0.54166669000000001 0.3125 0.5625 0.3125 0.56250005999999997 0.68555014999999997 0.54166669000000001 0.68555014999999997 0.58333330999999999 0.3125 0.60416663000000004 0.3125 0.60416663000000004 0.68555014999999997 0.58333330999999999 0.68555014999999997 0.5 0.15000000999999999 0.47916671999999999 0.3125 0.34479091000000001 0.83966649000000004 0.5 0.83221531000000004 0.47916671999999999 0.3125 0.47916674999999997 0.68555014999999997 0.65625 0.15625 0.60456699000000003 0.68434912000000003 0.5 0.83259039999999995 0.35045809 0.83845323000000005 0.36929848999999998 0.76828945000000004 "
		+ "0.42453944999999998 0.71283531 0.5 0.69282889000000003 0.57546054999999996 0.71283525000000003 0.63070154 0.76828945000000004 0.64954190999999994 0.83845329000000002 0.34375 0.84375 0.36468353999999997 0.765625 0.47916671999999999 0.68843984999999996 0.50000005999999997 0.68843984999999996 0.421875 0.70843350999999999 0.52083336999999996 0.68843984999999996 0.5 0.6875 0.54166669000000001 0.68843984999999996 0.578125 0.70843350999999999 0.5625 0.68843984999999996 0.63531649000000001 0.765625 0.58333330999999999 0.68843984999999996 0.65625 0.84375 0.60416663000000004 0.68843984999999996 0.5 0.83749998000000003 0.60416663000000004 0.68843984999999996"
		)
		2 "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"intermediateObject" " 1"
		2 "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape" 
		"uvst[0].uvsp[0:163]" (" -s 164 -type \"float2\" 0.36929848999999998 0.76828945000000004 0.42453944999999998 0.71283531 0.5 0.69282889000000003 0.57546054999999996 0.71283525000000003 0.5 0.83259039999999995 0.63070154 0.76828945000000004 0.64954190999999994 0.83845329000000002 0.60416663000000004 0.68555014999999997 0.34479091000000001 0.83966649000000004 0.35045809 0.83845323000000005 0.34375 0.84375 0.47916671999999999 0.68843984999999996 0.50000005999999997 0.68843984999999996 0.36468353999999997 0.765625 0.52083336999999996 0.68843984999999996 0.421875 0.70843350999999999 0.54166669000000001 0.68843984999999996 0.5 0.6875 0.5625 0.68843984999999996 0.578125 0.70843350999999999 0.58333330999999999 0.68843984999999996 0.63531649000000001 0.765625 0.60416663000000004 0.68843984999999996 0.65625 0.84375 0.60416663000000004 0.68843984999999996 0.5 0.83749998000000003 0.50000005999999997 0.3125 0.54166669000000001 0.3125 0.65560227999999998 0.16286854000000001 0.59822887000000002 0.30581859 0.52083336999999996 0.31717541999999999 0.500"
		+ "00005999999997 0.68555014999999997 0.5625 0.31717503000000002 0.54166669000000001 0.68555014999999997 0.60416663000000004 0.31717541999999999 0.58333330999999999 0.68555014999999997 0.47748258999999998 0.31910691000000002 0.5 0.83221531000000004 0.50000005999999997 0.31717503000000002 0.47916674999999997 0.68555014999999997 0.54166669000000001 0.31717503000000002 0.52083336999999996 0.68555014999999997 0.58333330999999999 0.31717541999999999 0.56250005999999997 0.68555014999999997 0.5 0.15855005 0.60456699000000003 0.68434912000000003 0.51997674000000005 0.30581852999999998 0.50191081000000004 0.15745223999999999 0.48167812999999998 0.30781533999999999 0.55993020999999998 0.30581852999999998 0.47916671999999999 0.31717503000000002 0.57990693999999998 0.30581852999999998 0.50000005999999997 0.3125 0.52083336999999996 0.3125 0.54166669000000001 0.3125 0.5625 0.3125 0.58333330999999999 0.3125 0.60416663000000004 0.3125 0.65625 0.15625 0.47916671999999999 0.3125 0.47916671999999999 0.3125 0.5 0.15000000999999999 "
		+ "0.375 0.31474137000000002 0.3958334 0.31474133999999998 0.39583337000000002 0.68619841000000004 0.375 0.68619841000000004 0.41666669000000001 0.31474137000000002 0.41666669000000001 0.68619841000000004 0.4375 0.3147414 0.4375 0.68619834999999996 0.45833337000000002 0.31474137000000002 0.45833337000000002 0.68619841000000004 0.47916671999999999 0.31474137000000002 0.47916671999999999 0.68619841000000004 0.5 0.3147414 0.49999997000000002 0.68619834999999996 0.52083336999999996 0.31474137000000002 0.52083336999999996 0.68619817000000005 0.54166674999999997 0.31474133999999998 0.54166669000000001 0.68619841000000004 0.5625 0.31474163999999999 0.5625 0.68619841000000004 0.58333336999999996 0.31474133999999998 0.58333343000000004 0.68619841000000004 0.60416663000000004 0.31474137000000002 0.60416669000000001 0.68619841000000004 0.62499994000000003 0.3147414 0.62499994000000003 0.68619841000000004 0.57031321999999995 0.033839020999999997 0.62178617999999997 0.085311263999999998 0.5 0.15000000999999999 0.5 0.01499862"
		+ "7 0.42968677999999999 0.033839020999999997 0.37821381999999998 0.085311263999999998 0.35937342 0.15562506000000001 0.37821385000000002 0.22593833999999999 0.42968677999999999 0.27741110000000002 0.5 0.29625148000000001 0.57031321999999995 0.27741110000000002 0.62178617999999997 0.22593833999999999 0.64062655000000002 0.15562506000000001 0.62178617999999997 0.91343892000000004 0.57031321999999995 0.96491110000000002 0.5 0.83749998000000003 0.5 0.98375148000000001 0.42968677999999999 0.96491110000000002 0.37821381999999998 0.91343892000000004 0.35937342 0.84312505000000004 0.37821385000000002 0.77281177000000001 0.42968677999999999 0.72133899000000001 0.5 0.70249861000000002 0.57031321999999995 0.72133899000000001 0.62178617999999997 0.77281177000000001 0.64062655000000002 0.84312505000000004 0.375 0.3125 0.39583333999999998 0.3125 0.63531649000000001 0.078125 0.578125 0.020933539000000001 0.41666669000000001 0.3125 0.5 0 0.43750002999999998 0.3125 0.421875 0.020933539000000001 0.45833337000000002 0.3125 0.3646"
		+ "8353999999997 0.078125 0.47916671999999999 0.3125 0.34375 0.15625 0.50000005999999997 0.3125 0.36468353999999997 0.234375 0.52083336999999996 0.3125 0.421875 0.29156646000000003 0.54166669000000001 0.3125 0.5 0.3125 0.5625 0.3125 0.578125 0.29156646000000003 0.58333330999999999 0.3125 0.63531649000000001 0.234375 0.60416663000000004 0.3125 0.65625 0.15625 0.62499994000000003 0.3125 0.62499994000000003 0.68843984999999996 0.60416663000000004 0.68843984999999996 0.63531649000000001 0.921875 0.65625 0.84375 0.578125 0.97906649000000001 0.375 0.68843984999999996 0.39583333999999998 0.68843984999999996 0.5 1 0.41666669000000001 0.68843984999999996 0.421875 0.97906649000000001 0.43750002999999998 0.68843984999999996 0.36468353999999997 0.921875 0.45833337000000002 0.68843984999999996 0.34375 0.84375 0.47916671999999999 0.68843984999999996 0.36468353999999997 0.765625 0.50000005999999997 0.68843984999999996 0.421875 0.70843350999999999 0.52083336999999996 0.68843984999999996 0.5 0.6875 0.54166669000000001 0.68843984"
		+ "999999996 0.578125 0.70843350999999999 0.5625 0.68843984999999996 0.63531649000000001 0.765625 0.58333330999999999 0.68843984999999996"
		)
		2 "lamp_model:geo_layer" "displayType" " 0"
		2 "lamp_model:groupParts1" "groupId" " 1"
		2 "lamp_model:groupParts4" "groupId" " 2"
		3 "lamp_model:groupId27.groupId" "lamp_model:groupParts4.groupId" ""
		3 "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShapeOrig.worldMesh" 
		"lamp_model:groupParts4.inputGeometry" ""
		3 "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.instObjGroups.objectGroups[0]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "lamp_model:groupId27.groupId" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "lamp_model:groupParts4.outputGeometry" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo|lamp_model:lower_arm_geoShape.inMesh" 
		""
		3 "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.instObjGroups.objectGroups[0]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "lamp_model:groupId24.groupId" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "lamp_model:groupParts1.outputGeometry" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape.inMesh" 
		""
		3 "lamp_model:groupId24.message" ":initialShadingGroup.groupNodes" "-na"
		3 "lamp_model:groupId27.message" ":initialShadingGroup.groupNodes" "-na"
		3 "lamp_model:groupId24.groupId" "lamp_model:groupParts1.groupId" ""
		3 "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShapeOrig.worldMesh" 
		"lamp_model:groupParts1.inputGeometry" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.translateY" 
		"lamp_modelRN.placeHolderList[1]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.translateX" 
		"lamp_modelRN.placeHolderList[2]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.translateZ" 
		"lamp_modelRN.placeHolderList[3]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[4]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[5]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[6]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[7]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.rotateX" 
		"lamp_modelRN.placeHolderList[8]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.rotateY" 
		"lamp_modelRN.placeHolderList[9]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[10]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[11]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[12]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[13]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[14]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.translateX" 
		"lamp_modelRN.placeHolderList[15]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.translateY" 
		"lamp_modelRN.placeHolderList[16]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.translateZ" 
		"lamp_modelRN.placeHolderList[17]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateX" 
		"lamp_modelRN.placeHolderList[18]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateY" 
		"lamp_modelRN.placeHolderList[19]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[20]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[21]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[22]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[23]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[24]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.translateX" 
		"lamp_modelRN.placeHolderList[25]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.translateY" 
		"lamp_modelRN.placeHolderList[26]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.translateZ" 
		"lamp_modelRN.placeHolderList[27]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateX" 
		"lamp_modelRN.placeHolderList[28]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateY" 
		"lamp_modelRN.placeHolderList[29]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[30]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[31]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[32]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[33]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[34]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.translateX" 
		"lamp_modelRN.placeHolderList[35]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.translateY" 
		"lamp_modelRN.placeHolderList[36]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.translateZ" 
		"lamp_modelRN.placeHolderList[37]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.rotateX" 
		"lamp_modelRN.placeHolderList[38]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.rotateY" 
		"lamp_modelRN.placeHolderList[39]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[40]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "EBCE3AEC-42B2-F41E-B15E-5483AC699C61";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 232\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 232\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 232\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 508\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 0\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 508\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 508\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D2EA70C1-4EA8-56F5-56FD-47965C5C612D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId7";
	rename -uid "366851EE-4734-2B08-8159-59851DA4192F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "8942A968-40CB-0FFC-576D-D88E49FD683C";
	setAttr ".ihi" 0;
createNode reverse -n "reverse1";
	rename -uid "49B08BEA-4780-4AFF-1320-BC9DAEFAAFDA";
createNode condition -n "condition1";
	rename -uid "8739395A-4B15-8138-D0E0-F396AC421B08";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "DC4266FC-4DD2-5005-4042-C8AA5DCEEB7B";
	setAttr ".version" -type "string" "2.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "DCDA553E-44F5-765B-BFF9-D8ABBC386AE5";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "38C35784-40BE-83A4-5414-2687524A08C1";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "81E81056-4251-4C61-9432-48804C62E644";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reverse -n "reverse2";
	rename -uid "59BF6855-46C0-584D-3B9E-4C9308FA3B78";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F5D4B194-40BC-0B5D-5E64-40A0A781337F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -322.61903479931897 ;
	setAttr ".tgi[0].vh" -type "double2" -8.3333330021964365 336.90474851737002 ;
	setAttr ".tgi[0].ni[0].x" -262.85714721679688;
	setAttr ".tgi[0].ni[0].y" 65.714286804199219;
	setAttr ".tgi[0].ni[0].nvs" 1923;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "A6B0CAAA-4571-DB9A-BB88-808A1857C680";
	setAttr ".pee" yes;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1336.107533520008 -890.67237236546919 ;
	setAttr ".tgi[0].vh" -type "double2" 10171.582194520583 148.21628363819531 ;
	setAttr -s 9 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -196.99153137207031;
	setAttr ".tgi[0].ni[0].y" 227.89689636230469;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -440.29666137695313;
	setAttr ".tgi[0].ni[1].y" 117.03714752197266;
	setAttr ".tgi[0].ni[1].nvs" 18305;
	setAttr ".tgi[0].ni[2].x" 717.05487060546875;
	setAttr ".tgi[0].ni[2].y" 218.20387268066406;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 34.538551330566406;
	setAttr ".tgi[0].ni[3].y" 226.7064208984375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -717.496826171875;
	setAttr ".tgi[0].ni[4].y" 296.48043823242188;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 248.73970031738281;
	setAttr ".tgi[0].ni[5].y" 225.63558959960938;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -124.85757446289063;
	setAttr ".tgi[0].ni[6].y" 103.94355010986328;
	setAttr ".tgi[0].ni[6].nvs" 18306;
	setAttr ".tgi[0].ni[7].x" 494.43585205078125;
	setAttr ".tgi[0].ni[7].y" 221.77529907226563;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 80.788482666015625;
	setAttr ".tgi[0].ni[8].y" 103.94355010986328;
	setAttr ".tgi[0].ni[8].nvs" 18306;
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
	setAttr -s 3 ".u";
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
connectAttr "base_geo_parentConstraint1.cty" "lamp_modelRN.phl[1]";
connectAttr "base_geo_parentConstraint1.ctx" "lamp_modelRN.phl[2]";
connectAttr "base_geo_parentConstraint1.ctz" "lamp_modelRN.phl[3]";
connectAttr "lamp_modelRN.phl[4]" "base_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[5]" "base_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[6]" "base_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[7]" "base_geo_parentConstraint1.crt";
connectAttr "base_geo_parentConstraint1.crx" "lamp_modelRN.phl[8]";
connectAttr "base_geo_parentConstraint1.cry" "lamp_modelRN.phl[9]";
connectAttr "base_geo_parentConstraint1.crz" "lamp_modelRN.phl[10]";
connectAttr "lamp_modelRN.phl[11]" "lower_arm_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[12]" "lower_arm_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[13]" "lower_arm_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[14]" "lower_arm_geo_parentConstraint1.crt";
connectAttr "lower_arm_geo_parentConstraint1.ctx" "lamp_modelRN.phl[15]";
connectAttr "lower_arm_geo_parentConstraint1.cty" "lamp_modelRN.phl[16]";
connectAttr "lower_arm_geo_parentConstraint1.ctz" "lamp_modelRN.phl[17]";
connectAttr "lower_arm_geo_parentConstraint1.crx" "lamp_modelRN.phl[18]";
connectAttr "lower_arm_geo_parentConstraint1.cry" "lamp_modelRN.phl[19]";
connectAttr "lower_arm_geo_parentConstraint1.crz" "lamp_modelRN.phl[20]";
connectAttr "lamp_modelRN.phl[21]" "upper_arm_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[22]" "upper_arm_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[23]" "upper_arm_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[24]" "upper_arm_geo_parentConstraint1.crt";
connectAttr "upper_arm_geo_parentConstraint1.ctx" "lamp_modelRN.phl[25]";
connectAttr "upper_arm_geo_parentConstraint1.cty" "lamp_modelRN.phl[26]";
connectAttr "upper_arm_geo_parentConstraint1.ctz" "lamp_modelRN.phl[27]";
connectAttr "upper_arm_geo_parentConstraint1.crx" "lamp_modelRN.phl[28]";
connectAttr "upper_arm_geo_parentConstraint1.cry" "lamp_modelRN.phl[29]";
connectAttr "upper_arm_geo_parentConstraint1.crz" "lamp_modelRN.phl[30]";
connectAttr "lamp_modelRN.phl[31]" "head_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[32]" "head_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[33]" "head_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[34]" "head_geo_parentConstraint1.crt";
connectAttr "head_geo_parentConstraint1.ctx" "lamp_modelRN.phl[35]";
connectAttr "head_geo_parentConstraint1.cty" "lamp_modelRN.phl[36]";
connectAttr "head_geo_parentConstraint1.ctz" "lamp_modelRN.phl[37]";
connectAttr "head_geo_parentConstraint1.crx" "lamp_modelRN.phl[38]";
connectAttr "head_geo_parentConstraint1.cry" "lamp_modelRN.phl[39]";
connectAttr "head_geo_parentConstraint1.crz" "lamp_modelRN.phl[40]";
connectAttr "reverse2.ox" "IK_Rig.v";
connectAttr "IK_base_jnt_parentConstraint1.ctx" "IK_base_jnt.tx";
connectAttr "IK_base_jnt_parentConstraint1.cty" "IK_base_jnt.ty";
connectAttr "IK_base_jnt_parentConstraint1.ctz" "IK_base_jnt.tz";
connectAttr "IK_base_jnt_parentConstraint1.crx" "IK_base_jnt.rx";
connectAttr "IK_base_jnt_parentConstraint1.cry" "IK_base_jnt.ry";
connectAttr "IK_base_jnt_parentConstraint1.crz" "IK_base_jnt.rz";
connectAttr "IK_base_jnt.s" "IK_Lower_Arm_Jnt.is";
connectAttr "IK_Lower_Arm_Jnt_parentConstraint1.ctx" "IK_Lower_Arm_Jnt.tx";
connectAttr "IK_Lower_Arm_Jnt_parentConstraint1.cty" "IK_Lower_Arm_Jnt.ty";
connectAttr "IK_Lower_Arm_Jnt_parentConstraint1.ctz" "IK_Lower_Arm_Jnt.tz";
connectAttr "IK_Lower_Arm_Jnt_parentConstraint1.crx" "IK_Lower_Arm_Jnt.rx";
connectAttr "IK_Lower_Arm_Jnt_parentConstraint1.cry" "IK_Lower_Arm_Jnt.ry";
connectAttr "IK_Lower_Arm_Jnt_parentConstraint1.crz" "IK_Lower_Arm_Jnt.rz";
connectAttr "IK_Lower_Arm_Jnt.s" "IK_Upper_Arm_Jnt.is";
connectAttr "IK_Upper_Arm_Jnt.s" "IK_Head_Jnt.is";
connectAttr "IK_Head_Jnt.s" "IK_Head_Rotate_Jnt.is";
connectAttr "IK_Head_Rotate_Jnt_parentConstraint1.ctx" "IK_Head_Rotate_Jnt.tx";
connectAttr "IK_Head_Rotate_Jnt_parentConstraint1.cty" "IK_Head_Rotate_Jnt.ty";
connectAttr "IK_Head_Rotate_Jnt_parentConstraint1.ctz" "IK_Head_Rotate_Jnt.tz";
connectAttr "IK_Head_Rotate_Jnt_parentConstraint1.crx" "IK_Head_Rotate_Jnt.rx";
connectAttr "IK_Head_Rotate_Jnt_parentConstraint1.cry" "IK_Head_Rotate_Jnt.ry";
connectAttr "IK_Head_Rotate_Jnt_parentConstraint1.crz" "IK_Head_Rotate_Jnt.rz";
connectAttr "IK_Head_Rotate_Jnt.ro" "IK_Head_Rotate_Jnt_parentConstraint1.cro";
connectAttr "IK_Head_Rotate_Jnt.pim" "IK_Head_Rotate_Jnt_parentConstraint1.cpim"
		;
connectAttr "IK_Head_Rotate_Jnt.rp" "IK_Head_Rotate_Jnt_parentConstraint1.crp";
connectAttr "IK_Head_Rotate_Jnt.rpt" "IK_Head_Rotate_Jnt_parentConstraint1.crt";
connectAttr "IK_Head_Rotate_Jnt.jo" "IK_Head_Rotate_Jnt_parentConstraint1.cjo";
connectAttr "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.t" "IK_Head_Rotate_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.rp" "IK_Head_Rotate_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.rpt" "IK_Head_Rotate_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.r" "IK_Head_Rotate_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.ro" "IK_Head_Rotate_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.s" "IK_Head_Rotate_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.pm" "IK_Head_Rotate_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_Head_Rotate_Jnt_parentConstraint1.w0" "IK_Head_Rotate_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_Head_Jnt.tx" "effector1.tx";
connectAttr "IK_Head_Jnt.ty" "effector1.ty";
connectAttr "IK_Head_Jnt.tz" "effector1.tz";
connectAttr "IK_Lower_Arm_Jnt.ro" "IK_Lower_Arm_Jnt_parentConstraint1.cro";
connectAttr "IK_Lower_Arm_Jnt.pim" "IK_Lower_Arm_Jnt_parentConstraint1.cpim";
connectAttr "IK_Lower_Arm_Jnt.rp" "IK_Lower_Arm_Jnt_parentConstraint1.crp";
connectAttr "IK_Lower_Arm_Jnt.rpt" "IK_Lower_Arm_Jnt_parentConstraint1.crt";
connectAttr "IK_Lower_Arm_Jnt.jo" "IK_Lower_Arm_Jnt_parentConstraint1.cjo";
connectAttr "|Lamp_Rig|IK_Rig|Controls|Ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.t" "IK_Lower_Arm_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|Ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.rp" "IK_Lower_Arm_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|Ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.rpt" "IK_Lower_Arm_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|Ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.r" "IK_Lower_Arm_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|Ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.ro" "IK_Lower_Arm_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|Ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.s" "IK_Lower_Arm_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|Ik_main_ctrl_grp|root_ctrl_grp|nurbsCircle1.pm" "IK_Lower_Arm_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_Lower_Arm_Jnt_parentConstraint1.w0" "IK_Lower_Arm_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_base_jnt.ro" "IK_base_jnt_parentConstraint1.cro";
connectAttr "IK_base_jnt.pim" "IK_base_jnt_parentConstraint1.cpim";
connectAttr "IK_base_jnt.rp" "IK_base_jnt_parentConstraint1.crp";
connectAttr "IK_base_jnt.rpt" "IK_base_jnt_parentConstraint1.crt";
connectAttr "IK_base_jnt.jo" "IK_base_jnt_parentConstraint1.cjo";
connectAttr "|Lamp_Rig|IK_Rig|Controls|Base_ctrl_grp|nurbsCircle1.t" "IK_base_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|Base_ctrl_grp|nurbsCircle1.rp" "IK_base_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|Base_ctrl_grp|nurbsCircle1.rpt" "IK_base_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|Base_ctrl_grp|nurbsCircle1.r" "IK_base_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|Base_ctrl_grp|nurbsCircle1.ro" "IK_base_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|Base_ctrl_grp|nurbsCircle1.s" "IK_base_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|Base_ctrl_grp|nurbsCircle1.pm" "IK_base_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_base_jnt_parentConstraint1.w0" "IK_base_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "nurbsCircle1_parentConstraint1.ctx" "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.tx"
		;
connectAttr "nurbsCircle1_parentConstraint1.cty" "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.ty"
		;
connectAttr "nurbsCircle1_parentConstraint1.ctz" "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.tz"
		;
connectAttr "nurbsCircle1_parentConstraint1.crx" "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.rx"
		;
connectAttr "nurbsCircle1_parentConstraint1.cry" "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.ry"
		;
connectAttr "nurbsCircle1_parentConstraint1.crz" "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.rz"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.ro" "nurbsCircle1_parentConstraint1.cro"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.pim" "nurbsCircle1_parentConstraint1.cpim"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.rp" "nurbsCircle1_parentConstraint1.crp"
		;
connectAttr "|Lamp_Rig|IK_Rig|Controls|head_rotate_ctrl_grp|nurbsCircle1.rpt" "nurbsCircle1_parentConstraint1.crt"
		;
connectAttr "IK_handle.t" "nurbsCircle1_parentConstraint1.tg[0].tt";
connectAttr "IK_handle.rp" "nurbsCircle1_parentConstraint1.tg[0].trp";
connectAttr "IK_handle.rpt" "nurbsCircle1_parentConstraint1.tg[0].trt";
connectAttr "IK_handle.r" "nurbsCircle1_parentConstraint1.tg[0].tr";
connectAttr "IK_handle.ro" "nurbsCircle1_parentConstraint1.tg[0].tro";
connectAttr "IK_handle.s" "nurbsCircle1_parentConstraint1.tg[0].ts";
connectAttr "IK_handle.pm" "nurbsCircle1_parentConstraint1.tg[0].tpm";
connectAttr "nurbsCircle1_parentConstraint1.w0" "nurbsCircle1_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_Lower_Arm_Jnt.msg" "IK_handle.hsj";
connectAttr "effector1.hp" "IK_handle.hee";
connectAttr "ikRPsolver.msg" "IK_handle.hsv";
connectAttr "IK_handle_poleVectorConstraint1.ctx" "IK_handle.pvx";
connectAttr "IK_handle_poleVectorConstraint1.cty" "IK_handle.pvy";
connectAttr "IK_handle_poleVectorConstraint1.ctz" "IK_handle.pvz";
connectAttr "IK_handle.pim" "IK_handle_poleVectorConstraint1.cpim";
connectAttr "IK_Lower_Arm_Jnt.pm" "IK_handle_poleVectorConstraint1.ps";
connectAttr "IK_Lower_Arm_Jnt.t" "IK_handle_poleVectorConstraint1.crp";
connectAttr "nurbsCircle2.t" "IK_handle_poleVectorConstraint1.tg[0].tt";
connectAttr "nurbsCircle2.rp" "IK_handle_poleVectorConstraint1.tg[0].trp";
connectAttr "nurbsCircle2.rpt" "IK_handle_poleVectorConstraint1.tg[0].trt";
connectAttr "nurbsCircle2.pm" "IK_handle_poleVectorConstraint1.tg[0].tpm";
connectAttr "IK_handle_poleVectorConstraint1.w0" "IK_handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "RK_base_jnt_parentConstraint1.ctx" "RK_base_jnt.tx";
connectAttr "RK_base_jnt_parentConstraint1.cty" "RK_base_jnt.ty";
connectAttr "RK_base_jnt_parentConstraint1.ctz" "RK_base_jnt.tz";
connectAttr "RK_base_jnt_parentConstraint1.crx" "RK_base_jnt.rx";
connectAttr "RK_base_jnt_parentConstraint1.cry" "RK_base_jnt.ry";
connectAttr "RK_base_jnt_parentConstraint1.crz" "RK_base_jnt.rz";
connectAttr "RK_base_jnt.s" "RK_Lower_Arm_Jnt.is";
connectAttr "RK_Lower_Arm_Jnt_parentConstraint1.ctx" "RK_Lower_Arm_Jnt.tx";
connectAttr "RK_Lower_Arm_Jnt_parentConstraint1.cty" "RK_Lower_Arm_Jnt.ty";
connectAttr "RK_Lower_Arm_Jnt_parentConstraint1.ctz" "RK_Lower_Arm_Jnt.tz";
connectAttr "RK_Lower_Arm_Jnt_parentConstraint1.crx" "RK_Lower_Arm_Jnt.rx";
connectAttr "RK_Lower_Arm_Jnt_parentConstraint1.cry" "RK_Lower_Arm_Jnt.ry";
connectAttr "RK_Lower_Arm_Jnt_parentConstraint1.crz" "RK_Lower_Arm_Jnt.rz";
connectAttr "RK_Lower_Arm_Jnt.s" "RK_Upper_Arm_Jnt.is";
connectAttr "RK_Upper_Arm_Jnt_parentConstraint1.ctx" "RK_Upper_Arm_Jnt.tx";
connectAttr "RK_Upper_Arm_Jnt_parentConstraint1.cty" "RK_Upper_Arm_Jnt.ty";
connectAttr "RK_Upper_Arm_Jnt_parentConstraint1.ctz" "RK_Upper_Arm_Jnt.tz";
connectAttr "RK_Upper_Arm_Jnt_parentConstraint1.crx" "RK_Upper_Arm_Jnt.rx";
connectAttr "RK_Upper_Arm_Jnt_parentConstraint1.cry" "RK_Upper_Arm_Jnt.ry";
connectAttr "RK_Upper_Arm_Jnt_parentConstraint1.crz" "RK_Upper_Arm_Jnt.rz";
connectAttr "RK_Upper_Arm_Jnt.s" "RK_Head_Jnt.is";
connectAttr "RK_Head_Jnt_parentConstraint1.ctx" "RK_Head_Jnt.tx";
connectAttr "RK_Head_Jnt_parentConstraint1.cty" "RK_Head_Jnt.ty";
connectAttr "RK_Head_Jnt_parentConstraint1.ctz" "RK_Head_Jnt.tz";
connectAttr "RK_Head_Jnt_parentConstraint1.crx" "RK_Head_Jnt.rx";
connectAttr "RK_Head_Jnt_parentConstraint1.cry" "RK_Head_Jnt.ry";
connectAttr "RK_Head_Jnt_parentConstraint1.crz" "RK_Head_Jnt.rz";
connectAttr "RK_Head_Jnt.s" "RK_Head_Rotate_Jnt.is";
connectAttr "RK_Head_Rotate_Jnt_parentConstraint1.ctx" "RK_Head_Rotate_Jnt.tx";
connectAttr "RK_Head_Rotate_Jnt_parentConstraint1.cty" "RK_Head_Rotate_Jnt.ty";
connectAttr "RK_Head_Rotate_Jnt_parentConstraint1.ctz" "RK_Head_Rotate_Jnt.tz";
connectAttr "RK_Head_Rotate_Jnt_parentConstraint1.crx" "RK_Head_Rotate_Jnt.rx";
connectAttr "RK_Head_Rotate_Jnt_parentConstraint1.cry" "RK_Head_Rotate_Jnt.ry";
connectAttr "RK_Head_Rotate_Jnt_parentConstraint1.crz" "RK_Head_Rotate_Jnt.rz";
connectAttr "RK_Head_Rotate_Jnt.ro" "RK_Head_Rotate_Jnt_parentConstraint1.cro";
connectAttr "RK_Head_Rotate_Jnt.pim" "RK_Head_Rotate_Jnt_parentConstraint1.cpim"
		;
connectAttr "RK_Head_Rotate_Jnt.rp" "RK_Head_Rotate_Jnt_parentConstraint1.crp";
connectAttr "RK_Head_Rotate_Jnt.rpt" "RK_Head_Rotate_Jnt_parentConstraint1.crt";
connectAttr "RK_Head_Rotate_Jnt.jo" "RK_Head_Rotate_Jnt_parentConstraint1.cjo";
connectAttr "FK_Head_Rotate_Jnt.t" "RK_Head_Rotate_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "FK_Head_Rotate_Jnt.rp" "RK_Head_Rotate_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "FK_Head_Rotate_Jnt.rpt" "RK_Head_Rotate_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "FK_Head_Rotate_Jnt.r" "RK_Head_Rotate_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "FK_Head_Rotate_Jnt.ro" "RK_Head_Rotate_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "FK_Head_Rotate_Jnt.s" "RK_Head_Rotate_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "FK_Head_Rotate_Jnt.pm" "RK_Head_Rotate_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_Head_Rotate_Jnt.jo" "RK_Head_Rotate_Jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "FK_Head_Rotate_Jnt.ssc" "RK_Head_Rotate_Jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "FK_Head_Rotate_Jnt.is" "RK_Head_Rotate_Jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "RK_Head_Rotate_Jnt_parentConstraint1.w0" "RK_Head_Rotate_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_Head_Rotate_Jnt.t" "RK_Head_Rotate_Jnt_parentConstraint1.tg[1].tt"
		;
connectAttr "IK_Head_Rotate_Jnt.rp" "RK_Head_Rotate_Jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "IK_Head_Rotate_Jnt.rpt" "RK_Head_Rotate_Jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "IK_Head_Rotate_Jnt.r" "RK_Head_Rotate_Jnt_parentConstraint1.tg[1].tr"
		;
connectAttr "IK_Head_Rotate_Jnt.ro" "RK_Head_Rotate_Jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "IK_Head_Rotate_Jnt.s" "RK_Head_Rotate_Jnt_parentConstraint1.tg[1].ts"
		;
connectAttr "IK_Head_Rotate_Jnt.pm" "RK_Head_Rotate_Jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "IK_Head_Rotate_Jnt.jo" "RK_Head_Rotate_Jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "IK_Head_Rotate_Jnt.ssc" "RK_Head_Rotate_Jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "IK_Head_Rotate_Jnt.is" "RK_Head_Rotate_Jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "RK_Head_Rotate_Jnt_parentConstraint1.w1" "RK_Head_Rotate_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "FK_IK_Switch.FK" "RK_Head_Rotate_Jnt_parentConstraint1.w0";
connectAttr "reverse2.ox" "RK_Head_Rotate_Jnt_parentConstraint1.w1";
connectAttr "RK_Head_Jnt.ro" "RK_Head_Jnt_parentConstraint1.cro";
connectAttr "RK_Head_Jnt.pim" "RK_Head_Jnt_parentConstraint1.cpim";
connectAttr "RK_Head_Jnt.rp" "RK_Head_Jnt_parentConstraint1.crp";
connectAttr "RK_Head_Jnt.rpt" "RK_Head_Jnt_parentConstraint1.crt";
connectAttr "RK_Head_Jnt.jo" "RK_Head_Jnt_parentConstraint1.cjo";
connectAttr "FK_Head_Jnt.t" "RK_Head_Jnt_parentConstraint1.tg[0].tt";
connectAttr "FK_Head_Jnt.rp" "RK_Head_Jnt_parentConstraint1.tg[0].trp";
connectAttr "FK_Head_Jnt.rpt" "RK_Head_Jnt_parentConstraint1.tg[0].trt";
connectAttr "FK_Head_Jnt.r" "RK_Head_Jnt_parentConstraint1.tg[0].tr";
connectAttr "FK_Head_Jnt.ro" "RK_Head_Jnt_parentConstraint1.tg[0].tro";
connectAttr "FK_Head_Jnt.s" "RK_Head_Jnt_parentConstraint1.tg[0].ts";
connectAttr "FK_Head_Jnt.pm" "RK_Head_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "FK_Head_Jnt.jo" "RK_Head_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "FK_Head_Jnt.ssc" "RK_Head_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "FK_Head_Jnt.is" "RK_Head_Jnt_parentConstraint1.tg[0].tis";
connectAttr "RK_Head_Jnt_parentConstraint1.w0" "RK_Head_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_Head_Jnt.t" "RK_Head_Jnt_parentConstraint1.tg[1].tt";
connectAttr "IK_Head_Jnt.rp" "RK_Head_Jnt_parentConstraint1.tg[1].trp";
connectAttr "IK_Head_Jnt.rpt" "RK_Head_Jnt_parentConstraint1.tg[1].trt";
connectAttr "IK_Head_Jnt.r" "RK_Head_Jnt_parentConstraint1.tg[1].tr";
connectAttr "IK_Head_Jnt.ro" "RK_Head_Jnt_parentConstraint1.tg[1].tro";
connectAttr "IK_Head_Jnt.s" "RK_Head_Jnt_parentConstraint1.tg[1].ts";
connectAttr "IK_Head_Jnt.pm" "RK_Head_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "IK_Head_Jnt.jo" "RK_Head_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "IK_Head_Jnt.ssc" "RK_Head_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "IK_Head_Jnt.is" "RK_Head_Jnt_parentConstraint1.tg[1].tis";
connectAttr "RK_Head_Jnt_parentConstraint1.w1" "RK_Head_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "RK_Head_Rotate_Jnt_parentConstraint1.w0" "RK_Head_Jnt_parentConstraint1.w0"
		;
connectAttr "RK_Head_Rotate_Jnt_parentConstraint1.w1" "RK_Head_Jnt_parentConstraint1.w1"
		;
connectAttr "RK_Upper_Arm_Jnt.ro" "RK_Upper_Arm_Jnt_parentConstraint1.cro";
connectAttr "RK_Upper_Arm_Jnt.pim" "RK_Upper_Arm_Jnt_parentConstraint1.cpim";
connectAttr "RK_Upper_Arm_Jnt.rp" "RK_Upper_Arm_Jnt_parentConstraint1.crp";
connectAttr "RK_Upper_Arm_Jnt.rpt" "RK_Upper_Arm_Jnt_parentConstraint1.crt";
connectAttr "RK_Upper_Arm_Jnt.jo" "RK_Upper_Arm_Jnt_parentConstraint1.cjo";
connectAttr "FK_Upper_Arm_Jnt.t" "RK_Upper_Arm_Jnt_parentConstraint1.tg[0].tt";
connectAttr "FK_Upper_Arm_Jnt.rp" "RK_Upper_Arm_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "FK_Upper_Arm_Jnt.rpt" "RK_Upper_Arm_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "FK_Upper_Arm_Jnt.r" "RK_Upper_Arm_Jnt_parentConstraint1.tg[0].tr";
connectAttr "FK_Upper_Arm_Jnt.ro" "RK_Upper_Arm_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "FK_Upper_Arm_Jnt.s" "RK_Upper_Arm_Jnt_parentConstraint1.tg[0].ts";
connectAttr "FK_Upper_Arm_Jnt.pm" "RK_Upper_Arm_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_Upper_Arm_Jnt.jo" "RK_Upper_Arm_Jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "FK_Upper_Arm_Jnt.ssc" "RK_Upper_Arm_Jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "FK_Upper_Arm_Jnt.is" "RK_Upper_Arm_Jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "RK_Upper_Arm_Jnt_parentConstraint1.w0" "RK_Upper_Arm_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_Upper_Arm_Jnt.t" "RK_Upper_Arm_Jnt_parentConstraint1.tg[1].tt";
connectAttr "IK_Upper_Arm_Jnt.rp" "RK_Upper_Arm_Jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "IK_Upper_Arm_Jnt.rpt" "RK_Upper_Arm_Jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "IK_Upper_Arm_Jnt.r" "RK_Upper_Arm_Jnt_parentConstraint1.tg[1].tr";
connectAttr "IK_Upper_Arm_Jnt.ro" "RK_Upper_Arm_Jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "IK_Upper_Arm_Jnt.s" "RK_Upper_Arm_Jnt_parentConstraint1.tg[1].ts";
connectAttr "IK_Upper_Arm_Jnt.pm" "RK_Upper_Arm_Jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "IK_Upper_Arm_Jnt.jo" "RK_Upper_Arm_Jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "IK_Upper_Arm_Jnt.ssc" "RK_Upper_Arm_Jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "IK_Upper_Arm_Jnt.is" "RK_Upper_Arm_Jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "RK_Upper_Arm_Jnt_parentConstraint1.w1" "RK_Upper_Arm_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "RK_Head_Jnt_parentConstraint1.w0" "RK_Upper_Arm_Jnt_parentConstraint1.w0"
		;
connectAttr "RK_Head_Jnt_parentConstraint1.w1" "RK_Upper_Arm_Jnt_parentConstraint1.w1"
		;
connectAttr "RK_Lower_Arm_Jnt.ro" "RK_Lower_Arm_Jnt_parentConstraint1.cro";
connectAttr "RK_Lower_Arm_Jnt.pim" "RK_Lower_Arm_Jnt_parentConstraint1.cpim";
connectAttr "RK_Lower_Arm_Jnt.rp" "RK_Lower_Arm_Jnt_parentConstraint1.crp";
connectAttr "RK_Lower_Arm_Jnt.rpt" "RK_Lower_Arm_Jnt_parentConstraint1.crt";
connectAttr "RK_Lower_Arm_Jnt.jo" "RK_Lower_Arm_Jnt_parentConstraint1.cjo";
connectAttr "FK_Lower_Arm_Jnt.t" "RK_Lower_Arm_Jnt_parentConstraint1.tg[0].tt";
connectAttr "FK_Lower_Arm_Jnt.rp" "RK_Lower_Arm_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "FK_Lower_Arm_Jnt.rpt" "RK_Lower_Arm_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "FK_Lower_Arm_Jnt.r" "RK_Lower_Arm_Jnt_parentConstraint1.tg[0].tr";
connectAttr "FK_Lower_Arm_Jnt.ro" "RK_Lower_Arm_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "FK_Lower_Arm_Jnt.s" "RK_Lower_Arm_Jnt_parentConstraint1.tg[0].ts";
connectAttr "FK_Lower_Arm_Jnt.pm" "RK_Lower_Arm_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_Lower_Arm_Jnt.jo" "RK_Lower_Arm_Jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "FK_Lower_Arm_Jnt.ssc" "RK_Lower_Arm_Jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "FK_Lower_Arm_Jnt.is" "RK_Lower_Arm_Jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "RK_Lower_Arm_Jnt_parentConstraint1.w0" "RK_Lower_Arm_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_Lower_Arm_Jnt.t" "RK_Lower_Arm_Jnt_parentConstraint1.tg[1].tt";
connectAttr "IK_Lower_Arm_Jnt.rp" "RK_Lower_Arm_Jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "IK_Lower_Arm_Jnt.rpt" "RK_Lower_Arm_Jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "IK_Lower_Arm_Jnt.r" "RK_Lower_Arm_Jnt_parentConstraint1.tg[1].tr";
connectAttr "IK_Lower_Arm_Jnt.ro" "RK_Lower_Arm_Jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "IK_Lower_Arm_Jnt.s" "RK_Lower_Arm_Jnt_parentConstraint1.tg[1].ts";
connectAttr "IK_Lower_Arm_Jnt.pm" "RK_Lower_Arm_Jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "IK_Lower_Arm_Jnt.jo" "RK_Lower_Arm_Jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "IK_Lower_Arm_Jnt.ssc" "RK_Lower_Arm_Jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "IK_Lower_Arm_Jnt.is" "RK_Lower_Arm_Jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "RK_Lower_Arm_Jnt_parentConstraint1.w1" "RK_Lower_Arm_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "RK_Upper_Arm_Jnt_parentConstraint1.w0" "RK_Lower_Arm_Jnt_parentConstraint1.w0"
		;
connectAttr "RK_Upper_Arm_Jnt_parentConstraint1.w1" "RK_Lower_Arm_Jnt_parentConstraint1.w1"
		;
connectAttr "RK_base_jnt.ro" "RK_base_jnt_parentConstraint1.cro";
connectAttr "RK_base_jnt.pim" "RK_base_jnt_parentConstraint1.cpim";
connectAttr "RK_base_jnt.rp" "RK_base_jnt_parentConstraint1.crp";
connectAttr "RK_base_jnt.rpt" "RK_base_jnt_parentConstraint1.crt";
connectAttr "RK_base_jnt.jo" "RK_base_jnt_parentConstraint1.cjo";
connectAttr "FK_base_jnt.t" "RK_base_jnt_parentConstraint1.tg[0].tt";
connectAttr "FK_base_jnt.rp" "RK_base_jnt_parentConstraint1.tg[0].trp";
connectAttr "FK_base_jnt.rpt" "RK_base_jnt_parentConstraint1.tg[0].trt";
connectAttr "FK_base_jnt.r" "RK_base_jnt_parentConstraint1.tg[0].tr";
connectAttr "FK_base_jnt.ro" "RK_base_jnt_parentConstraint1.tg[0].tro";
connectAttr "FK_base_jnt.s" "RK_base_jnt_parentConstraint1.tg[0].ts";
connectAttr "FK_base_jnt.pm" "RK_base_jnt_parentConstraint1.tg[0].tpm";
connectAttr "FK_base_jnt.jo" "RK_base_jnt_parentConstraint1.tg[0].tjo";
connectAttr "FK_base_jnt.ssc" "RK_base_jnt_parentConstraint1.tg[0].tsc";
connectAttr "FK_base_jnt.is" "RK_base_jnt_parentConstraint1.tg[0].tis";
connectAttr "RK_base_jnt_parentConstraint1.w0" "RK_base_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_base_jnt.t" "RK_base_jnt_parentConstraint1.tg[1].tt";
connectAttr "IK_base_jnt.rp" "RK_base_jnt_parentConstraint1.tg[1].trp";
connectAttr "IK_base_jnt.rpt" "RK_base_jnt_parentConstraint1.tg[1].trt";
connectAttr "IK_base_jnt.r" "RK_base_jnt_parentConstraint1.tg[1].tr";
connectAttr "IK_base_jnt.ro" "RK_base_jnt_parentConstraint1.tg[1].tro";
connectAttr "IK_base_jnt.s" "RK_base_jnt_parentConstraint1.tg[1].ts";
connectAttr "IK_base_jnt.pm" "RK_base_jnt_parentConstraint1.tg[1].tpm";
connectAttr "IK_base_jnt.jo" "RK_base_jnt_parentConstraint1.tg[1].tjo";
connectAttr "IK_base_jnt.ssc" "RK_base_jnt_parentConstraint1.tg[1].tsc";
connectAttr "IK_base_jnt.is" "RK_base_jnt_parentConstraint1.tg[1].tis";
connectAttr "RK_base_jnt_parentConstraint1.w1" "RK_base_jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "RK_Lower_Arm_Jnt_parentConstraint1.w0" "RK_base_jnt_parentConstraint1.w0"
		;
connectAttr "RK_Lower_Arm_Jnt_parentConstraint1.w1" "RK_base_jnt_parentConstraint1.w1"
		;
connectAttr "FK_IK_Switch.FK" "FK_Rig.v";
connectAttr "FK_base_jnt_parentConstraint1.ctx" "FK_base_jnt.tx";
connectAttr "FK_base_jnt_parentConstraint1.cty" "FK_base_jnt.ty";
connectAttr "FK_base_jnt_parentConstraint1.ctz" "FK_base_jnt.tz";
connectAttr "FK_base_jnt_parentConstraint1.crx" "FK_base_jnt.rx";
connectAttr "FK_base_jnt_parentConstraint1.cry" "FK_base_jnt.ry";
connectAttr "FK_base_jnt_parentConstraint1.crz" "FK_base_jnt.rz";
connectAttr "FK_Lower_Arm_Jnt_parentConstraint1.ctx" "FK_Lower_Arm_Jnt.tx";
connectAttr "FK_Lower_Arm_Jnt_parentConstraint1.cty" "FK_Lower_Arm_Jnt.ty";
connectAttr "FK_Lower_Arm_Jnt_parentConstraint1.ctz" "FK_Lower_Arm_Jnt.tz";
connectAttr "FK_Lower_Arm_Jnt_parentConstraint1.crx" "FK_Lower_Arm_Jnt.rx";
connectAttr "FK_Lower_Arm_Jnt_parentConstraint1.cry" "FK_Lower_Arm_Jnt.ry";
connectAttr "FK_Lower_Arm_Jnt_parentConstraint1.crz" "FK_Lower_Arm_Jnt.rz";
connectAttr "FK_base_jnt.s" "FK_Lower_Arm_Jnt.is";
connectAttr "FK_Upper_Arm_Jnt_parentConstraint1.ctx" "FK_Upper_Arm_Jnt.tx";
connectAttr "FK_Upper_Arm_Jnt_parentConstraint1.cty" "FK_Upper_Arm_Jnt.ty";
connectAttr "FK_Upper_Arm_Jnt_parentConstraint1.ctz" "FK_Upper_Arm_Jnt.tz";
connectAttr "FK_Upper_Arm_Jnt_parentConstraint1.crx" "FK_Upper_Arm_Jnt.rx";
connectAttr "FK_Upper_Arm_Jnt_parentConstraint1.cry" "FK_Upper_Arm_Jnt.ry";
connectAttr "FK_Upper_Arm_Jnt_parentConstraint1.crz" "FK_Upper_Arm_Jnt.rz";
connectAttr "FK_Lower_Arm_Jnt.s" "FK_Upper_Arm_Jnt.is";
connectAttr "FK_Head_Jnt_parentConstraint1.ctx" "FK_Head_Jnt.tx";
connectAttr "FK_Head_Jnt_parentConstraint1.cty" "FK_Head_Jnt.ty";
connectAttr "FK_Head_Jnt_parentConstraint1.ctz" "FK_Head_Jnt.tz";
connectAttr "FK_Head_Jnt_parentConstraint1.crx" "FK_Head_Jnt.rx";
connectAttr "FK_Head_Jnt_parentConstraint1.cry" "FK_Head_Jnt.ry";
connectAttr "FK_Head_Jnt_parentConstraint1.crz" "FK_Head_Jnt.rz";
connectAttr "FK_Upper_Arm_Jnt.s" "FK_Head_Jnt.is";
connectAttr "FK_Head_Jnt.s" "FK_Head_Rotate_Jnt.is";
connectAttr "FK_Head_Jnt.ro" "FK_Head_Jnt_parentConstraint1.cro";
connectAttr "FK_Head_Jnt.pim" "FK_Head_Jnt_parentConstraint1.cpim";
connectAttr "FK_Head_Jnt.rp" "FK_Head_Jnt_parentConstraint1.crp";
connectAttr "FK_Head_Jnt.rpt" "FK_Head_Jnt_parentConstraint1.crt";
connectAttr "FK_Head_Jnt.jo" "FK_Head_Jnt_parentConstraint1.cjo";
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3|FK_Head_ctrl_grp|nurbsCircle3.t" "FK_Head_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3|FK_Head_ctrl_grp|nurbsCircle3.rp" "FK_Head_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3|FK_Head_ctrl_grp|nurbsCircle3.rpt" "FK_Head_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3|FK_Head_ctrl_grp|nurbsCircle3.r" "FK_Head_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3|FK_Head_ctrl_grp|nurbsCircle3.ro" "FK_Head_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3|FK_Head_ctrl_grp|nurbsCircle3.s" "FK_Head_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3|FK_Head_ctrl_grp|nurbsCircle3.pm" "FK_Head_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_Head_Jnt_parentConstraint1.w0" "FK_Head_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "FK_Upper_Arm_Jnt.ro" "FK_Upper_Arm_Jnt_parentConstraint1.cro";
connectAttr "FK_Upper_Arm_Jnt.pim" "FK_Upper_Arm_Jnt_parentConstraint1.cpim";
connectAttr "FK_Upper_Arm_Jnt.rp" "FK_Upper_Arm_Jnt_parentConstraint1.crp";
connectAttr "FK_Upper_Arm_Jnt.rpt" "FK_Upper_Arm_Jnt_parentConstraint1.crt";
connectAttr "FK_Upper_Arm_Jnt.jo" "FK_Upper_Arm_Jnt_parentConstraint1.cjo";
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3.t" "FK_Upper_Arm_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3.rp" "FK_Upper_Arm_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3.rpt" "FK_Upper_Arm_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3.r" "FK_Upper_Arm_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3.ro" "FK_Upper_Arm_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3.s" "FK_Upper_Arm_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3|FK_upper_arm_ctrl_grp|nurbsCircle3.pm" "FK_Upper_Arm_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_Upper_Arm_Jnt_parentConstraint1.w0" "FK_Upper_Arm_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "FK_Lower_Arm_Jnt.ro" "FK_Lower_Arm_Jnt_parentConstraint1.cro";
connectAttr "FK_Lower_Arm_Jnt.pim" "FK_Lower_Arm_Jnt_parentConstraint1.cpim";
connectAttr "FK_Lower_Arm_Jnt.rp" "FK_Lower_Arm_Jnt_parentConstraint1.crp";
connectAttr "FK_Lower_Arm_Jnt.rpt" "FK_Lower_Arm_Jnt_parentConstraint1.crt";
connectAttr "FK_Lower_Arm_Jnt.jo" "FK_Lower_Arm_Jnt_parentConstraint1.cjo";
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3.t" "FK_Lower_Arm_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3.rp" "FK_Lower_Arm_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3.rpt" "FK_Lower_Arm_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3.r" "FK_Lower_Arm_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3.ro" "FK_Lower_Arm_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3.s" "FK_Lower_Arm_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3|FK_lower_arm_ctrl_grp|nurbsCircle3.pm" "FK_Lower_Arm_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_Lower_Arm_Jnt_parentConstraint1.w0" "FK_Lower_Arm_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "FK_base_jnt.ro" "FK_base_jnt_parentConstraint1.cro";
connectAttr "FK_base_jnt.pim" "FK_base_jnt_parentConstraint1.cpim";
connectAttr "FK_base_jnt.rp" "FK_base_jnt_parentConstraint1.crp";
connectAttr "FK_base_jnt.rpt" "FK_base_jnt_parentConstraint1.crt";
connectAttr "FK_base_jnt.jo" "FK_base_jnt_parentConstraint1.cjo";
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3.t" "FK_base_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3.rp" "FK_base_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3.rpt" "FK_base_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3.r" "FK_base_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3.ro" "FK_base_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3.s" "FK_base_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Lamp_Rig|FK_Rig|FK_Controls|FK_base_ctrl_grp|nurbsCircle3.pm" "FK_base_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_base_jnt_parentConstraint1.w0" "FK_base_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "RK_Head_Jnt.t" "head_geo_parentConstraint1.tg[0].tt";
connectAttr "RK_Head_Jnt.rp" "head_geo_parentConstraint1.tg[0].trp";
connectAttr "RK_Head_Jnt.rpt" "head_geo_parentConstraint1.tg[0].trt";
connectAttr "RK_Head_Jnt.r" "head_geo_parentConstraint1.tg[0].tr";
connectAttr "RK_Head_Jnt.ro" "head_geo_parentConstraint1.tg[0].tro";
connectAttr "RK_Head_Jnt.s" "head_geo_parentConstraint1.tg[0].ts";
connectAttr "RK_Head_Jnt.pm" "head_geo_parentConstraint1.tg[0].tpm";
connectAttr "RK_Head_Jnt.jo" "head_geo_parentConstraint1.tg[0].tjo";
connectAttr "RK_Head_Jnt.ssc" "head_geo_parentConstraint1.tg[0].tsc";
connectAttr "RK_Head_Jnt.is" "head_geo_parentConstraint1.tg[0].tis";
connectAttr "head_geo_parentConstraint1.w0" "head_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "RK_Head_Rotate_Jnt.t" "head_geo_parentConstraint1.tg[1].tt";
connectAttr "RK_Head_Rotate_Jnt.rp" "head_geo_parentConstraint1.tg[1].trp";
connectAttr "RK_Head_Rotate_Jnt.rpt" "head_geo_parentConstraint1.tg[1].trt";
connectAttr "RK_Head_Rotate_Jnt.r" "head_geo_parentConstraint1.tg[1].tr";
connectAttr "RK_Head_Rotate_Jnt.ro" "head_geo_parentConstraint1.tg[1].tro";
connectAttr "RK_Head_Rotate_Jnt.s" "head_geo_parentConstraint1.tg[1].ts";
connectAttr "RK_Head_Rotate_Jnt.pm" "head_geo_parentConstraint1.tg[1].tpm";
connectAttr "RK_Head_Rotate_Jnt.jo" "head_geo_parentConstraint1.tg[1].tjo";
connectAttr "RK_Head_Rotate_Jnt.ssc" "head_geo_parentConstraint1.tg[1].tsc";
connectAttr "RK_Head_Rotate_Jnt.is" "head_geo_parentConstraint1.tg[1].tis";
connectAttr "head_geo_parentConstraint1.w1" "head_geo_parentConstraint1.tg[1].tw"
		;
connectAttr "RK_Upper_Arm_Jnt.t" "upper_arm_geo_parentConstraint1.tg[0].tt";
connectAttr "RK_Upper_Arm_Jnt.rp" "upper_arm_geo_parentConstraint1.tg[0].trp";
connectAttr "RK_Upper_Arm_Jnt.rpt" "upper_arm_geo_parentConstraint1.tg[0].trt";
connectAttr "RK_Upper_Arm_Jnt.r" "upper_arm_geo_parentConstraint1.tg[0].tr";
connectAttr "RK_Upper_Arm_Jnt.ro" "upper_arm_geo_parentConstraint1.tg[0].tro";
connectAttr "RK_Upper_Arm_Jnt.s" "upper_arm_geo_parentConstraint1.tg[0].ts";
connectAttr "RK_Upper_Arm_Jnt.pm" "upper_arm_geo_parentConstraint1.tg[0].tpm";
connectAttr "RK_Upper_Arm_Jnt.jo" "upper_arm_geo_parentConstraint1.tg[0].tjo";
connectAttr "RK_Upper_Arm_Jnt.ssc" "upper_arm_geo_parentConstraint1.tg[0].tsc";
connectAttr "RK_Upper_Arm_Jnt.is" "upper_arm_geo_parentConstraint1.tg[0].tis";
connectAttr "upper_arm_geo_parentConstraint1.w0" "upper_arm_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "RK_Lower_Arm_Jnt.t" "lower_arm_geo_parentConstraint1.tg[0].tt";
connectAttr "RK_Lower_Arm_Jnt.rp" "lower_arm_geo_parentConstraint1.tg[0].trp";
connectAttr "RK_Lower_Arm_Jnt.rpt" "lower_arm_geo_parentConstraint1.tg[0].trt";
connectAttr "RK_Lower_Arm_Jnt.r" "lower_arm_geo_parentConstraint1.tg[0].tr";
connectAttr "RK_Lower_Arm_Jnt.ro" "lower_arm_geo_parentConstraint1.tg[0].tro";
connectAttr "RK_Lower_Arm_Jnt.s" "lower_arm_geo_parentConstraint1.tg[0].ts";
connectAttr "RK_Lower_Arm_Jnt.pm" "lower_arm_geo_parentConstraint1.tg[0].tpm";
connectAttr "RK_Lower_Arm_Jnt.jo" "lower_arm_geo_parentConstraint1.tg[0].tjo";
connectAttr "RK_Lower_Arm_Jnt.ssc" "lower_arm_geo_parentConstraint1.tg[0].tsc";
connectAttr "RK_Lower_Arm_Jnt.is" "lower_arm_geo_parentConstraint1.tg[0].tis";
connectAttr "lower_arm_geo_parentConstraint1.w0" "lower_arm_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "groupId8.id" "lower_arm_geoShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "lower_arm_geoShapeDeformed.iog.og[2].gco"
		;
connectAttr "RK_base_jnt.t" "base_geo_parentConstraint1.tg[0].tt";
connectAttr "RK_base_jnt.rp" "base_geo_parentConstraint1.tg[0].trp";
connectAttr "RK_base_jnt.rpt" "base_geo_parentConstraint1.tg[0].trt";
connectAttr "RK_base_jnt.r" "base_geo_parentConstraint1.tg[0].tr";
connectAttr "RK_base_jnt.ro" "base_geo_parentConstraint1.tg[0].tro";
connectAttr "RK_base_jnt.s" "base_geo_parentConstraint1.tg[0].ts";
connectAttr "RK_base_jnt.pm" "base_geo_parentConstraint1.tg[0].tpm";
connectAttr "RK_base_jnt.jo" "base_geo_parentConstraint1.tg[0].tjo";
connectAttr "RK_base_jnt.ssc" "base_geo_parentConstraint1.tg[0].tsc";
connectAttr "RK_base_jnt.is" "base_geo_parentConstraint1.tg[0].tis";
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
connectAttr "FK_IK_Switch.FK" "condition1.ft";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "FK_IK_Switch.FK" "reverse2.ix";
connectAttr "reverse2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "RK_Head_Rotate_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "reverse2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "RK_base_jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "RK_Head_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "FK_IK_Switch.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "RK_Upper_Arm_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "FK_Rig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "RK_Lower_Arm_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "IK_Rig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "base_geoShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "lower_arm_geoShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na
		;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "reverse2.o" ":internal_standInShader.ic";
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of FKIKLamp.ma
