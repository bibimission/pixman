/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

draw_set_font(AvenuePixel);
draw_set_halign(fa_center);
draw_set_color(c_ltgray);


draw_text(x, y, "Felicitations !");

draw_text(x, y + 100, "Vous avez triomphe de vos terribles ennemis !");

draw_text(x, y + 200, "Merci d'avoir joue a Pix'man !");

var scoreText = "Score final : " + global.PLAYER_SCORE;

draw_text(x, y +300, scoreText);
