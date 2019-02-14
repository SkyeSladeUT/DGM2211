//Maya ASCII 2018 scene
//Name: Lamp01_Rig.ma
//Last modified: Thu, Feb 14, 2019 03:18:28 PM
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
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "B1FA3E2D-49C2-1477-C333-ECB552D89E46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.2901681483098297 -2.3035992417403222 66.556658441463554 ;
	setAttr ".r" -type "double3" 11.661647275061378 362.2000000000096 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3A3A9519-4606-A2EE-4319-C79D1945B5E0";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 61.130113062173272;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 11.506677150726318 12.813642978668213 -0.0088138282299041748 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "8BD51A22-43B0-8BE0-E678-51B9422D81F5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.0059325946445060243 1000.1000012410582 0.026082420152704081 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E1EDEF19-4D9C-83B1-045A-478EEFFF82D5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.67727815695832;
	setAttr ".ow" 0.87063428423320555;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 0.42272308409958093 0.049812798730506071 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "1EFEAE64-407B-24ED-BA04-D5BC0B8B729A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5364760685360319 23.782548596732362 1000.1030893609781 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8E21EAD4-4EA4-5820-52E4-4AA8A0ACDA76";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1119034872312;
	setAttr ".ow" 21.4099647954143;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 2.8142037391662598 -0.0088141262531278297 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "E9F17E73-452E-9DA9-5687-77AB756B2586";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 2.3338883823971348 -0.45298551835186479 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "86853ED0-44EA-4368-70CD-16B98B05BAC6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 17.308815334501524;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Lamp_Rig";
	rename -uid "95FFC28A-4135-DC15-8A99-FBB45E65C2FC";
createNode transform -n "Joints1" -p "Lamp_Rig";
	rename -uid "CBA44F02-45BD-58B7-019A-BAA0268E9876";
createNode joint -n "base_joint" -p "Joints1";
	rename -uid "7A4E9B3D-406C-3B0F-3B88-0B9CBFAA6EB1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".radi" 0.5;
createNode joint -n "lower_arm_joint" -p "base_joint";
	rename -uid "94E727FE-4891-FE55-EE30-FE92EA741773";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -49.053585696434183 ;
	setAttr ".radi" 0.5;
createNode joint -n "upper_arm_joint" -p "lower_arm_joint";
	rename -uid "648F47A4-495D-CCBA-3236-33B0D256F934";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 99.288165339035487 ;
	setAttr ".radi" 0.5;
createNode joint -n "head_joint" -p "upper_arm_joint";
	rename -uid "D9C57C93-4511-552B-A051-D9ADB635E3DE";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "head_joint_parentConstraint2" -p "head_joint";
	rename -uid "84BD624C-42EB-F7EE-9AFD-7D80A979EE04";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_cntrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.3335564248181413e-08 2.2766850804600836e-07 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 140.23457964260129 ;
	setAttr ".rst" -type "double3" 16.577721427846974 3.5527136788005009e-15 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "head_joint_scaleConstraint2" -p "head_joint";
	rename -uid "EA11228E-4DDA-FD82-B5A8-D9813A8F855C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_cntrlW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "upper_arm_joint_parentConstraint2" -p "upper_arm_joint";
	rename -uid "F301E1BD-4EB1-2A48-78CE-59A6AC6A5DBB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_arm_cntrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 -5.3290705182007514e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 140.23457964260129 ;
	setAttr ".lr" -type "double3" 0 0 -1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" 15.258099383322193 -7.9936057773011271e-15 0 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "upper_arm_joint_scaleConstraint2" -p "upper_arm_joint";
	rename -uid "8F1259BD-4B04-AAB5-D744-0BB2C94D38C4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_arm_cntrlW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "lower_arm_joint_parentConstraint2" -p "lower_arm_joint";
	rename -uid "400CC3A6-469B-5411-B379-D0844172E226";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_arm_cntrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.6566128730773926e-10 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 40.94641430356581 ;
	setAttr ".lr" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" 1.6716481447219849 3.7118045186845469e-16 0 ;
	setAttr ".rsrr" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "lower_arm_joint_scaleConstraint2" -p "lower_arm_joint";
	rename -uid "016A933E-470F-B121-F853-71856105994C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_arm_cntrlW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "base_joint_parentConstraint2" -p "base_joint";
	rename -uid "79221AD9-45BF-4B56-F03D-A2864B88CE52";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_cntrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.862645149230957e-09 -2.2204460492503131e-16 
		9.3132213052626867e-10 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".rst" -type "double3" 0 1.1425555944442749 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "base_joint_scaleConstraint2" -p "base_joint";
	rename -uid "46712139-4157-BE76-EFEF-F09469C04212";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_cntrlW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "Controls1" -p "Lamp_Rig";
	rename -uid "323295D5-4D5F-ED55-D584-23858BA0A185";
createNode transform -n "base_cntrl_grp" -p "Controls1";
	rename -uid "696EED08-4B42-1012-493F-05B7338DF4CD";
	setAttr ".rp" -type "double3" 0 1.1425555944442749 0 ;
	setAttr ".sp" -type "double3" 0 1.1425555944442749 0 ;
createNode transform -n "base_cntrl" -p "base_cntrl_grp";
	rename -uid "4F5CDB9C-4F4A-3D9E-1CCD-B4B4215571BA";
	setAttr ".rp" -type "double3" 1.862645149230957e-09 1.1425555944442751 -9.3132213052626867e-10 ;
	setAttr ".sp" -type "double3" 1.862645149230957e-09 1.1425555944442751 -9.3132213052626867e-10 ;
createNode nurbsCurve -n "base_cntrlShape" -p "base_cntrl";
	rename -uid "455A3B6B-48D3-6724-B651-AFA011417F69";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3237827148773582 3.4663383074589884 -9.3132095626878666e-10
		1.8626453504603282e-09 4.428880623197827 -9.3132046987541199e-10
		-2.3237827111520679 3.4663383074589875 -9.3132095626878666e-10
		-3.2863250268909079 1.1425555944442753 -9.3132213052626867e-10
		-2.3237827111520679 -1.1812271185704379 -9.3132330478375057e-10
		1.8626448200375313e-09 -2.143769434309279 -9.3132379117712534e-10
		2.3237827148773582 -1.1812271185704375 -9.3132330478375057e-10
		3.2863250306161982 1.1425555944442747 -9.3132213052626867e-10
		2.3237827148773582 3.4663383074589884 -9.3132095626878666e-10
		1.8626453504603282e-09 4.428880623197827 -9.3132046987541199e-10
		-2.3237827111520679 3.4663383074589875 -9.3132095626878666e-10
		;
createNode transform -n "lower_arm_cntrl_grp" -p "base_cntrl";
	rename -uid "8E27F8D0-4DDE-6987-8036-348B89895852";
	setAttr ".rp" -type "double3" 0 2.7680749893188477 0 ;
	setAttr ".sp" -type "double3" 0 2.7680749893188477 0 ;
createNode transform -n "lower_arm_cntrl" -p "lower_arm_cntrl_grp";
	rename -uid "D54D0369-4439-0716-726C-B4917789D3B1";
	setAttr ".rp" -type "double3" -4.6566128730773926e-10 2.8142037391662598 0 ;
	setAttr ".sp" -type "double3" -4.6566128730773926e-10 2.8142037391662598 0 ;
createNode nurbsCurve -n "lower_arm_cntrlShape" -p "lower_arm_cntrl";
	rename -uid "35C0D62A-42B6-7360-C918-5BAF2CC18DBB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3237827125490518 5.1379864521809733 1.1742574819563099e-15
		-4.6566108607836791e-10 6.1005287679198119 1.6606508567006925e-15
		-2.3237827134803744 5.1379864521809724 1.1742574819563095e-15
		-3.2863250292192143 2.8142037391662598 8.6088433660329897e-32
		-2.3237827134803744 0.4904210261515467 -1.1742574819563097e-15
		-4.6566161650116498e-10 -0.47212128958729416 -1.6606508567006937e-15
		2.3237827125490518 0.49042102615154715 -1.1742574819563095e-15
		3.2863250282878917 2.8142037391662593 -2.2646237098927708e-31
		2.3237827125490518 5.1379864521809733 1.1742574819563099e-15
		-4.6566108607836791e-10 6.1005287679198119 1.6606508567006925e-15
		-2.3237827134803744 5.1379864521809724 1.1742574819563095e-15
		;
createNode transform -n "upper_arm_cntrl_grp" -p "lower_arm_cntrl";
	rename -uid "0906F503-4A52-0C7E-92E4-5A8B1A85D968";
	setAttr ".rp" -type "double3" 11.524791095215209 12.813643683162397 0 ;
	setAttr ".sp" -type "double3" 11.524791095215209 12.813643683162397 0 ;
createNode transform -n "upper_arm_cntrl" -p "upper_arm_cntrl_grp";
	rename -uid "8876A60C-4FE7-A62B-E97E-1DAED0FD1274";
	setAttr ".rp" -type "double3" 11.52479076385498 12.813643455505371 0 ;
	setAttr ".sp" -type "double3" 11.52479076385498 12.813643455505371 0 ;
createNode nurbsCurve -n "upper_arm_cntrlShape" -p "upper_arm_cntrl";
	rename -uid "0F4348A7-4829-77F2-9E32-E5950F892792";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.848573476869694 15.137426168520085 1.1742574819563099e-15
		11.52479076385498 16.099968484258923 1.6606508567006925e-15
		9.201008050840267 15.137426168520083 1.1742574819563095e-15
		8.2384657351014283 12.813643455505371 8.6088433660329897e-32
		9.201008050840267 10.489860742490658 -1.1742574819563097e-15
		11.52479076385498 9.5273184267518172 -1.6606508567006937e-15
		13.848573476869694 10.489860742490659 -1.1742574819563095e-15
		14.811115792608533 12.813643455505371 -2.2646237098927708e-31
		13.848573476869694 15.137426168520085 1.1742574819563099e-15
		11.52479076385498 16.099968484258923 1.6606508567006925e-15
		9.201008050840267 15.137426168520083 1.1742574819563095e-15
		;
createNode transform -n "head_cntrl_grp" -p "upper_arm_cntrl";
	rename -uid "2D729364-4F6E-C08A-E6A2-BB8829955016";
	setAttr ".rp" -type "double3" -1.2180015590357591 23.417514807176776 0 ;
	setAttr ".sp" -type "double3" -1.2180015590357591 23.417514807176776 0 ;
createNode transform -n "head_cntrl" -p "head_cntrl_grp";
	rename -uid "8ACE8E60-4309-C674-5936-F2A7DCE22605";
	setAttr ".rp" -type "double3" -1.2180014848709106 23.417514801025391 0 ;
	setAttr ".sp" -type "double3" -1.2180014848709106 23.417514801025391 0 ;
createNode nurbsCurve -n "head_cntrlShape" -p "head_cntrl";
	rename -uid "1FC86868-4AC5-8BD8-1325-38B2602177B3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1057812281438024 21.093732088010675 8.8967617581556798e-16
		-1.2180014848709104 20.131189772271838 1.2581921139586056e-15
		-3.5417841978856237 21.093732088010679 8.8967617581556759e-16
		-4.5043265136244637 23.417514801025391 6.5224901367691839e-32
		-3.5417841978856237 25.741297514040102 -8.8967617581556778e-16
		-1.2180014848709109 26.703839829778943 -1.2581921139586064e-15
		1.1057812281438024 25.741297514040102 -8.8967617581556759e-16
		2.0683235438826424 23.417514801025391 -1.7157921434079714e-31
		1.1057812281438024 21.093732088010675 8.8967617581556798e-16
		-1.2180014848709104 20.131189772271838 1.2581921139586056e-15
		-3.5417841978856237 21.093732088010679 8.8967617581556759e-16
		;
createNode fosterParent -n "lamp_modelRNfosterParent1";
	rename -uid "6345706F-4478-100A-B4A8-5D8B7B5DB8A3";
createNode parentConstraint -n "head_geo_parentConstraint2" -p "lamp_modelRNfosterParent1";
	rename -uid "9F64D9F7-4EA5-64DA-C6D8-5A952023A1E3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_jointW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.47589424495372334 0.03462095543574506 -0.0088138316745693945 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.4033418597069755e-14 -140.23457964260129 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -1.0658141036401503e-14 -1.7347234759768071e-18 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "head_geo_scaleConstraint2" -p "lamp_modelRNfosterParent1";
	rename -uid "ED9460AE-42CA-21E2-0A1C-FC975E88B940";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_jointW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "upper_arm_geo_parentConstraint2" -p "lamp_modelRNfosterParent1";
	rename -uid "DC8406BD-4A6C-AA22-1904-3EABF203E026";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_arm_jointW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.013922409173360517 0.011586726458908458 -0.0088138282299041731 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -140.23457964260129 ;
	setAttr ".rst" -type "double3" 0 -7.1054273576010019e-15 -2.6020852139652106e-17 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "upper_arm_geo_scaleConstraint2" -p "lamp_modelRNfosterParent1";
	rename -uid "3EF5A6C3-4416-6420-2404-829FEDBA478F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_arm_jointW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "lower_arm_geo_parentConstraint2" -p "lamp_modelRNfosterParent1";
	rename -uid "BFCBC39F-42F9-2F3B-769B-0FBC258E6565";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_arm_jointW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 7.5530104682543664 0.0058812859022308039 -0.0088138314227734407 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -40.94641430356581 ;
	setAttr ".lr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" 2.6645352591003757e-15 0 -1.7347234759768071e-18 ;
	setAttr ".rsrr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "lower_arm_geo_scaleConstraint2" -p "lamp_modelRNfosterParent1";
	rename -uid "6623F915-43DB-46C6-A81D-2BA66226F0D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_arm_jointW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "base_geo_parentConstraint2" -p "lamp_modelRNfosterParent1";
	rename -uid "5811E8E0-4011-F1DE-9BDB-97955E174629";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_jointW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.5092104625073326 1.1306743597113313e-16 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -89.999999999999986 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "base_geo_scaleConstraint2" -p "lamp_modelRNfosterParent1";
	rename -uid "7926950A-4483-AD29-1E72-14B1976750E8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_jointW0" -dv 1 -min 0 -at "double";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "86AD1EC5-4457-D602-B221-EBBD44D67D55";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "22A534F6-4407-74F4-8BF6-478BB80B1CE7";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4DD33E60-4481-87A7-D671-75B99264B8F5";
createNode displayLayerManager -n "layerManager";
	rename -uid "C56DFBC7-4CB1-E088-12E4-5FB18125A91A";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "B0EE6848-4080-37C0-CD4C-868FF50F4486";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5CA02F80-46C3-FA18-0074-71ADA351447D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1E0D72A2-4E87-BAD7-4AC4-E3936B9314FC";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "864C7443-4AA6-86E2-5579-809D4D034FFB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "BD2C5CD1-465F-C9C0-9CD0-FC9AF03B0F27";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "geo_layer";
	rename -uid "702C94B0-406D-5828-5EF8-F6A199AA5871";
	setAttr ".do" 1;
createNode reference -n "lamp_modelRN";
	rename -uid "0ED00B07-40BC-2A09-2F1C-2DA1AC516C18";
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
		"lamp_modelRN" 65
		0 "|lamp_model:Geometry" "|Lamp_Rig" "-s -r "
		0 "|lamp_modelRNfosterParent1|base_geo_scaleConstraint2" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|base_geo_parentConstraint2" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geo_scaleConstraint2" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geo_parentConstraint2" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|upper_arm_geo_scaleConstraint2" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|upper_arm_geo_parentConstraint2" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|head_geo_scaleConstraint2" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|head_geo_parentConstraint2" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo" 
		"-s -r "
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.translateX" 
		"lamp_modelRN.placeHolderList[1]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.translateY" 
		"lamp_modelRN.placeHolderList[2]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.translateZ" 
		"lamp_modelRN.placeHolderList[3]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.rotateX" 
		"lamp_modelRN.placeHolderList[4]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.rotateY" 
		"lamp_modelRN.placeHolderList[5]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[6]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[7]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[8]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[9]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[10]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[11]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.scaleX" 
		"lamp_modelRN.placeHolderList[12]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.scaleY" 
		"lamp_modelRN.placeHolderList[13]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:base_geo.scaleZ" 
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
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[21]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[22]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[23]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[24]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[25]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleX" 
		"lamp_modelRN.placeHolderList[26]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleY" 
		"lamp_modelRN.placeHolderList[27]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[28]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.translateX" 
		"lamp_modelRN.placeHolderList[29]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.translateY" 
		"lamp_modelRN.placeHolderList[30]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.translateZ" 
		"lamp_modelRN.placeHolderList[31]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateX" 
		"lamp_modelRN.placeHolderList[32]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateY" 
		"lamp_modelRN.placeHolderList[33]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[34]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[35]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[36]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[37]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[38]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[39]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleX" 
		"lamp_modelRN.placeHolderList[40]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleY" 
		"lamp_modelRN.placeHolderList[41]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[42]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.translateX" 
		"lamp_modelRN.placeHolderList[43]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.translateY" 
		"lamp_modelRN.placeHolderList[44]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.translateZ" 
		"lamp_modelRN.placeHolderList[45]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.rotateX" 
		"lamp_modelRN.placeHolderList[46]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.rotateY" 
		"lamp_modelRN.placeHolderList[47]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[48]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[49]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[50]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[51]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[52]" ""
		5 3 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[53]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.scaleX" 
		"lamp_modelRN.placeHolderList[54]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.scaleY" 
		"lamp_modelRN.placeHolderList[55]" ""
		5 4 "lamp_modelRN" "|Lamp_Rig|lamp_model:Geometry|lamp_model:head_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[56]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
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
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.54119998 0.81999999 0.81999999 ;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "base_geo_parentConstraint2.ctx" "lamp_modelRN.phl[1]";
connectAttr "base_geo_parentConstraint2.cty" "lamp_modelRN.phl[2]";
connectAttr "base_geo_parentConstraint2.ctz" "lamp_modelRN.phl[3]";
connectAttr "base_geo_parentConstraint2.crx" "lamp_modelRN.phl[4]";
connectAttr "base_geo_parentConstraint2.cry" "lamp_modelRN.phl[5]";
connectAttr "base_geo_parentConstraint2.crz" "lamp_modelRN.phl[6]";
connectAttr "lamp_modelRN.phl[7]" "base_geo_parentConstraint2.cro";
connectAttr "lamp_modelRN.phl[8]" "base_geo_scaleConstraint2.cpim";
connectAttr "lamp_modelRN.phl[9]" "base_geo_parentConstraint2.cpim";
connectAttr "lamp_modelRN.phl[10]" "base_geo_parentConstraint2.crp";
connectAttr "lamp_modelRN.phl[11]" "base_geo_parentConstraint2.crt";
connectAttr "base_geo_scaleConstraint2.csx" "lamp_modelRN.phl[12]";
connectAttr "base_geo_scaleConstraint2.csy" "lamp_modelRN.phl[13]";
connectAttr "base_geo_scaleConstraint2.csz" "lamp_modelRN.phl[14]";
connectAttr "lower_arm_geo_parentConstraint2.ctx" "lamp_modelRN.phl[15]";
connectAttr "lower_arm_geo_parentConstraint2.cty" "lamp_modelRN.phl[16]";
connectAttr "lower_arm_geo_parentConstraint2.ctz" "lamp_modelRN.phl[17]";
connectAttr "lower_arm_geo_parentConstraint2.crx" "lamp_modelRN.phl[18]";
connectAttr "lower_arm_geo_parentConstraint2.cry" "lamp_modelRN.phl[19]";
connectAttr "lower_arm_geo_parentConstraint2.crz" "lamp_modelRN.phl[20]";
connectAttr "lamp_modelRN.phl[21]" "lower_arm_geo_parentConstraint2.cro";
connectAttr "lamp_modelRN.phl[22]" "lower_arm_geo_scaleConstraint2.cpim";
connectAttr "lamp_modelRN.phl[23]" "lower_arm_geo_parentConstraint2.cpim";
connectAttr "lamp_modelRN.phl[24]" "lower_arm_geo_parentConstraint2.crp";
connectAttr "lamp_modelRN.phl[25]" "lower_arm_geo_parentConstraint2.crt";
connectAttr "lower_arm_geo_scaleConstraint2.csx" "lamp_modelRN.phl[26]";
connectAttr "lower_arm_geo_scaleConstraint2.csy" "lamp_modelRN.phl[27]";
connectAttr "lower_arm_geo_scaleConstraint2.csz" "lamp_modelRN.phl[28]";
connectAttr "upper_arm_geo_parentConstraint2.ctx" "lamp_modelRN.phl[29]";
connectAttr "upper_arm_geo_parentConstraint2.cty" "lamp_modelRN.phl[30]";
connectAttr "upper_arm_geo_parentConstraint2.ctz" "lamp_modelRN.phl[31]";
connectAttr "upper_arm_geo_parentConstraint2.crx" "lamp_modelRN.phl[32]";
connectAttr "upper_arm_geo_parentConstraint2.cry" "lamp_modelRN.phl[33]";
connectAttr "upper_arm_geo_parentConstraint2.crz" "lamp_modelRN.phl[34]";
connectAttr "lamp_modelRN.phl[35]" "upper_arm_geo_parentConstraint2.cro";
connectAttr "lamp_modelRN.phl[36]" "upper_arm_geo_scaleConstraint2.cpim";
connectAttr "lamp_modelRN.phl[37]" "upper_arm_geo_parentConstraint2.cpim";
connectAttr "lamp_modelRN.phl[38]" "upper_arm_geo_parentConstraint2.crp";
connectAttr "lamp_modelRN.phl[39]" "upper_arm_geo_parentConstraint2.crt";
connectAttr "upper_arm_geo_scaleConstraint2.csx" "lamp_modelRN.phl[40]";
connectAttr "upper_arm_geo_scaleConstraint2.csy" "lamp_modelRN.phl[41]";
connectAttr "upper_arm_geo_scaleConstraint2.csz" "lamp_modelRN.phl[42]";
connectAttr "head_geo_parentConstraint2.ctx" "lamp_modelRN.phl[43]";
connectAttr "head_geo_parentConstraint2.cty" "lamp_modelRN.phl[44]";
connectAttr "head_geo_parentConstraint2.ctz" "lamp_modelRN.phl[45]";
connectAttr "head_geo_parentConstraint2.crx" "lamp_modelRN.phl[46]";
connectAttr "head_geo_parentConstraint2.cry" "lamp_modelRN.phl[47]";
connectAttr "head_geo_parentConstraint2.crz" "lamp_modelRN.phl[48]";
connectAttr "lamp_modelRN.phl[49]" "head_geo_parentConstraint2.cro";
connectAttr "lamp_modelRN.phl[50]" "head_geo_scaleConstraint2.cpim";
connectAttr "lamp_modelRN.phl[51]" "head_geo_parentConstraint2.cpim";
connectAttr "lamp_modelRN.phl[52]" "head_geo_parentConstraint2.crp";
connectAttr "lamp_modelRN.phl[53]" "head_geo_parentConstraint2.crt";
connectAttr "head_geo_scaleConstraint2.csx" "lamp_modelRN.phl[54]";
connectAttr "head_geo_scaleConstraint2.csy" "lamp_modelRN.phl[55]";
connectAttr "head_geo_scaleConstraint2.csz" "lamp_modelRN.phl[56]";
connectAttr "base_joint_parentConstraint2.ctx" "base_joint.tx";
connectAttr "base_joint_parentConstraint2.cty" "base_joint.ty";
connectAttr "base_joint_parentConstraint2.ctz" "base_joint.tz";
connectAttr "base_joint_parentConstraint2.crx" "base_joint.rx";
connectAttr "base_joint_parentConstraint2.cry" "base_joint.ry";
connectAttr "base_joint_parentConstraint2.crz" "base_joint.rz";
connectAttr "base_joint_scaleConstraint2.csx" "base_joint.sx";
connectAttr "base_joint_scaleConstraint2.csy" "base_joint.sy";
connectAttr "base_joint_scaleConstraint2.csz" "base_joint.sz";
connectAttr "lower_arm_joint_parentConstraint2.ctx" "lower_arm_joint.tx";
connectAttr "lower_arm_joint_parentConstraint2.cty" "lower_arm_joint.ty";
connectAttr "lower_arm_joint_parentConstraint2.ctz" "lower_arm_joint.tz";
connectAttr "lower_arm_joint_parentConstraint2.crx" "lower_arm_joint.rx";
connectAttr "lower_arm_joint_parentConstraint2.cry" "lower_arm_joint.ry";
connectAttr "lower_arm_joint_parentConstraint2.crz" "lower_arm_joint.rz";
connectAttr "lower_arm_joint_scaleConstraint2.csx" "lower_arm_joint.sx";
connectAttr "lower_arm_joint_scaleConstraint2.csy" "lower_arm_joint.sy";
connectAttr "lower_arm_joint_scaleConstraint2.csz" "lower_arm_joint.sz";
connectAttr "base_joint.s" "lower_arm_joint.is";
connectAttr "upper_arm_joint_parentConstraint2.ctx" "upper_arm_joint.tx";
connectAttr "upper_arm_joint_parentConstraint2.cty" "upper_arm_joint.ty";
connectAttr "upper_arm_joint_parentConstraint2.ctz" "upper_arm_joint.tz";
connectAttr "upper_arm_joint_parentConstraint2.crx" "upper_arm_joint.rx";
connectAttr "upper_arm_joint_parentConstraint2.cry" "upper_arm_joint.ry";
connectAttr "upper_arm_joint_parentConstraint2.crz" "upper_arm_joint.rz";
connectAttr "upper_arm_joint_scaleConstraint2.csx" "upper_arm_joint.sx";
connectAttr "upper_arm_joint_scaleConstraint2.csy" "upper_arm_joint.sy";
connectAttr "upper_arm_joint_scaleConstraint2.csz" "upper_arm_joint.sz";
connectAttr "lower_arm_joint.s" "upper_arm_joint.is";
connectAttr "head_joint_parentConstraint2.ctx" "head_joint.tx";
connectAttr "head_joint_parentConstraint2.cty" "head_joint.ty";
connectAttr "head_joint_parentConstraint2.ctz" "head_joint.tz";
connectAttr "head_joint_parentConstraint2.crx" "head_joint.rx";
connectAttr "head_joint_parentConstraint2.cry" "head_joint.ry";
connectAttr "head_joint_parentConstraint2.crz" "head_joint.rz";
connectAttr "head_joint_scaleConstraint2.csx" "head_joint.sx";
connectAttr "head_joint_scaleConstraint2.csy" "head_joint.sy";
connectAttr "head_joint_scaleConstraint2.csz" "head_joint.sz";
connectAttr "upper_arm_joint.s" "head_joint.is";
connectAttr "head_joint.ro" "head_joint_parentConstraint2.cro";
connectAttr "head_joint.pim" "head_joint_parentConstraint2.cpim";
connectAttr "head_joint.rp" "head_joint_parentConstraint2.crp";
connectAttr "head_joint.rpt" "head_joint_parentConstraint2.crt";
connectAttr "head_joint.jo" "head_joint_parentConstraint2.cjo";
connectAttr "head_cntrl.t" "head_joint_parentConstraint2.tg[0].tt";
connectAttr "head_cntrl.rp" "head_joint_parentConstraint2.tg[0].trp";
connectAttr "head_cntrl.rpt" "head_joint_parentConstraint2.tg[0].trt";
connectAttr "head_cntrl.r" "head_joint_parentConstraint2.tg[0].tr";
connectAttr "head_cntrl.ro" "head_joint_parentConstraint2.tg[0].tro";
connectAttr "head_cntrl.s" "head_joint_parentConstraint2.tg[0].ts";
connectAttr "head_cntrl.pm" "head_joint_parentConstraint2.tg[0].tpm";
connectAttr "head_joint_parentConstraint2.w0" "head_joint_parentConstraint2.tg[0].tw"
		;
connectAttr "head_joint.ssc" "head_joint_scaleConstraint2.tsc";
connectAttr "head_joint.pim" "head_joint_scaleConstraint2.cpim";
connectAttr "head_cntrl.s" "head_joint_scaleConstraint2.tg[0].ts";
connectAttr "head_cntrl.pm" "head_joint_scaleConstraint2.tg[0].tpm";
connectAttr "head_joint_scaleConstraint2.w0" "head_joint_scaleConstraint2.tg[0].tw"
		;
connectAttr "upper_arm_joint.ro" "upper_arm_joint_parentConstraint2.cro";
connectAttr "upper_arm_joint.pim" "upper_arm_joint_parentConstraint2.cpim";
connectAttr "upper_arm_joint.rp" "upper_arm_joint_parentConstraint2.crp";
connectAttr "upper_arm_joint.rpt" "upper_arm_joint_parentConstraint2.crt";
connectAttr "upper_arm_joint.jo" "upper_arm_joint_parentConstraint2.cjo";
connectAttr "upper_arm_cntrl.t" "upper_arm_joint_parentConstraint2.tg[0].tt";
connectAttr "upper_arm_cntrl.rp" "upper_arm_joint_parentConstraint2.tg[0].trp";
connectAttr "upper_arm_cntrl.rpt" "upper_arm_joint_parentConstraint2.tg[0].trt";
connectAttr "upper_arm_cntrl.r" "upper_arm_joint_parentConstraint2.tg[0].tr";
connectAttr "upper_arm_cntrl.ro" "upper_arm_joint_parentConstraint2.tg[0].tro";
connectAttr "upper_arm_cntrl.s" "upper_arm_joint_parentConstraint2.tg[0].ts";
connectAttr "upper_arm_cntrl.pm" "upper_arm_joint_parentConstraint2.tg[0].tpm";
connectAttr "upper_arm_joint_parentConstraint2.w0" "upper_arm_joint_parentConstraint2.tg[0].tw"
		;
connectAttr "upper_arm_joint.ssc" "upper_arm_joint_scaleConstraint2.tsc";
connectAttr "upper_arm_joint.pim" "upper_arm_joint_scaleConstraint2.cpim";
connectAttr "upper_arm_cntrl.s" "upper_arm_joint_scaleConstraint2.tg[0].ts";
connectAttr "upper_arm_cntrl.pm" "upper_arm_joint_scaleConstraint2.tg[0].tpm";
connectAttr "upper_arm_joint_scaleConstraint2.w0" "upper_arm_joint_scaleConstraint2.tg[0].tw"
		;
connectAttr "lower_arm_joint.ro" "lower_arm_joint_parentConstraint2.cro";
connectAttr "lower_arm_joint.pim" "lower_arm_joint_parentConstraint2.cpim";
connectAttr "lower_arm_joint.rp" "lower_arm_joint_parentConstraint2.crp";
connectAttr "lower_arm_joint.rpt" "lower_arm_joint_parentConstraint2.crt";
connectAttr "lower_arm_joint.jo" "lower_arm_joint_parentConstraint2.cjo";
connectAttr "lower_arm_cntrl.t" "lower_arm_joint_parentConstraint2.tg[0].tt";
connectAttr "lower_arm_cntrl.rp" "lower_arm_joint_parentConstraint2.tg[0].trp";
connectAttr "lower_arm_cntrl.rpt" "lower_arm_joint_parentConstraint2.tg[0].trt";
connectAttr "lower_arm_cntrl.r" "lower_arm_joint_parentConstraint2.tg[0].tr";
connectAttr "lower_arm_cntrl.ro" "lower_arm_joint_parentConstraint2.tg[0].tro";
connectAttr "lower_arm_cntrl.s" "lower_arm_joint_parentConstraint2.tg[0].ts";
connectAttr "lower_arm_cntrl.pm" "lower_arm_joint_parentConstraint2.tg[0].tpm";
connectAttr "lower_arm_joint_parentConstraint2.w0" "lower_arm_joint_parentConstraint2.tg[0].tw"
		;
connectAttr "lower_arm_joint.ssc" "lower_arm_joint_scaleConstraint2.tsc";
connectAttr "lower_arm_joint.pim" "lower_arm_joint_scaleConstraint2.cpim";
connectAttr "lower_arm_cntrl.s" "lower_arm_joint_scaleConstraint2.tg[0].ts";
connectAttr "lower_arm_cntrl.pm" "lower_arm_joint_scaleConstraint2.tg[0].tpm";
connectAttr "lower_arm_joint_scaleConstraint2.w0" "lower_arm_joint_scaleConstraint2.tg[0].tw"
		;
connectAttr "base_joint.ro" "base_joint_parentConstraint2.cro";
connectAttr "base_joint.pim" "base_joint_parentConstraint2.cpim";
connectAttr "base_joint.rp" "base_joint_parentConstraint2.crp";
connectAttr "base_joint.rpt" "base_joint_parentConstraint2.crt";
connectAttr "base_joint.jo" "base_joint_parentConstraint2.cjo";
connectAttr "base_cntrl.t" "base_joint_parentConstraint2.tg[0].tt";
connectAttr "base_cntrl.rp" "base_joint_parentConstraint2.tg[0].trp";
connectAttr "base_cntrl.rpt" "base_joint_parentConstraint2.tg[0].trt";
connectAttr "base_cntrl.r" "base_joint_parentConstraint2.tg[0].tr";
connectAttr "base_cntrl.ro" "base_joint_parentConstraint2.tg[0].tro";
connectAttr "base_cntrl.s" "base_joint_parentConstraint2.tg[0].ts";
connectAttr "base_cntrl.pm" "base_joint_parentConstraint2.tg[0].tpm";
connectAttr "base_joint_parentConstraint2.w0" "base_joint_parentConstraint2.tg[0].tw"
		;
connectAttr "base_joint.pim" "base_joint_scaleConstraint2.cpim";
connectAttr "base_cntrl.s" "base_joint_scaleConstraint2.tg[0].ts";
connectAttr "base_cntrl.pm" "base_joint_scaleConstraint2.tg[0].tpm";
connectAttr "base_joint_scaleConstraint2.w0" "base_joint_scaleConstraint2.tg[0].tw"
		;
connectAttr "head_joint.t" "head_geo_parentConstraint2.tg[0].tt";
connectAttr "head_joint.rp" "head_geo_parentConstraint2.tg[0].trp";
connectAttr "head_joint.rpt" "head_geo_parentConstraint2.tg[0].trt";
connectAttr "head_joint.r" "head_geo_parentConstraint2.tg[0].tr";
connectAttr "head_joint.ro" "head_geo_parentConstraint2.tg[0].tro";
connectAttr "head_joint.s" "head_geo_parentConstraint2.tg[0].ts";
connectAttr "head_joint.pm" "head_geo_parentConstraint2.tg[0].tpm";
connectAttr "head_joint.jo" "head_geo_parentConstraint2.tg[0].tjo";
connectAttr "head_joint.ssc" "head_geo_parentConstraint2.tg[0].tsc";
connectAttr "head_joint.is" "head_geo_parentConstraint2.tg[0].tis";
connectAttr "head_geo_parentConstraint2.w0" "head_geo_parentConstraint2.tg[0].tw"
		;
connectAttr "head_joint.s" "head_geo_scaleConstraint2.tg[0].ts";
connectAttr "head_joint.pm" "head_geo_scaleConstraint2.tg[0].tpm";
connectAttr "head_geo_scaleConstraint2.w0" "head_geo_scaleConstraint2.tg[0].tw";
connectAttr "upper_arm_joint.t" "upper_arm_geo_parentConstraint2.tg[0].tt";
connectAttr "upper_arm_joint.rp" "upper_arm_geo_parentConstraint2.tg[0].trp";
connectAttr "upper_arm_joint.rpt" "upper_arm_geo_parentConstraint2.tg[0].trt";
connectAttr "upper_arm_joint.r" "upper_arm_geo_parentConstraint2.tg[0].tr";
connectAttr "upper_arm_joint.ro" "upper_arm_geo_parentConstraint2.tg[0].tro";
connectAttr "upper_arm_joint.s" "upper_arm_geo_parentConstraint2.tg[0].ts";
connectAttr "upper_arm_joint.pm" "upper_arm_geo_parentConstraint2.tg[0].tpm";
connectAttr "upper_arm_joint.jo" "upper_arm_geo_parentConstraint2.tg[0].tjo";
connectAttr "upper_arm_joint.ssc" "upper_arm_geo_parentConstraint2.tg[0].tsc";
connectAttr "upper_arm_joint.is" "upper_arm_geo_parentConstraint2.tg[0].tis";
connectAttr "upper_arm_geo_parentConstraint2.w0" "upper_arm_geo_parentConstraint2.tg[0].tw"
		;
connectAttr "upper_arm_joint.s" "upper_arm_geo_scaleConstraint2.tg[0].ts";
connectAttr "upper_arm_joint.pm" "upper_arm_geo_scaleConstraint2.tg[0].tpm";
connectAttr "upper_arm_geo_scaleConstraint2.w0" "upper_arm_geo_scaleConstraint2.tg[0].tw"
		;
connectAttr "lower_arm_joint.t" "lower_arm_geo_parentConstraint2.tg[0].tt";
connectAttr "lower_arm_joint.rp" "lower_arm_geo_parentConstraint2.tg[0].trp";
connectAttr "lower_arm_joint.rpt" "lower_arm_geo_parentConstraint2.tg[0].trt";
connectAttr "lower_arm_joint.r" "lower_arm_geo_parentConstraint2.tg[0].tr";
connectAttr "lower_arm_joint.ro" "lower_arm_geo_parentConstraint2.tg[0].tro";
connectAttr "lower_arm_joint.s" "lower_arm_geo_parentConstraint2.tg[0].ts";
connectAttr "lower_arm_joint.pm" "lower_arm_geo_parentConstraint2.tg[0].tpm";
connectAttr "lower_arm_joint.jo" "lower_arm_geo_parentConstraint2.tg[0].tjo";
connectAttr "lower_arm_joint.ssc" "lower_arm_geo_parentConstraint2.tg[0].tsc";
connectAttr "lower_arm_joint.is" "lower_arm_geo_parentConstraint2.tg[0].tis";
connectAttr "lower_arm_geo_parentConstraint2.w0" "lower_arm_geo_parentConstraint2.tg[0].tw"
		;
connectAttr "lower_arm_joint.s" "lower_arm_geo_scaleConstraint2.tg[0].ts";
connectAttr "lower_arm_joint.pm" "lower_arm_geo_scaleConstraint2.tg[0].tpm";
connectAttr "lower_arm_geo_scaleConstraint2.w0" "lower_arm_geo_scaleConstraint2.tg[0].tw"
		;
connectAttr "base_joint.t" "base_geo_parentConstraint2.tg[0].tt";
connectAttr "base_joint.rp" "base_geo_parentConstraint2.tg[0].trp";
connectAttr "base_joint.rpt" "base_geo_parentConstraint2.tg[0].trt";
connectAttr "base_joint.r" "base_geo_parentConstraint2.tg[0].tr";
connectAttr "base_joint.ro" "base_geo_parentConstraint2.tg[0].tro";
connectAttr "base_joint.s" "base_geo_parentConstraint2.tg[0].ts";
connectAttr "base_joint.pm" "base_geo_parentConstraint2.tg[0].tpm";
connectAttr "base_joint.jo" "base_geo_parentConstraint2.tg[0].tjo";
connectAttr "base_joint.ssc" "base_geo_parentConstraint2.tg[0].tsc";
connectAttr "base_joint.is" "base_geo_parentConstraint2.tg[0].tis";
connectAttr "base_geo_parentConstraint2.w0" "base_geo_parentConstraint2.tg[0].tw"
		;
connectAttr "base_joint.s" "base_geo_scaleConstraint2.tg[0].ts";
connectAttr "base_joint.pm" "base_geo_scaleConstraint2.tg[0].tpm";
connectAttr "base_geo_scaleConstraint2.w0" "base_geo_scaleConstraint2.tg[0].tw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "geo_layer.id";
connectAttr "lamp_modelRNfosterParent1.msg" "lamp_modelRN.fp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Lamp01_Rig.ma
