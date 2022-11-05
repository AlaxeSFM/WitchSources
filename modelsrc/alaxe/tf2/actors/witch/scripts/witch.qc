$modelname "alaxe/tf2/actors/witch.mdl"


//------------------------------------------------------------------
// Meshes
//------------------------------------------------------------------

$pushd "../parts"

$model "head" "witch_head_out_final" {

eyeball righteye "bip_head" -1.48 -1.39 75.39 "eyeball_r" 1.00 4 "pupil_r" .9
eyeball lefteye "bip_head" 1.48 -1.39 75.39 "eyeball_l" 1.00 -4 "pupil_r" .9

flexcontroller eyes range -45 45 eyes_updown
flexcontroller eyes range -45 45 eyes_rightleft
}

$bodygroup "Hat" {

studio "hat"
blank

}

$bodygroup "Hair" {

studio "hair_simple"
studio "hair_advanced"
studio "hair_ponytail"
blank

}

$bodygroup "Body" {

studio "body_apron_simple"
studio "body_apron_advanced"
studio "body_simple"
studio "body_advanced"
blank

}

$bodygroup "Hands" {

studio "witch_hands"
blank

}


//------------------------------------------------------------------
// Procedural Bones
//------------------------------------------------------------------


$proceduralbones "witch_procedurals.vrd"



//------------------------------------------------------------------
// Surface Properties
//------------------------------------------------------------------

$surfaceprop "flesh"

$mostlyopaque 


//------------------------------------------------------------------
// Materials
//------------------------------------------------------------------



$cdmaterials "models/alaxe/tf2/actors/witch/"
$cdmaterials "models/alaxe/tf2/actors/witch/zombie/"
$cdmaterials "models/alaxe/tf2/actors/witch/alternate_costumes/"
$cdmaterials "models/alaxe/tf2/actors/witch/hwm/"
$cdmaterials "models/alaxe/tf2/actors/shared/"

$texturegroup "skinfamilies"
{
	{ "eyeball_l"			"eyeball_r"			"tongue"			"witch_face"			"witch_body"			"witch_hands"			"witch_hair"				"witch_hair_ponytail"			"witch_hat"				"witch_body_noapron" }
	{ "eyeball_l"			"eyeball_r"			"tongue"			"witch_face_shine"		"witch_body_shine"		"witch_hands_shine"		"witch_hair_shine"			"witch_hair_ponytail_shine" 					"witch_hat_shine" 		"witch_body_noapron_shine" }
	{ "eyeball_spectral" 	"eyeball_spectral" 	"tongue_spectral" 	"witch_face_spectral" 	"witch_body_spectral" 	"witch_hands_spectral" 	"witch_hair_spectral" 		"witch_hair_ponytail_spectral" 	"witch_hat_spectral" 	"witch_body_noapron_spectral"  }

}


//------------------------------------------------------------------
// Attachments
//------------------------------------------------------------------


$attachment "eyes" "bip_head" 0.00 -1.39 75.39 absolute
$attachment "mouth" "bip_head" 0.80 -5.80 -0.15 rotate 0 -80 -90
$attachment "Prop_R" "prop_bone_R" 0 0 0 rotate 0 0 0
$attachment "Prop_L" "prop_bone_L" 0 0 0 rotate 0 0 0



//------------------------------------------------------------------
// Animations
//------------------------------------------------------------------


$sequence "IdlePos" "../animations/IdlePos"





//------------------------------------------------------------------
// Physics
//------------------------------------------------------------------


$popd

$include "witch_physics.qci"