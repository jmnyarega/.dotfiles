//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	/* {"⌨", "sb-kbselect", 0, 30}, */
	/* {"", "cat /tmp/recordingicon 2>/dev/null",	0,	9}, */
	/* {"",	"tasks",	10,	26}, */
	/* {"",	"music",	0,	11}, */
	/* {"",	"pacpackages",	0,	8}, */
	/* {"",	"news",		0,	6}, */
	/* {"",	"price lbc \"LBRY Token\" 📚",			9000,	22}, */
	/* {"",	"price bat \"Basic Attention Token\" 🦁",	9000,	20}, */
	/* {"",	"price link \"Chainlink\" 🔗",			300,	25}, */
	/* {"",	"price xmr \"Monero\" 🔒",			9000,	24}, */
	/* {"",	"price eth Ethereum 🍸",	9000,	23}, */
	/* {"",	"price btc Bitcoin 💰",				9000,	21}, */
	/* {"",	"torrent",	20,	7}, */
	/* {"",	"memory",	10,	14}, */
	/* {"",	"cpu",		10,	18}, */
	/* {"",	"disk",	18000,	17}, */
	/* {"",	"forecast",	18000,	5}, */
	/* {"",	"mailbox",	180,	12}, */
	{"🎵",	"~/.local/bin/statusbar/sb-music",	1,	16},
	{"",	"~/.local/bin/statusbar/sb-microphone",	1,	17},
	{"",	"~/.local/bin/statusbar/sb-volume",	0,	11},
	{"",	"~/.local/bin/statusbar/sb-battery",	5,	3},
	{"",	"~/.local/bin/statusbar/sb-internet",	5,	4},
	{"",	"~/.local/bin/statusbar/sb-time",	30,	8},
	{"",	"~/.local/bin/statusbar/sb-clock",	24 * 60 * 60,	30},
	{"",	"~/.local/bin/statusbar/sb-help-icon",	0,	15},
};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = " | ";

// Have dwmblocks automatically recompile and run when you edit this file in
// vim with the following line in your vimrc/init.vim:

// autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }

