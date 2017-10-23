//Maya ASCII 2017ff05 scene
//Name: Z360 Mesh Preview.ma
//Last modified: Thu, Jul 27, 2017 10:50:58 AM
//Codeset: UTF-8
requires maya "2017ff05";
requires -nodeType "stereoRigTransform" -nodeType "stereoRigFrustum" "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Mac OS X 10.12.5";
fileInfo "vrayBuild" "27539 a18d2c8";
createNode transform -s -n "persp";
	rename -uid "F228E80C-E446-5CE9-281A-FDB0057C8174";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 361.22665419235108 161.88162748574874 -531.5289776818463 ;
	setAttr ".r" -type "double3" -14.138352729540706 505.79999999991014 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CB12D54E-0146-D26F-AA54-4AA982D73809";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 662.73177323651089;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -4.1723251342773438e-05 0 -3.5762786865234375e-05 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4352A5F6-EF4D-F6ED-BE25-CF97041C2204";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3DDD059E-6042-7980-B5A1-B0985A0C267F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "ABECA65A-1B4D-7703-5D08-C6B57E82F9BF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1FD7E16B-0548-49B0-06F1-D89F7F5EE500";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "B702D36C-384C-6CBF-1DBB-DA9B03F16A79";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BE00BF20-DE4F-DD1A-3CBF-F2A2C7A9E172";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "z360Sphere1";
	rename -uid "87BF11BE-0B4B-EF60-B023-D48DD4378F31";
	addAttr -ci true -sn "EnableRGBTexture" -ln "EnableRGBTexture" -nn "Enable RGB Texture" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "EnableZ360Displacement" -ln "EnableZ360Displacement" -nn "Enable Z360 Displacement" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -uaf -sn "z360Filename" -ln "z360Filename" -nn "Z360 Filename" 
		-dt "string";
	addAttr -ci true -sn "UseImageSequence" -ln "UseImageSequence" -nn "Use Image Sequence" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "DisplacementGain" -ln "DisplacementGain" -nn "Displacement Gain" 
		-dv 1 -min -2 -max 2 -at "double";
	addAttr -ci true -sn "DisplacementOffset" -ln "DisplacementOffset" -nn "Displacement Offset" 
		-max 2 -at "double";
	addAttr -ci true -sn "DisplacementScale" -ln "DisplacementScale" -nn "Displacement Scale" 
		-dv 1 -at "double";
	setAttr ".s" -type "double3" 100 100 100 ;
	setAttr -cb on ".EnableRGBTexture" yes;
	setAttr -cb on ".EnableZ360Displacement" yes;
	setAttr -cb on ".z360Filename" -type "string" "/Users/andrew/Desktop/Z360-Mesh-Preview/Z360_Maya_Project//sourceimages/z360_stereo.0001.jpg";
	setAttr -k on ".UseImageSequence";
	setAttr -cb on ".DisplacementGain";
	setAttr -cb on ".DisplacementOffset";
	setAttr -cb on ".DisplacementScale";
createNode mesh -n "z360SphereShape1" -p "z360Sphere1";
	rename -uid "BECDD900-544D-650B-3887-2A878BAA1C85";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".lev" 4;
	setAttr ".sdt" 3;
	setAttr ".ugsdt" no;
	setAttr ".dsc" yes;
	setAttr ".uspr" no;
	setAttr ".dr" 1;
	setAttr ".dsm" 2;
createNode stereoRigTransform -n "z360StereoCamera";
	rename -uid "33EF5BF3-7345-4B70-BAA1-2285EAB93AD5";
	addAttr -ci true -sn "stereoRigType" -ln "stereoRigType" -dt "string";
	addAttr -s false -ci true -sn "centerCam" -ln "centerCam" -at "message";
	addAttr -s false -ci true -sn "leftCam" -ln "leftCam" -at "message";
	addAttr -s false -ci true -sn "rightCam" -ln "rightCam" -at "message";
	setAttr ".t" -type "double3" 11.491967707146511 -0.15671920990619412 -10.08496077318957 ;
	setAttr ".r" -type "double3" 1.1999999999984667 402.39999999997599 -1.3459491499033109e-16 ;
	setAttr ".stereoRigType" -type "string" "StereoCamera";
createNode stereoRigCamera -n "z360StereoCameraCenterCamShape" -p "z360StereoCamera";
	rename -uid "820D4C0C-144F-FFD6-826C-13BF12D5C351";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 10.392;
	setAttr ".coi" 7.4833381614569081;
	setAttr ".sm" 2;
createNode stereoRigFrustum -n "z360StereoCameraFrustum" -p "z360StereoCamera";
	rename -uid "F98C790F-9441-DCD0-A05A-778256762FC9";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "stereoCameraLeft" -p "z360StereoCamera";
	rename -uid "62298067-A642-2255-8EB2-78AB7E179818";
	setAttr -k off ".v";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode camera -n "stereoCameraLeftShape" -p "stereoCameraLeft";
	rename -uid "CFD083C8-9847-D33F-6A6B-B087C978A93E";
	setAttr -k off ".v";
	setAttr -k off ".hfa";
	setAttr -k off ".vfa";
	setAttr -k off ".fl";
	setAttr -k off ".lsr";
	setAttr -k off ".fs";
	setAttr -k off ".fd";
	setAttr -k off ".sa";
	setAttr -k off ".coi";
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr -l on ".cnc";
	setAttr -l on ".cfp";
	setAttr -l on ".dcf";
createNode transform -n "stereoCameraRight" -p "z360StereoCamera";
	rename -uid "02D3C12A-E647-5E2C-A187-79B84853518C";
	setAttr -k off ".v";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode camera -n "stereoCameraRightShape" -p "stereoCameraRight";
	rename -uid "D88436DA-A34D-F68E-E60D-E794E11CD5FB";
	setAttr -k off ".v";
	setAttr -k off ".hfa";
	setAttr -k off ".vfa";
	setAttr -k off ".fl";
	setAttr -k off ".lsr";
	setAttr -k off ".fs";
	setAttr -k off ".fd";
	setAttr -k off ".sa";
	setAttr -k off ".coi";
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr -l on ".cnc";
	setAttr -l on ".cfp";
	setAttr -l on ".dcf";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "608DE9DE-3D4E-CA79-38C8-26A318AF5D5F";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "6919111C-8045-1C1C-A448-8AB110181235";
createNode displayLayer -n "defaultLayer";
	rename -uid "4E80A786-A143-AA83-C577-B6953CD8A860";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7791269F-7841-D073-7EC1-2FB22F53BA8D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "27079056-DA43-CB52-B76B-A693467ED223";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E0170965-FC40-DFF2-1E9A-7CA11AA41E68";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "461BD9F6-064A-4A97-6C92-9193347C53C3";
createNode polySphere -n "polySphere1";
	rename -uid "E1E0CB1F-B946-45B9-37FE-CE9BEE277498";
	setAttr ".sa" 48;
	setAttr ".sh" 24;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4AAD3766-5142-6C08-5723-1A9572FFF402";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1982\n            -height 1090\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1982\n            -height 1090\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n"
		+ "                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"PlayblastVR View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"PlayblastVR View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"stereoCameraRight\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 0\n            -holdOuts 1\n            -selectionHiliteDisplay 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 510\n            -height 971\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"z360StereoCameraCenterCamShape\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 0\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 697\n                -height 702\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"anaglyphLum\" \n                -rigRoot \"|z360StereoCamera\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Stereo\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"Stereo\\\" -l (localizedPanelLabel(\\\"Stereo\\\")) -mbv $menusOkayInPanels `;\\nstring $editorName = ($panelName+\\\"Editor\\\");\\n            stereoCameraView -e \\n                -editorChanged \\\"updateModelPanelBar\\\" \\n                -camera \\\"z360StereoCameraCenterCamShape\\\" \\n                -useInteractiveMode 0\\n                -displayLights \\\"default\\\" \\n                -displayAppearance \\\"smoothShaded\\\" \\n                -activeOnly 0\\n                -ignorePanZoom 0\\n                -wireframeOnShaded 0\\n                -headsUpDisplay 1\\n                -holdOuts 1\\n                -selectionHiliteDisplay 0\\n                -useDefaultMaterial 0\\n                -bufferMode \\\"double\\\" \\n                -twoSidedLighting 1\\n                -backfaceCulling 0\\n                -xray 0\\n                -jointXray 0\\n                -activeComponentsXray 0\\n                -displayTextures 1\\n                -smoothWireframe 0\\n                -lineWidth 1\\n                -textureAnisotropic 0\\n                -textureHilight 1\\n                -textureSampling 2\\n                -textureDisplay \\\"modulate\\\" \\n                -textureMaxSize 16384\\n                -fogging 0\\n                -fogSource \\\"fragment\\\" \\n                -fogMode \\\"linear\\\" \\n                -fogStart 0\\n                -fogEnd 100\\n                -fogDensity 0.1\\n                -fogColor 0.5 0.5 0.5 1 \\n                -depthOfFieldPreview 1\\n                -maxConstantTransparency 1\\n                -rendererName \\\"vp2Renderer\\\" \\n                -rendererOverrideName \\\"stereoOverrideVP2\\\" \\n                -objectFilterShowInHUD 1\\n                -isFiltered 0\\n                -colorResolution 256 256 \\n                -bumpResolution 512 512 \\n                -textureCompression 0\\n                -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n                -transpInShadows 0\\n                -cullingOverride \\\"none\\\" \\n                -lowQualityLighting 0\\n                -maximumNumHardwareLights 1\\n                -occlusionCulling 0\\n                -shadingModel 0\\n                -useBaseRenderer 0\\n                -useReducedRenderer 0\\n                -smallObjectCulling 0\\n                -smallObjectThreshold -1 \\n                -interactiveDisableShadows 0\\n                -interactiveBackFaceCull 0\\n                -sortTransparent 1\\n                -nurbsCurves 1\\n                -nurbsSurfaces 1\\n                -polymeshes 1\\n                -subdivSurfaces 1\\n                -planes 1\\n                -lights 1\\n                -cameras 1\\n                -controlVertices 1\\n                -hulls 1\\n                -grid 0\\n                -imagePlane 1\\n                -joints 1\\n                -ikHandles 1\\n                -deformers 1\\n                -dynamics 1\\n                -particleInstancers 1\\n                -fluids 1\\n                -hairSystems 1\\n                -follicles 1\\n                -nCloths 1\\n                -nParticles 1\\n                -nRigids 1\\n                -dynamicConstraints 1\\n                -locators 1\\n                -manipulators 1\\n                -pluginShapes 1\\n                -dimensions 1\\n                -handles 1\\n                -pivots 1\\n                -textures 1\\n                -strokes 1\\n                -motionTrails 1\\n                -clipGhosts 1\\n                -greasePencils 1\\n                -shadows 0\\n                -captureSequenceNumber -1\\n                -width 697\\n                -height 702\\n                -sceneRenderFilter 0\\n                -displayMode \\\"anaglyphLum\\\" \\n                -rigRoot \\\"|z360StereoCamera\\\" \\n                -viewColor 0 0 0 1 \\n                -useCustomBackground 1\\n                $editorName;\\n            stereoCameraView -e -viewSelected 0 $editorName;\\n            stereoCameraView -e \\n                -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Stereo\\\")) -mbv $menusOkayInPanels  $panelName;\\nstring $editorName = ($panelName+\\\"Editor\\\");\\n            stereoCameraView -e \\n                -editorChanged \\\"updateModelPanelBar\\\" \\n                -camera \\\"z360StereoCameraCenterCamShape\\\" \\n                -useInteractiveMode 0\\n                -displayLights \\\"default\\\" \\n                -displayAppearance \\\"smoothShaded\\\" \\n                -activeOnly 0\\n                -ignorePanZoom 0\\n                -wireframeOnShaded 0\\n                -headsUpDisplay 1\\n                -holdOuts 1\\n                -selectionHiliteDisplay 0\\n                -useDefaultMaterial 0\\n                -bufferMode \\\"double\\\" \\n                -twoSidedLighting 1\\n                -backfaceCulling 0\\n                -xray 0\\n                -jointXray 0\\n                -activeComponentsXray 0\\n                -displayTextures 1\\n                -smoothWireframe 0\\n                -lineWidth 1\\n                -textureAnisotropic 0\\n                -textureHilight 1\\n                -textureSampling 2\\n                -textureDisplay \\\"modulate\\\" \\n                -textureMaxSize 16384\\n                -fogging 0\\n                -fogSource \\\"fragment\\\" \\n                -fogMode \\\"linear\\\" \\n                -fogStart 0\\n                -fogEnd 100\\n                -fogDensity 0.1\\n                -fogColor 0.5 0.5 0.5 1 \\n                -depthOfFieldPreview 1\\n                -maxConstantTransparency 1\\n                -rendererName \\\"vp2Renderer\\\" \\n                -rendererOverrideName \\\"stereoOverrideVP2\\\" \\n                -objectFilterShowInHUD 1\\n                -isFiltered 0\\n                -colorResolution 256 256 \\n                -bumpResolution 512 512 \\n                -textureCompression 0\\n                -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n                -transpInShadows 0\\n                -cullingOverride \\\"none\\\" \\n                -lowQualityLighting 0\\n                -maximumNumHardwareLights 1\\n                -occlusionCulling 0\\n                -shadingModel 0\\n                -useBaseRenderer 0\\n                -useReducedRenderer 0\\n                -smallObjectCulling 0\\n                -smallObjectThreshold -1 \\n                -interactiveDisableShadows 0\\n                -interactiveBackFaceCull 0\\n                -sortTransparent 1\\n                -nurbsCurves 1\\n                -nurbsSurfaces 1\\n                -polymeshes 1\\n                -subdivSurfaces 1\\n                -planes 1\\n                -lights 1\\n                -cameras 1\\n                -controlVertices 1\\n                -hulls 1\\n                -grid 0\\n                -imagePlane 1\\n                -joints 1\\n                -ikHandles 1\\n                -deformers 1\\n                -dynamics 1\\n                -particleInstancers 1\\n                -fluids 1\\n                -hairSystems 1\\n                -follicles 1\\n                -nCloths 1\\n                -nParticles 1\\n                -nRigids 1\\n                -dynamicConstraints 1\\n                -locators 1\\n                -manipulators 1\\n                -pluginShapes 1\\n                -dimensions 1\\n                -handles 1\\n                -pivots 1\\n                -textures 1\\n                -strokes 1\\n                -motionTrails 1\\n                -clipGhosts 1\\n                -greasePencils 1\\n                -shadows 0\\n                -captureSequenceNumber -1\\n                -width 697\\n                -height 702\\n                -sceneRenderFilter 0\\n                -displayMode \\\"anaglyphLum\\\" \\n                -rigRoot \\\"|z360StereoCamera\\\" \\n                -viewColor 0 0 0 1 \\n                -useCustomBackground 1\\n                $editorName;\\n            stereoCameraView -e -viewSelected 0 $editorName;\\n            stereoCameraView -e \\n                -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "FAAEB8DD-2D4D-C95E-B3F4-A387087D1CAA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 24 ";
	setAttr ".st" 6;
createNode surfaceShader -n "z360SurfaceShader";
	rename -uid "1492A061-634C-B676-0DD5-36AFDD397F1F";
createNode shadingEngine -n "z360SurfaceShaderSG";
	rename -uid "F86722B8-8C4E-D2DD-45CA-79AA1BE21340";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "77229380-7E43-0C43-20A7-6D95FAE45E1F";
createNode file -n "z360ColorFile";
	rename -uid "2D2A5F15-084A-52F0-FEC0-87904632C693";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "z360ColorPlace2dTexture1";
	rename -uid "C2A92E75-D444-EF17-C042-41BBD6D97A75";
	setAttr ".c" -type "float2" 1 2 ;
	setAttr ".re" -type "float2" -1 1 ;
createNode file -n "z360DepthFile";
	rename -uid "3EE95AE9-FE47-C30D-C6D9-0E883E621837";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "z360DepthPlace2dTexture1";
	rename -uid "85D18979-124B-1CDD-5303-C4AA00CA2E9A";
	setAttr ".c" -type "float2" 1 2 ;
	setAttr ".re" -type "float2" -1 1 ;
createNode displacementShader -n "z360DisplacementShader";
	rename -uid "6F5FAFB1-8F4E-5109-3068-1B825BA380DE";
createNode expression -n "expression1";
	rename -uid "DF504D80-D342-04B3-1406-239989BDBD77";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if (.I[0] == 1)\n{\n\t.O[0] = 1;\n}else{\n\t.O[0] = 0;\n}";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "CEE2C1BC-4449-AC58-4FAE-EE8138F98D52";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -914.32962743295263 -550.23423312797559 ;
	setAttr ".tgi[0].vh" -type "double2" 137.85671068523422 258.98915168172863 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -680;
	setAttr ".tgi[0].ni[0].y" -105.71428680419922;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -1007.1428833007812;
	setAttr ".tgi[0].ni[1].y" -127.14286041259766;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -372.85714721679688;
	setAttr ".tgi[0].ni[2].y" -105.71428680419922;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -64.285713195800781;
	setAttr ".tgi[0].ni[3].y" -64.285713195800781;
	setAttr ".tgi[0].ni[3].nvs" 1923;
createNode expression -n "expression3";
	rename -uid "4F3AF612-8149-A87A-B0CA-1B9CE173E1B6";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=frame";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".cbr" 1024;
	setAttr ".bbr" 1024;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mayaHardware2";
	setAttr ".outf" 32;
	setAttr ".an" yes;
	setAttr ".ef" 1;
	setAttr ".pff" yes;
	setAttr ".ifp" -type "string" "<Scene>/<Scene>_<Camera>_<RenderLayer>";
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7777777910232544;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polySphere1.out" "z360SphereShape1.i";
connectAttr "z360Sphere1.EnableZ360Displacement" "z360SphereShape1.sdis";
connectAttr "z360StereoCameraCenterCamShape.sm" "z360StereoCamera.sm";
connectAttr "z360StereoCameraCenterCamShape.isep" "z360StereoCamera.isep";
connectAttr "z360StereoCameraCenterCamShape.zp" "z360StereoCamera.zp";
connectAttr "z360StereoCameraCenterCamShape.tia" "z360StereoCamera.tia";
connectAttr "z360StereoCameraCenterCamShape.fofr" "z360StereoCamera.fofr";
connectAttr "z360StereoCameraCenterCamShape.fofl" "z360StereoCamera.fofl";
connectAttr "z360StereoCameraCenterCamShape.fl" "z360StereoCamera.fli";
connectAttr "z360StereoCamera.msg" "z360StereoCamera.centerCam";
connectAttr "stereoCameraLeft.msg" "z360StereoCamera.leftCam";
connectAttr "stereoCameraRight.msg" "z360StereoCamera.rightCam";
connectAttr "z360StereoCameraCenterCamShape.dncp" "z360StereoCameraFrustum.dnc";
connectAttr "z360StereoCameraCenterCamShape.dfcp" "z360StereoCameraFrustum.dfc";
connectAttr "z360StereoCameraCenterCamShape.df" "z360StereoCameraFrustum.df";
connectAttr "z360StereoCameraCenterCamShape.zpp" "z360StereoCameraFrustum.zpp";
connectAttr "z360StereoCameraCenterCamShape.zpt" "z360StereoCameraFrustum.zpt";
connectAttr "z360StereoCameraCenterCamShape.zpc" "z360StereoCameraFrustum.zpc";
connectAttr "z360StereoCameraCenterCamShape.svv" "z360StereoCameraFrustum.svv";
connectAttr "z360StereoCameraCenterCamShape.svt" "z360StereoCameraFrustum.svt";
connectAttr "z360StereoCameraCenterCamShape.svc" "z360StereoCameraFrustum.svc";
connectAttr "z360StereoCameraCenterCamShape.ss" "z360StereoCameraFrustum.ss";
connectAttr "z360StereoCameraCenterCamShape.zp" "z360StereoCameraFrustum.zp";
connectAttr "stereoCameraLeft.msg" "z360StereoCameraFrustum.lc";
connectAttr "stereoCameraRight.msg" "z360StereoCameraFrustum.rc";
connectAttr "z360StereoCameraCenterCamShape.msg" "z360StereoCameraFrustum.cc";
connectAttr "z360StereoCamera.slo" "stereoCameraLeft.tx" -l on;
connectAttr "z360StereoCamera.sla" "stereoCameraLeft.ry" -l on;
connectAttr "z360StereoCameraCenterCamShape.hfa" "stereoCameraLeftShape.hfa";
connectAttr "z360StereoCameraCenterCamShape.vfa" "stereoCameraLeftShape.vfa";
connectAttr "z360StereoCameraCenterCamShape.fl" "stereoCameraLeftShape.fl";
connectAttr "z360StereoCameraCenterCamShape.lsr" "stereoCameraLeftShape.lsr";
connectAttr "z360StereoCameraCenterCamShape.fs" "stereoCameraLeftShape.fs";
connectAttr "z360StereoCameraCenterCamShape.fd" "stereoCameraLeftShape.fd";
connectAttr "z360StereoCameraCenterCamShape.sa" "stereoCameraLeftShape.sa";
connectAttr "z360StereoCameraCenterCamShape.cpt" "stereoCameraLeftShape.cpt";
connectAttr "z360StereoCameraCenterCamShape.ff" "stereoCameraLeftShape.ff";
connectAttr "z360StereoCameraCenterCamShape.dfg" "stereoCameraLeftShape.dfg";
connectAttr "z360StereoCameraCenterCamShape.dr" "stereoCameraLeftShape.dr";
connectAttr "z360StereoCameraCenterCamShape.ncp" "stereoCameraLeftShape.ncp";
connectAttr "z360StereoCameraCenterCamShape.fcp" "stereoCameraLeftShape.fcp";
connectAttr "z360StereoCamera.fbol" "stereoCameraLeftShape.hfo";
connectAttr "z360StereoCamera.sro" "stereoCameraRight.tx" -l on;
connectAttr "z360StereoCamera.sra" "stereoCameraRight.ry" -l on;
connectAttr "z360StereoCameraCenterCamShape.hfa" "stereoCameraRightShape.hfa";
connectAttr "z360StereoCameraCenterCamShape.vfa" "stereoCameraRightShape.vfa";
connectAttr "z360StereoCameraCenterCamShape.fl" "stereoCameraRightShape.fl";
connectAttr "z360StereoCameraCenterCamShape.lsr" "stereoCameraRightShape.lsr";
connectAttr "z360StereoCameraCenterCamShape.fs" "stereoCameraRightShape.fs";
connectAttr "z360StereoCameraCenterCamShape.fd" "stereoCameraRightShape.fd";
connectAttr "z360StereoCameraCenterCamShape.sa" "stereoCameraRightShape.sa";
connectAttr "z360StereoCameraCenterCamShape.cpt" "stereoCameraRightShape.cpt";
connectAttr "z360StereoCameraCenterCamShape.ff" "stereoCameraRightShape.ff";
connectAttr "z360StereoCameraCenterCamShape.dfg" "stereoCameraRightShape.dfg";
connectAttr "z360StereoCameraCenterCamShape.dr" "stereoCameraRightShape.dr";
connectAttr "z360StereoCameraCenterCamShape.ncp" "stereoCameraRightShape.ncp";
connectAttr "z360StereoCameraCenterCamShape.fcp" "stereoCameraRightShape.fcp";
connectAttr "z360StereoCamera.fbor" "stereoCameraRightShape.hfo";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "z360SurfaceShaderSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "z360SurfaceShaderSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "z360ColorFile.oc" "z360SurfaceShader.oc";
connectAttr "z360SurfaceShader.oc" "z360SurfaceShaderSG.ss";
connectAttr "z360SphereShape1.iog" "z360SurfaceShaderSG.dsm" -na;
connectAttr "z360DisplacementShader.d" "z360SurfaceShaderSG.ds";
connectAttr "z360SurfaceShaderSG.msg" "materialInfo1.sg";
connectAttr "z360SurfaceShader.msg" "materialInfo1.m";
connectAttr "z360SurfaceShader.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "z360ColorFile.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "z360ColorFile.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "z360ColorFile.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "z360ColorFile.ws";
connectAttr "z360ColorPlace2dTexture1.c" "z360ColorFile.c";
connectAttr "z360ColorPlace2dTexture1.tf" "z360ColorFile.tf";
connectAttr "z360ColorPlace2dTexture1.rf" "z360ColorFile.rf";
connectAttr "z360ColorPlace2dTexture1.mu" "z360ColorFile.mu";
connectAttr "z360ColorPlace2dTexture1.mv" "z360ColorFile.mv";
connectAttr "z360ColorPlace2dTexture1.s" "z360ColorFile.s";
connectAttr "z360ColorPlace2dTexture1.wu" "z360ColorFile.wu";
connectAttr "z360ColorPlace2dTexture1.wv" "z360ColorFile.wv";
connectAttr "z360ColorPlace2dTexture1.re" "z360ColorFile.re";
connectAttr "z360ColorPlace2dTexture1.of" "z360ColorFile.of";
connectAttr "z360ColorPlace2dTexture1.r" "z360ColorFile.ro";
connectAttr "z360ColorPlace2dTexture1.n" "z360ColorFile.n";
connectAttr "z360ColorPlace2dTexture1.vt1" "z360ColorFile.vt1";
connectAttr "z360ColorPlace2dTexture1.vt2" "z360ColorFile.vt2";
connectAttr "z360ColorPlace2dTexture1.vt3" "z360ColorFile.vt3";
connectAttr "z360ColorPlace2dTexture1.vc1" "z360ColorFile.vc1";
connectAttr "z360ColorPlace2dTexture1.o" "z360ColorFile.uv";
connectAttr "z360ColorPlace2dTexture1.ofs" "z360ColorFile.fs";
connectAttr "z360Sphere1.z360Filename" "z360ColorFile.ftn";
connectAttr "z360Sphere1.UseImageSequence" "z360ColorFile.ufe";
connectAttr "expression1.out[0]" "z360ColorPlace2dTexture1.tfv";
connectAttr ":defaultColorMgtGlobals.cme" "z360DepthFile.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "z360DepthFile.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "z360DepthFile.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "z360DepthFile.ws";
connectAttr "z360DepthPlace2dTexture1.c" "z360DepthFile.c";
connectAttr "z360DepthPlace2dTexture1.tf" "z360DepthFile.tf";
connectAttr "z360DepthPlace2dTexture1.rf" "z360DepthFile.rf";
connectAttr "z360DepthPlace2dTexture1.mu" "z360DepthFile.mu";
connectAttr "z360DepthPlace2dTexture1.mv" "z360DepthFile.mv";
connectAttr "z360DepthPlace2dTexture1.s" "z360DepthFile.s";
connectAttr "z360DepthPlace2dTexture1.wu" "z360DepthFile.wu";
connectAttr "z360DepthPlace2dTexture1.wv" "z360DepthFile.wv";
connectAttr "z360DepthPlace2dTexture1.re" "z360DepthFile.re";
connectAttr "z360DepthPlace2dTexture1.of" "z360DepthFile.of";
connectAttr "z360DepthPlace2dTexture1.r" "z360DepthFile.ro";
connectAttr "z360DepthPlace2dTexture1.n" "z360DepthFile.n";
connectAttr "z360DepthPlace2dTexture1.vt1" "z360DepthFile.vt1";
connectAttr "z360DepthPlace2dTexture1.vt2" "z360DepthFile.vt2";
connectAttr "z360DepthPlace2dTexture1.vt3" "z360DepthFile.vt3";
connectAttr "z360DepthPlace2dTexture1.vc1" "z360DepthFile.vc1";
connectAttr "z360DepthPlace2dTexture1.o" "z360DepthFile.uv";
connectAttr "z360DepthPlace2dTexture1.ofs" "z360DepthFile.fs";
connectAttr "z360Sphere1.z360Filename" "z360DepthFile.ftn";
connectAttr "z360Sphere1.DisplacementGain" "z360DepthFile.ag";
connectAttr "z360Sphere1.DisplacementOffset" "z360DepthFile.ao";
connectAttr "z360Sphere1.UseImageSequence" "z360DepthFile.ufe";
connectAttr "expression3.out[0]" "z360DepthFile.fe";
connectAttr "z360DepthFile.oa" "z360DisplacementShader.d";
connectAttr "z360Sphere1.DisplacementScale" "z360DisplacementShader.scl";
connectAttr "z360Sphere1.EnableRGBTexture" "expression1.in[0]";
connectAttr ":time1.o" "expression1.tim";
connectAttr "z360ColorPlace2dTexture1.msg" "expression1.obm";
connectAttr "z360DepthFile.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "z360DepthPlace2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "z360DisplacementShader.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "z360SurfaceShaderSG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr ":time1.o" "expression3.tim";
connectAttr "z360SurfaceShaderSG.pa" ":renderPartition.st" -na;
connectAttr "z360SurfaceShader.msg" ":defaultShaderList1.s" -na;
connectAttr "z360DisplacementShader.msg" ":defaultShaderList1.s" -na;
connectAttr "z360ColorPlace2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "z360DepthPlace2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "z360ColorFile.msg" ":defaultTextureList1.tx" -na;
connectAttr "z360DepthFile.msg" ":defaultTextureList1.tx" -na;
// End of Z360 Mesh Preview.ma
