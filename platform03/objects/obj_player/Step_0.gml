
// ------------------------------------------------
// Functions
// ------------------------------------------------
function reset () {
	phy_position_x = 10;
	phy_position_y = 50;
}



// ------------------------------------------------
// Detect key presses for out player
// ------------------------------------------------
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
reset_key = keyboard_check(vk_space);

// ------------------------------------------------
// Set xspd and yspd based on out key presses
// ------------------------------------------------
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;


// ------------------------------------------------
// Set the X and Y position of our player
// ------------------------------------------------
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


// ------------------------------------------------
// Reset player position
// ------------------------------------------------
if reset_key != 0 {
  reset();
}

if xspd == 0 && yspd == 0 {
	image_index = 0;
}





// Debug
//show_debug_message(reset_key);

