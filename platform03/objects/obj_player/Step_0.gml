// ------------------------------------------------
// Detect key presses for out player
// ------------------------------------------------
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
reset_key = keyboard_check(ord("q"));

// ------------------------------------------------
// Set xspd and yspd based on out key presses
// ------------------------------------------------
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

if reset_key != 0 {
	phy_position_x = 0;
	phy_position_x = 0;
}

// ------------------------------------------------
// Detect collisions
// ------------------------------------------------
if place_meeting(x+xspd, y, obj_ground) == true {
	xspd = 0;
}

if place_meeting(x, y+yspd, obj_ground) == true {
	yspd = 0;
}

// ------------------------------------------------
// Set the X and Y position of our player
// ------------------------------------------------
//x += xspd;
//y += yspd;

phy_position_x += xspd;
phy_position_y += yspd;

// ------------------------------------------------
// Set which sprite is displayed depending on 
// direction of travel
// ------------------------------------------------
if xspd > 0 {
	facing_direction = 4 // RIGHT
}

if xspd < 0 {
	facing_direction = 3 // LEFT
}
if yspd < 0 {
	facing_direction = 0 // UP
}

if yspd > 0 {
	facing_direction = 1 // DOWN
}


sprite_index = facing_direction;

