// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function set_ambient_music(musicIndex){
	//audio_sound_gain(global.CURRENT_MUSIC, 0, 5000); // Fade
	audio_stop_sound(global.CURRENT_MUSIC);
	global.CURRENT_MUSIC = musicIndex;
	audio_play_sound(global.CURRENT_MUSIC,10,true);
}