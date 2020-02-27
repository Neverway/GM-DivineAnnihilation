//==========================//
// Move camera to target
//==========================//
var targetX = argument[0];
var targetY = argument[1];
var moveToSpeed = argument[2];

x += ((targetX - x) * moveToSpeed) + random_range(-cameraShake, cameraShake);
y += ((targetY - y) * moveToSpeed) + random_range(-cameraShake, cameraShake);
