///initializes all global variables needed for the game

global.savenum = 1;
global.difficulty = 0;  //0 = medium, 1 = hard, 2 = very hard, 3 = impossible
global.death = 0;
global.time = 0;
global.timeMicro = 0;
global.saveRoom = 0;
global.savePlayerX = 0;
global.savePlayerY = 0;
global.savePlayerXScale = 1;
global.grav = 1;
global.actualGrav = 1.75;
global.saveGrav = 1;
global.maxHP = 10;
global.hp = global.maxHP;
global.coins = 0;
global.saveCoins = 0;

global.attackMin = 2;
global.attackMax = 4;
global.saveAttackMin = 2;
global.saveAttackMax = 4;
global.bonusAttack = 0;

global.transition = false;
global.roomChange = false;

for (var i = 8; i >= 0; i--)
{
    global.item[i] = 0;
    global.saveItem[i] = 0;
}

for (var i = 500; i >= 0; i--)
{
    global.treasureItem[i] = 0;
    global.saveTreasureItem[i] = 0;
}

global.headItem = 0;
global.chestItem = 0;
global.handItemOne = 0;
global.handItemTwo = 0;
global.legItem = 0 ;
global.footItemOne = 0;
global.footItemTwo = 0;

for (var i = 500; i >= 0; i--)
{
        global.oneTimeItem[i] = 0;
    global.saveOneTimeItem[i] = 0;
}

global.md5StrIn = "";

for (var i = 100; i >= 0; i--)
{
    global.trigger[i] = 0;
}

global.player_djump = 1;
global.player_xscale = 1;

global.gameStarted = 0;     //determines whether the game is in progress (enables saving, restarting, etc.)
global.noPause = 0;         //sets whether or not to allow pausing (useful for bosses to prevent desync)
global.autosave = 0;        //keeps track of whether or not to autosave the next time the player is created
global.gamePaused = 0;      //keeps track of whether the game is paused or not
global.pauseSurf = -1;       //stores the screen surface when the game is paused
global.pauseDelay = 0;      //sets pause delay so that the player can't quickly pause buffer

global.currentMusicID = -1;  //keeps track of what song the current music is
global.currentMusic = -1;    //keeps track of current main music instance
global.gameOverMusic = -1;   //keeps track of game over music instance
global.musicFading = 0;     //keeps track of whether the music is being currently faded out
global.currentGain = 0;     //keeps track of current track gain when a song is being faded out

var base_w = view_wview[0];
var base_h = view_hview[0];
var aspect = base_w/base_h;
var windowAspect = window_get_width()/window_get_height(); // get the GAME aspect ratio
if (windowAspect>aspect) {
    var hh = min(window_get_height(), base_h);
    var ww = hh*aspect;
} else {
    var ww = min(window_get_width(), base_w);
    var hh = ww / aspect;
}
window_set_size(ww, hh);
//get the default window size
global.windowWidth = ww;
global.windowHeight = hh;

display_set_gui_size(view_wview[0],view_hview[0]);  //set the correct gui size for the Draw GUI event

randomize();    //make sure the game starts with a random seed for RNG

scrSetGlobalOptions();       //initialize variables that can be changed
