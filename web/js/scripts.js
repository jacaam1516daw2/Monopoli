function preview() {
	var avatar = document.getElementById('player').value;
	if (avatar != "") {
		document.getElementById('pl').innerHTML = "<img src='images/player" + avatar + ".png' width=50px height=75px>";
	}
}