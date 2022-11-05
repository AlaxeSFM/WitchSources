$modelname "alaxe/tf2/actors/witch_zombie.mdl"


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


$renamematerial "eyeball_l" "eyeball_zombie"
$renamematerial "eyeball_r" "eyeball_zombie"
$renamematerial "witch_face" "witch_face_zombie"
$renamematerial "witch_body" "witch_body_zombie"
$renamematerial "witch_body_noapron" "witch_body_noapron_zombie"
$renamematerial "witch_hat" "witch_hat_zombie"
$renamematerial "witch_hair" "witch_hair_zombie"
$renamematerial "witch_hair_ponytail" "witch_hair_ponytail_zombie"
$renamematerial "witch_hands" "witch_hands_zombie"
$renamematerial "tongue" "tongue_zombie"



$cdmaterials "models/alaxe/tf2/actors/witch/"
$cdmaterials "models/alaxe/tf2/actors/witch_zombie/"
$cdmaterials "models/alaxe/tf2/actors/witch/alternate_costumes/"
$cdmaterials "models/alaxe/tf2/actors/witch/hwm/"
$cdmaterials "models/alaxe/tf2/actors/shared/"




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