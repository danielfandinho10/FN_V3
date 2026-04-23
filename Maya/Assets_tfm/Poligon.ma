//Maya ASCII 2023 scene
//Name: Poligon.ma
//Last modified: Thu, Apr 23, 2026 08:30:01 PM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "B0CC6308-4F75-3CA3-9CCA-7EAFEB370011";
createNode transform -s -n "persp";
	rename -uid "FBDA4568-4C29-D0E2-5DF6-C3A3C54B77D4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.06248771528791941 1.293552171243286 9.4304746983797365 ;
	setAttr ".r" -type "double3" -6.9383527296150032 354.99999999995327 -1.4965799454584384e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A4EC9D03-412F-5BD3-20DF-62AA1EFC63EA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.364418279996569;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 5.4376502811373566 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4D1905EE-48BF-87BB-5F13-D880BBA09C35";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3238F2DD-40E2-D6C4-23FF-BF8E9EAF8002";
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
	rename -uid "E4652C52-4507-553A-C3ED-D9B2062E89AC";
	setAttr ".t" -type "double3" 0.89088674057960238 3.4527597351858788 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3D1F8D61-4BF7-C725-9FDD-95AF2C23D8A2";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 8.6754392921852297;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "EC25154C-48DD-4A3D-47D8-3490B64FADB8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CDB6033C-4BDE-31D1-28E1-6E9658BEEE5E";
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
createNode transform -n "pCube1";
	rename -uid "6A1FD356-4B4B-0EDA-DF05-C699179B1E81";
	setAttr ".s" -type "double3" 3.0370756401155559 4.7936136799037961 0.41303291530970693 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "C3F76540-49E1-C3FF-EE11-3EBE997C2290";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.34757246822118759 0.56957674026489258 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[100]" -type "float3" -0.011876245 0.0089951362 0 ;
	setAttr ".pt[101]" -type "float3" -0.011876245 0.0089951362 0 ;
	setAttr ".pt[102]" -type "float3" -0.0061839866 0.0089951362 0 ;
	setAttr ".pt[103]" -type "float3" 2.6717045e-05 0.0089951362 0 ;
	setAttr ".pt[104]" -type "float3" 0.0064107804 0.0089951362 0 ;
	setAttr ".pt[105]" -type "float3" 0.011876245 0.0089951362 0 ;
	setAttr ".pt[106]" -type "float3" 0.011876245 0.0089951362 0 ;
	setAttr ".pt[107]" -type "float3" 0.0064107804 0.0089951362 0 ;
	setAttr ".pt[108]" -type "float3" 2.6717067e-05 0.0089951362 0 ;
	setAttr ".pt[109]" -type "float3" -0.0061839866 0.0089951362 0 ;
createNode transform -n "imagePlane1";
	rename -uid "A478FAA3-4C32-B177-B5F4-5C930879389C";
	setAttr ".t" -type "double3" 0 3.5963581183611528 0 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "9AF8FE82-448B-868D-5DFC-9FBB5FC1833D";
	setAttr -k off ".v";
	setAttr ".fc" 178;
	setAttr ".imn" -type "string" "C:/Users/Daniel/Desktop/Uni/Cei/Assets_tfm/Poligon.JPG";
	setAttr ".cov" -type "short2" 392 492 ;
	setAttr ".dlc" no;
	setAttr ".w" 3.92;
	setAttr ".h" 4.92;
	setAttr ".cs" -type "string" "sRGB";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "06CCA689-461B-FFDE-0D3B-118769A6D439";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3C16F5BF-4C8B-1000-3242-BDB3EAB0F7C6";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "56FB1AD0-423E-6A1D-0E64-D5812390EB72";
createNode displayLayerManager -n "layerManager";
	rename -uid "2811332E-4EFD-382E-A81A-56AAF6DA5BB9";
createNode displayLayer -n "defaultLayer";
	rename -uid "61D7DAB6-4AE3-A9FB-CB71-A39B13224BF8";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5C327AA4-4F0C-DD00-AC1A-B6884DEA70DD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F334A7A5-4D1A-BF32-BB1D-76A74500CF97";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "4B32AA8C-4A6D-B885-F96D-5A8B31F27F8A";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "D1F6AA50-4BAA-D6DB-7D1D-37BB5E71FC33";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "9F2D9C50-4E18-247D-21D0-9E90C5E7729A";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "C12EBFCC-4613-36E0-280E-77A0E311B622";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyCube -n "polyCube1";
	rename -uid "E8592883-4346-0B52-7B4C-EE8DBF6CBA5E";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit1";
	rename -uid "89CDD3CC-4970-386D-AECF-DCB18CF7A38E";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "217C34F2-470D-7E03-83B7-2A85547D1244";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  0.21666665 0.060284749 0 -0.21666665
		 0.060284749 0 0.21666662 -0.1667878 0 -0.21666662 -0.1667878 0 0.21666662 -0.1667878
		 0 -0.21666662 -0.1667878 0 0.21666665 0.060284749 0 -0.21666665 0.060284749 0 0 0.060284749
		 0 0 -0.1667878 0 0 -0.1667878 0 0 0.060284749 0;
createNode polySplit -n "polySplit2";
	rename -uid "C8046441-45DC-B345-32FA-17A134491CD3";
	setAttr -s 7 ".e[0:6]"  0.60957003 0.39043 0.39043 0.39043 0.60957003
		 0.60957003 0.60957003;
	setAttr -s 7 ".d[0:6]"  -2147483644 -2147483640 -2147483630 -2147483639 -2147483643 -2147483632 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "7E8FD47A-4B57-344F-135A-96BF7399E980";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[12:17]" -type "float3"  -0.031481482 0 0 -0.031481482
		 0 0 0 0 0 0.031481482 0 0 0.031481482 0 0 0 0 0;
createNode polySplit -n "polySplit3";
	rename -uid "41DD8326-49F5-2693-505E-26B61E86DF0A";
	setAttr -s 7 ".e[0:6]"  0.543639 0.456361 0.456361 0.456361 0.543639
		 0.543639 0.543639;
	setAttr -s 7 ".d[0:6]"  -2147483644 -2147483627 -2147483626 -2147483625 -2147483643 -2147483632 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "255848EB-45A1-68CA-AD7E-1DA5CD491CE0";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[12:23]" -type "float3"  -0.0069958847 0 0 -0.0069958847
		 0 0 0 0 0 0.0069958847 0 0 0.0069958847 0 0 0 0 0 -0.043398038 0 0 -0.043398038 0
		 0 0 0 0 0.043398038 0 0 0.043398038 0 0 0 0 0;
createNode polySplit -n "polySplit4";
	rename -uid "C2E869EF-4759-E618-4104-D099D666D08A";
	setAttr -s 7 ".e[0:6]"  0.74030298 0.25969699 0.25969699 0.25969699
		 0.74030298 0.74030298 0.74030298;
	setAttr -s 7 ".d[0:6]"  -2147483640 -2147483628 -2147483623 -2147483624 -2147483639 -2147483630 
		-2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "242E5951-40F5-7439-145E-26A3EA81705F";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[24:29]" -type "float3"  0.22520207 0 0 0.22520207
		 0 0 0 0 0 -0.22520207 0 0 -0.22520207 0 0 0 0 0;
createNode polySplit -n "polySplit5";
	rename -uid "1B19C260-4295-DE03-812F-20BCE8D729A1";
	setAttr -s 7 ".e[0:6]"  0.54299301 0.45700699 0.45700699 0.45700699
		 0.54299301 0.54299301 0.54299301;
	setAttr -s 7 ".d[0:6]"  -2147483640 -2147483603 -2147483602 -2147483601 -2147483639 -2147483630 
		-2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "0C721A56-4A59-A06E-2329-7A9EED480148";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[2]" -type "float3" 0.15740743 -0.028132875 0 ;
	setAttr ".tk[3]" -type "float3" -0.15740743 -0.028132875 0 ;
	setAttr ".tk[4]" -type "float3" 0.15740743 -0.028132875 0 ;
	setAttr ".tk[5]" -type "float3" -0.15740743 -0.028132875 0 ;
	setAttr ".tk[9]" -type "float3" -0.0063434206 0.0040189819 0 ;
	setAttr ".tk[10]" -type "float3" -0.0063434206 0.0040189819 0 ;
	setAttr ".tk[30]" -type "float3" 0.037264764 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.037264764 0 0 ;
	setAttr ".tk[33]" -type "float3" -0.043608189 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.043608189 0 0 ;
createNode polySplit -n "polySplit6";
	rename -uid "8B457B9B-4B63-632B-1374-5AB5698DB394";
	setAttr -s 13 ".e[0:12]"  0.534091 0.465909 0.465909 0.534091 0.534091
		 0.534091 0.534091 0.465909 0.465909 0.534091 0.534091 0.534091 0.534091;
	setAttr -s 13 ".d[0:12]"  -2147483636 -2147483606 -2147483618 -2147483596 -2147483584 -2147483635 
		-2147483634 -2147483582 -2147483594 -2147483620 -2147483608 -2147483633 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "40B0EA46-4E12-5747-12F6-5681D7FE9206";
	setAttr -s 13 ".e[0:12]"  0.47822201 0.52177799 0.52177799 0.47822201
		 0.47822201 0.47822201 0.47822201 0.52177799 0.52177799 0.47822201 0.47822201 0.47822201
		 0.47822201;
	setAttr -s 13 ".d[0:12]"  -2147483648 -2147483605 -2147483617 -2147483597 -2147483585 -2147483647 
		-2147483646 -2147483581 -2147483593 -2147483621 -2147483609 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "34F2FD8D-4E0D-CC95-B8AD-9EB381D92A04";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -0.0040189824 0 ;
	setAttr ".tk[3]" -type "float3" -0.0031717103 -0.0060284734 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.0040189824 0 ;
	setAttr ".tk[5]" -type "float3" -0.0031717103 -0.0060284734 0 ;
	setAttr ".tk[41]" -type "float3" -1.4901161e-08 0.012056948 0 ;
	setAttr ".tk[42]" -type "float3" -1.4901161e-08 0.012056948 0 ;
	setAttr ".tk[53]" -type "float3" 0 0.0060284734 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.0060284734 0 ;
createNode polySplit -n "polySplit8";
	rename -uid "12B073F0-431B-5505-6C37-4FA842A03ABA";
	setAttr -s 11 ".e[0:10]"  0.49288699 0.50711298 0.50711298 0.50711298
		 0.50711298 0.50711298 0.49288699 0.49288699 0.49288699 0.49288699 0.49288699;
	setAttr -s 11 ".d[0:10]"  -2147483628 -2147483604 -2147483536 -2147483599 -2147483560 -2147483600 
		-2147483624 -2147483566 -2147483623 -2147483542 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "EE7C4CB5-4719-E3E3-15D2-32B83655CD16";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[0]" -type "float3" -0.015858551 0 0 ;
	setAttr ".tk[1]" -type "float3" 0.0063434206 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.015858551 0 0 ;
	setAttr ".tk[7]" -type "float3" 0.0063434206 0 0 ;
	setAttr ".tk[24]" -type "float3" 0.012511229 0 0 ;
	setAttr ".tk[25]" -type "float3" 0.012511229 0 0 ;
	setAttr ".tk[27]" -type "float3" -0.012511229 0 0 ;
	setAttr ".tk[28]" -type "float3" -0.012511229 0 0 ;
	setAttr ".tk[39]" -type "float3" -0.0066821338 0 0 ;
	setAttr ".tk[44]" -type "float3" -0.0066821338 0 0 ;
	setAttr ".tk[51]" -type "float3" 0.0065280818 0 0 ;
	setAttr ".tk[56]" -type "float3" 0.0065280818 0 0 ;
	setAttr ".tk[60]" -type "float3" 0.03888965 0 0 ;
	setAttr ".tk[61]" -type "float3" 0.03888965 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.020291764 0 0 ;
	setAttr ".tk[64]" -type "float3" -0.020770609 0 0 ;
	setAttr ".tk[65]" -type "float3" -0.03888965 0 0 ;
	setAttr ".tk[66]" -type "float3" -0.03888965 0 0 ;
	setAttr ".tk[67]" -type "float3" -0.020770609 0 0 ;
	setAttr ".tk[69]" -type "float3" 0.020291764 0 0 ;
createNode polySplit -n "polySplit9";
	rename -uid "DEE6A064-48DF-1761-5E1A-39A6A91684CB";
	setAttr -s 11 ".e[0:10]"  0.115065 0.88493502 0.88493502 0.88493502
		 0.88493502 0.88493502 0.115065 0.115065 0.115065 0.115065 0.115065;
	setAttr -s 11 ".d[0:10]"  -2147483644 -2147483615 -2147483534 -2147483614 -2147483558 -2147483613 
		-2147483643 -2147483568 -2147483632 -2147483544 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "1ADAD6DE-48AC-2F1C-E569-779C55C9A33A";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[12]" -type "float3" 0.017325312 -0.00411628 0 ;
	setAttr ".tk[13]" -type "float3" 0.017325312 -0.00411628 0 ;
	setAttr ".tk[15]" -type "float3" -0.030319296 0 0 ;
	setAttr ".tk[16]" -type "float3" -0.030319296 0 0 ;
	setAttr ".tk[70]" -type "float3" 0.023342658 0 0 ;
	setAttr ".tk[71]" -type "float3" 0.023342658 0 0 ;
	setAttr ".tk[72]" -type "float3" 0.01145356 0 0 ;
	setAttr ".tk[73]" -type "float3" -0.00032745564 0 0 ;
	setAttr ".tk[74]" -type "float3" -0.012386479 0 0 ;
	setAttr ".tk[75]" -type "float3" -0.023342658 0 0 ;
	setAttr ".tk[76]" -type "float3" -0.023342658 0 0 ;
	setAttr ".tk[77]" -type "float3" -0.012386479 0 0 ;
	setAttr ".tk[78]" -type "float3" -0.00032745564 0 0 ;
	setAttr ".tk[79]" -type "float3" 0.011453561 0 0 ;
createNode polySplit -n "polySplit10";
	rename -uid "F334E238-4696-312F-6B0E-2FBBB105378D";
	setAttr -s 11 ".e[0:10]"  0.425327 0.574673 0.574673 0.574673 0.574673
		 0.574673 0.425327 0.425327 0.425327 0.425327 0.425327;
	setAttr -s 11 ".d[0:10]"  -2147483627 -2147483616 -2147483543 -2147483611 -2147483567 -2147483612 
		-2147483625 -2147483559 -2147483626 -2147483535 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak9";
	rename -uid "7BAF62A9-4BBE-D6BC-F3B5-7FB56BED39E2";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[60]" -type "float3" 0.038965899 0.0096046533 0 ;
	setAttr ".tk[61]" -type "float3" 0.038965899 0.0096046533 0 ;
	setAttr ".tk[62]" -type "float3" 0.020331556 0.0096046533 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.0096046533 0 ;
	setAttr ".tk[64]" -type "float3" -0.020811345 0.0096046533 0 ;
	setAttr ".tk[65]" -type "float3" -0.038965899 0.0096046533 0 ;
	setAttr ".tk[66]" -type "float3" -0.038965899 0.0096046533 0 ;
	setAttr ".tk[67]" -type "float3" -0.020811345 0.0096046533 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.0096046533 0 ;
	setAttr ".tk[69]" -type "float3" 0.020331556 0.0096046533 0 ;
	setAttr ".tk[80]" -type "float3" -0.014110794 0 0 ;
	setAttr ".tk[81]" -type "float3" -0.014110794 0 0 ;
	setAttr ".tk[82]" -type "float3" -0.0075142351 0 0 ;
	setAttr ".tk[83]" -type "float3" 0.00016594 0 0 ;
	setAttr ".tk[84]" -type "float3" 0.0080273543 0 0 ;
	setAttr ".tk[85]" -type "float3" 0.014110794 0 0 ;
	setAttr ".tk[86]" -type "float3" 0.014110794 0 0 ;
	setAttr ".tk[87]" -type "float3" 0.0080273543 0 0 ;
	setAttr ".tk[88]" -type "float3" 0.00016594 0 0 ;
	setAttr ".tk[89]" -type "float3" -0.0075142351 0 0 ;
createNode polySplit -n "polySplit11";
	rename -uid "4EAD9F9C-46E7-BE2D-CD97-669EDE765713";
	setAttr -s 11 ".e[0:10]"  0.52776098 0.47223899 0.47223899 0.47223899
		 0.47223899 0.47223899 0.52776098 0.52776098 0.52776098 0.52776098 0.52776098;
	setAttr -s 11 ".d[0:10]"  -2147483628 -2147483531 -2147483530 -2147483529 -2147483528 -2147483527 
		-2147483624 -2147483566 -2147483623 -2147483542 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "C3784D0B-4603-16EA-5040-ABBCF604ED21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:97]";
	setAttr ".ix" -type "matrix" 3.0370756401155559 0 0 0 0 4.7936136799037961 0 0 0 0 0.41303291530970693 0
		 0 3.7770129130868817 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.03808063268661499 3.4982852935791016 -0.081664204597473145 ;
	setAttr ".ro" -type "double3" -6.9383527286307922 24.999999461797355 7.8623208967757842e-08 ;
	setAttr ".ps" -type "double2" 2.0674446867265015 3.7882249100633216 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 1.7622650861740112 -0.19455629587173462 -0.41953170299530029 -0.41952329874038696
		 1.3492293518223919e-17 3.7829718589782715 -0.12080375850200653 -0.12080134451389313
		 -0.8217577338218689 -0.41722732782363892 -0.89968860149383545 -0.89967060089111328
		 -1.6628314256668091 -11.939504623413086 6.548187255859375 6.7480545043945312;
	setAttr ".prgt" 1319;
	setAttr ".ptop" 673;
createNode polyTweak -n "polyTweak10";
	rename -uid "7C2C618F-4657-CDF8-4968-3F9DDC548B5D";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[90]" -type "float3" -0.027772194 0 0 ;
	setAttr ".tk[91]" -type "float3" -0.027772194 0 0 ;
	setAttr ".tk[92]" -type "float3" -0.014864489 0 0 ;
	setAttr ".tk[93]" -type "float3" 0.00040908449 0 0 ;
	setAttr ".tk[94]" -type "float3" 0.016043086 0 0 ;
	setAttr ".tk[95]" -type "float3" 0.027772194 0 0 ;
	setAttr ".tk[96]" -type "float3" 0.027772194 0 0 ;
	setAttr ".tk[97]" -type "float3" 0.016043087 0 0 ;
	setAttr ".tk[98]" -type "float3" 0.00040908449 0 0 ;
	setAttr ".tk[99]" -type "float3" -0.014864489 0 0 ;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "715F131A-426C-E6E0-E0D0-CD84E0B03258";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 25 "e[0:5]" "e[8:10]" "e[12:15]" "e[20:21]" "e[23:24]" "e[32:33]" "e[35:36]" "e[44:45]" "e[47:48]" "e[56:57]" "e[59:60]" "e[68]" "e[73:74]" "e[79]" "e[92]" "e[97:98]" "e[103]" "e[116:117]" "e[121:122]" "e[136:137]" "e[141:142]" "e[156:157]" "e[161:162]" "e[176:177]" "e[181:182]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "586D978E-46E6-E47B-50B7-6BAF0AF6FBEC";
	setAttr ".uopa" yes;
	setAttr -s 154 ".uvtk[0:153]" -type "float2" -0.0095219016 -0.058432378
		 0.82218546 0.49173892 -0.020599127 0.26838571 -0.0039091632 0.25463793 0.27385902
		 -0.7235204 0.25614741 -0.7499218 0.34650832 -0.57975459 0.39902437 -0.55869174 0.49398389
		 -0.11582773 0.36923388 -0.10008182 0.37451684 -0.084122807 -0.091789976 -0.049343064
		 -0.10255387 0.32959241 -0.040167481 -0.028239716 0.34482384 0.43189549 -0.098138034
		 0.3134115 0.54868609 0.47847667 -0.068705976 0.29839686 -0.041792572 0.28278565 -0.04253608
		 0.29495263 0.28714681 -0.5909332 0.23199801 -0.75909555 0.20223886 -0.74703956 0.21771869
		 -0.59074628 0.23952797 -0.066086754 0.24137402 -0.083820947 0.10576007 -0.066441871
		 0.096072644 -0.046753831 0.40599197 -0.49512708 -0.00065352768 -0.011873078 0.34356031
		 -0.49637869 0.20506594 -0.49933642 0.2741783 -0.4978295 -0.056342602 -0.025640085
		 0.14365864 -0.5007264 0.15790156 -0.56787419 0.18133318 -0.6945045 -0.026476979 -0.018722132
		 -0.0417649 -0.022368565 -0.012334779 -0.015099835 0.56467062 -0.31999034 0.015416059
		 0.11810361 0.21535048 -0.47128028 0.12963055 -0.43443596 0.42125601 -0.37330502 0.42686379
		 -0.3148658 0.096569419 -0.36545467 0.079601943 -0.29870939 0.25940961 -0.30701888
		 0.26445597 -0.36942491 0.22024786 -0.10362348 -0.065993071 -0.29206613 -0.025102973
		 -0.36269259 -0.10035822 0.07769499 -0.033431679 0.12413032 -0.07321468 0.12844349
		 -0.068770379 0.077853568 -0.031108901 0.078079976 -0.00363864 0.1202399 -0.0022978485
		 0.078299291 0.0086272284 0.067651004 0.48731083 -0.39001554 -0.0074219927 0.065928251
		 -0.059118062 0.063807577 -0.030544758 0.064905256 0.16041341 -0.25570184 -0.084073007
		 0.062947899 0.26543021 -0.38710129 0.13611326 -0.3848497 0.38743478 -0.3893424 0.33900943
		 -0.42466539 0.14854835 -0.5317468 -0.021637097 0.037881911 -0.03720963 0.036136389
		 -0.029115707 0.037026227 -0.044641435 0.035348535 0.19691589 -0.42400274 0.23052359
		 -0.42414236 0.26866558 -0.4243136 0.30554098 -0.42449215 0.38752806 -0.40458375 0.16274148
		 -0.50459403 0.3304114 -0.40384084 0.26704451 -0.40304917 0.20100501 -0.40225986 0.20278811
		 -0.30052412 -0.057488501 0.051131666 -0.044028878 0.052009135 -0.029885367 0.052990049
		 -0.017340705 0.053923756 0.13821869 -0.28125301 0.053302497 -0.25727624 0.41838738
		 -0.2380276 0.25300109 -0.22547115 0.075585306 -0.21199268 -0.086624056 -0.19966203
		 -0.11605465 0.20294754 -0.0745444 0.19340216 -0.036438748 0.1832466 -0.0079780892
		 0.174053 0.2320683 -0.29486316 0.27799454 -0.34136087 0.035929918 -0.38319048 0.1380496
		 -0.21270093 0.114178 -0.45335183 0.5437147 -0.37389219 0.19874901 -0.49201876 -0.0069033578
		 0.054758996 0.15253013 -0.073982865 0.19479814 0.11033076 -0.11117804 0.13203682
		 0.20751747 -0.24981892 0.19032283 -0.38948157 0.015694348 0.080281414 0.1046719 -0.35824114
		 0.56373584 -0.24905622 0.412884 0.42776886 0.26139331 0.090492606 -0.021949142 -0.049954757
		 0.3465772 0.47568148 -0.087406524 -0.070525043 0.87002027 0.5090062 0.50786138 -0.10178684
		 -0.0052855238 -0.081059121 0.0112665 0.16619448 0.29668036 -0.3910799 0.14238495
		 -0.40158951 0.080518112 -0.46413076 -0.015145764 0.038654745 0.7429949 0.49920136
		 0.6141783 0.49040687 0.17366038 -0.69083059 0.15114814 -0.69855773 -0.0095739961
		 -0.078753136 -0.0218281 -0.090212189 -0.020463318 0.27879393 0.68990564 0.48467457
		 0.47704104 0.4822762 0.12350026 -0.68622059 0.1046344 -0.6358977 -0.037577897 -0.093309842
		 -0.052268475 -0.077922247 -0.070948184 0.31252608 0.41394475 0.47380993 0.13437891
		 -0.50391698 0.21965799 -0.34801927 0.21021941 -0.55534452 0.24104214 -0.63103938
		 9.5508993e-05 -0.060202025 0.1575966 -0.58113873 0.067451 -0.48903865 -0.0031896681
		 0.26319614 0.95228839 0.49991685 0.19008493 -0.66688085;
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "861D0BB6-4D69-0D96-BE9C-5E869BE2881D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[2]" "f[8]" "f[11:12]" "f[17:18]" "f[26:27]" "f[32:33]" "f[40:44]" "f[52:56]" "f[59:62]" "f[69:72]" "f[84:87]" "f[89:92]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "024C1061-42B4-BB27-64B7-D8ADC1E358AA";
	setAttr ".uopa" yes;
	setAttr -s 51 ".uvtk";
	setAttr ".uvtk[6]" -type "float2" 0.0086787669 0.60107297 ;
	setAttr ".uvtk[7]" -type "float2" 0.015889078 0.59601247 ;
	setAttr ".uvtk[8]" -type "float2" 0.035424925 0.45444804 ;
	setAttr ".uvtk[9]" -type "float2" 0.017649859 0.45445007 ;
	setAttr ".uvtk[10]" -type "float2" 0.018635303 0.44858438 ;
	setAttr ".uvtk[13]" -type "float2" -0.036531478 0.44859055 ;
	setAttr ".uvtk[20]" -type "float2" 0.0008114893 0.60321277 ;
	setAttr ".uvtk[23]" -type "float2" -0.0080961557 0.60219586 ;
	setAttr ".uvtk[24]" -type "float2" -5.6903809e-06 0.44858646 ;
	setAttr ".uvtk[25]" -type "float2" 3.6211684e-05 0.45445201 ;
	setAttr ".uvtk[26]" -type "float2" -0.017992999 0.45445403 ;
	setAttr ".uvtk[27]" -type "float2" -0.019086597 0.44858858 ;
	setAttr ".uvtk[28]" -type "float2" 0.017567426 0.57826877 ;
	setAttr ".uvtk[30]" -type "float2" 0.0091704456 0.57826972 ;
	setAttr ".uvtk[31]" -type "float2" -0.0089418264 0.57827175 ;
	setAttr ".uvtk[32]" -type "float2" 8.8531524e-06 0.57827079 ;
	setAttr ".uvtk[34]" -type "float2" -0.016749825 0.57827264 ;
	setAttr ".uvtk[35]" -type "float2" -0.015467433 0.59561604 ;
	setAttr ".uvtk[40]" -type "float2" 0.042285778 0.52367836 ;
	setAttr ".uvtk[44]" -type "float2" 0.02117721 0.5423522 ;
	setAttr ".uvtk[45]" -type "float2" 0.022739209 0.52415133 ;
	setAttr ".uvtk[46]" -type "float2" -0.02166727 0.54235697 ;
	setAttr ".uvtk[47]" -type "float2" -0.023312656 0.52415651 ;
	setAttr ".uvtk[48]" -type "float2" -1.8207356e-05 0.52415389 ;
	setAttr ".uvtk[49]" -type "float2" 4.8000365e-06 0.54235446 ;
	setAttr ".uvtk[51]" -type "float2" -0.041338772 0.5241586 ;
	setAttr ".uvtk[52]" -type "float2" -0.03674975 0.5423587 ;
	setAttr ".uvtk[61]" -type "float2" 0.030157784 0.54703033 ;
	setAttr ".uvtk[67]" -type "float2" -4.6221539e-05 0.54742056 ;
	setAttr ".uvtk[68]" -type "float2" -0.016802367 0.54742241 ;
	setAttr ".uvtk[69]" -type "float2" 0.016323715 0.54741871 ;
	setAttr ".uvtk[70]" -type "float2" 0.0093504516 0.5579505 ;
	setAttr ".uvtk[76]" -type "float2" -0.0093374224 0.55795252 ;
	setAttr ".uvtk[77]" -type "float2" -0.0049840477 0.55795211 ;
	setAttr ".uvtk[78]" -type "float2" 6.5285712e-06 0.55795157 ;
	setAttr ".uvtk[79]" -type "float2" 0.0048820116 0.55795103 ;
	setAttr ".uvtk[80]" -type "float2" 0.016149491 0.55195183 ;
	setAttr ".uvtk[82]" -type "float2" 0.0084292023 0.55195278 ;
	setAttr ".uvtk[83]" -type "float2" 5.9325248e-06 0.55195361 ;
	setAttr ".uvtk[84]" -type "float2" -0.0086162658 0.55195457 ;
	setAttr ".uvtk[92]" -type "float2" 0.022622146 0.49955982 ;
	setAttr ".uvtk[93]" -type "float2" 3.1664968e-08 0.49956244 ;
	setAttr ".uvtk[94]" -type "float2" -0.023156045 0.49956506 ;
	setAttr ".uvtk[95]" -type "float2" -0.043356001 0.49956733 ;
	setAttr ".uvtk[102]" -type "float2" -0.029373318 0.54742384 ;
	setAttr ".uvtk[105]" -type "float2" 0.038397588 0.54153091 ;
	setAttr ".uvtk[115]" -type "float2" 0.043355979 0.49955755 ;
	setAttr ".uvtk[118]" -type "float2" -0.034373403 0.45445585 ;
	setAttr ".uvtk[122]" -type "float2" 0.037719704 0.44858223 ;
	setAttr ".uvtk[126]" -type "float2" -0.016137656 0.5519554 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D73E74FA-49A6-FF1F-9E2D-2D917137CDBD";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 314\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 656\n            -height 314\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 314\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 1\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 673\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 673\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 673\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C7AECD41-4B46-3583-86F3-2C8A8CC3A76C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "D5D7B86C-4470-BAC9-B184-069864FB8F79";
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "7F42C9FC-4E68-5657-9D2A-0098E91A68E3";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "E2EF4C16-4C48-F917-FF83-46A58EC21A47";
createNode file -n "Poly_lambert1_BaseColor_1";
	rename -uid "6C9C8DEA-4B69-0364-C470-77A5DAACB4D7";
	setAttr ".ftn" -type "string" "C:/Users/Daniel/Desktop/Uni/Cei/Assets_tfm/Textures/Poly_lambert1_BaseColor.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "ED2F2AF8-441D-0D74-E2FC-ECBFF2EE4C12";
createNode file -n "file1";
	rename -uid "9BABEFD2-477C-7A2F-9703-5496BFAF9D08";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/Daniel/Desktop/Uni/Cei/Assets_tfm/Textures/Poly_lambert1_Normal.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "ADB48D18-4E0F-2729-0298-9F80FE8A236B";
createNode bump2d -n "bump2d1";
	rename -uid "C62EFD07-4396-D15D-150E-C183CE2C64E4";
	setAttr ".vc1" -type "float3" 0 1.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode polySplit -n "polySplit12";
	rename -uid "50DB40AE-42A8-E8AE-F61C-8789C5F784E4";
	setAttr -s 11 ".e[0:10]"  0.63739902 0.36260101 0.36260101 0.36260101
		 0.36260101 0.36260101 0.63739902 0.63739902 0.63739902 0.63739902 0.63739902;
	setAttr -s 11 ".d[0:10]"  -2147483640 -2147483591 -2147483540 -2147483590 -2147483564 -2147483589 
		-2147483639 -2147483562 -2147483630 -2147483538 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "779CA74B-491D-1152-5063-E89489A4E6F6";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -211.60809802879515 -783.6635753810915 ;
	setAttr ".tgi[0].vh" -type "double2" 947.81214575505589 -21.758843751703633 ;
	setAttr -s 7 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -58.571430206298828;
	setAttr ".tgi[0].ni[0].y" -84.285713195800781;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 248.57142639160156;
	setAttr ".tgi[0].ni[1].y" -61.428569793701172;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 915.71429443359375;
	setAttr ".tgi[0].ni[2].y" -40;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 567.14288330078125;
	setAttr ".tgi[0].ni[3].y" -40;
	setAttr ".tgi[0].ni[3].nvs" 2387;
	setAttr ".tgi[0].ni[4].x" -58.571430206298828;
	setAttr ".tgi[0].ni[4].y" -625.71429443359375;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -365.71429443359375;
	setAttr ".tgi[0].ni[5].y" -648.5714111328125;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 248.57142639160156;
	setAttr ".tgi[0].ni[6].y" -602.85711669921875;
	setAttr ".tgi[0].ni[6].nvs" 1923;
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :modelPanel4ViewSelectedSet;
	setAttr ".ihi" 0;
connectAttr "polySplit12.out" "pCubeShape1.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":frontShape.msg" "imagePlaneShape1.ltc";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyCube1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polySplit11.ip";
connectAttr "polyTweak10.out" "polyPlanarProj1.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj1.mp";
connectAttr "polySplit11.out" "polyTweak10.ip";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyLayoutUV1.ip";
connectAttr "polyLayoutUV1.out" "polyTweakUV2.ip";
connectAttr "Poly_lambert1_BaseColor_1.oc" "aiStandardSurface1.base_color";
connectAttr "bump2d1.o" "aiStandardSurface1.n";
connectAttr "aiStandardSurface1.out" "aiStandardSurface1SG.ss";
connectAttr "pCubeShape1.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "aiStandardSurface1SG.msg" "materialInfo1.sg";
connectAttr "aiStandardSurface1.msg" "materialInfo1.m";
connectAttr "aiStandardSurface1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "Poly_lambert1_BaseColor_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Poly_lambert1_BaseColor_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Poly_lambert1_BaseColor_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Poly_lambert1_BaseColor_1.ws";
connectAttr "place2dTexture1.c" "Poly_lambert1_BaseColor_1.c";
connectAttr "place2dTexture1.tf" "Poly_lambert1_BaseColor_1.tf";
connectAttr "place2dTexture1.rf" "Poly_lambert1_BaseColor_1.rf";
connectAttr "place2dTexture1.mu" "Poly_lambert1_BaseColor_1.mu";
connectAttr "place2dTexture1.mv" "Poly_lambert1_BaseColor_1.mv";
connectAttr "place2dTexture1.s" "Poly_lambert1_BaseColor_1.s";
connectAttr "place2dTexture1.wu" "Poly_lambert1_BaseColor_1.wu";
connectAttr "place2dTexture1.wv" "Poly_lambert1_BaseColor_1.wv";
connectAttr "place2dTexture1.re" "Poly_lambert1_BaseColor_1.re";
connectAttr "place2dTexture1.of" "Poly_lambert1_BaseColor_1.of";
connectAttr "place2dTexture1.r" "Poly_lambert1_BaseColor_1.ro";
connectAttr "place2dTexture1.n" "Poly_lambert1_BaseColor_1.n";
connectAttr "place2dTexture1.vt1" "Poly_lambert1_BaseColor_1.vt1";
connectAttr "place2dTexture1.vt2" "Poly_lambert1_BaseColor_1.vt2";
connectAttr "place2dTexture1.vt3" "Poly_lambert1_BaseColor_1.vt3";
connectAttr "place2dTexture1.vc1" "Poly_lambert1_BaseColor_1.vc1";
connectAttr "place2dTexture1.o" "Poly_lambert1_BaseColor_1.uv";
connectAttr "place2dTexture1.ofs" "Poly_lambert1_BaseColor_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture2.c" "file1.c";
connectAttr "place2dTexture2.tf" "file1.tf";
connectAttr "place2dTexture2.rf" "file1.rf";
connectAttr "place2dTexture2.mu" "file1.mu";
connectAttr "place2dTexture2.mv" "file1.mv";
connectAttr "place2dTexture2.s" "file1.s";
connectAttr "place2dTexture2.wu" "file1.wu";
connectAttr "place2dTexture2.wv" "file1.wv";
connectAttr "place2dTexture2.re" "file1.re";
connectAttr "place2dTexture2.of" "file1.of";
connectAttr "place2dTexture2.r" "file1.ro";
connectAttr "place2dTexture2.n" "file1.n";
connectAttr "place2dTexture2.vt1" "file1.vt1";
connectAttr "place2dTexture2.vt2" "file1.vt2";
connectAttr "place2dTexture2.vt3" "file1.vt3";
connectAttr "place2dTexture2.vc1" "file1.vc1";
connectAttr "place2dTexture2.o" "file1.uv";
connectAttr "place2dTexture2.ofs" "file1.fs";
connectAttr "file1.oa" "bump2d1.bv";
connectAttr "polyTweakUV2.out" "polySplit12.ip";
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Poly_lambert1_BaseColor_1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "aiStandardSurface1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "aiStandardSurface1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "bump2d1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Poly_lambert1_BaseColor_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
// End of Poligon.ma
