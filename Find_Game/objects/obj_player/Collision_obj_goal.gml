//+1 Counter
goals_collected +=1;

//Destroy collected item
with (other) {
	instance_destroy();
}

// Item Check
if (goals_collected >= 10) {
	show_message("You Win!");
	room_restart();
}