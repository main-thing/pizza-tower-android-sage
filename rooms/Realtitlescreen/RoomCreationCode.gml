enum states {
    normal = (0 << 0),
    finishingblow = (2 << 0),
    tumble = (1 << 0),
    titlescreen = (7 << 0),
    ejected = (3 << 0),
    firemouth = (6 << 0),
    fireass = (5 << 0),
    transitioncutscene = (4 << 0),
    hookshot = (8 << 0),
    slap = (11 << 0),
    tacklecharge = (9 << 0),
    cheesepep = (12 << 0),
    cheeseball = (10 << 0),
    cheesepepstick = (13 << 0),
    boxxedpep = (14 << 0),
    pistolaim = (15 << 0),
    climbwall = (16 << 0),
    knightpepslopes = (17 << 0),
    portal = (18 << 0),
    secondjump = (19 << 0),
    chainsawbump = (20 << 0),
    handstandjump = (21 << 0),
    gottreasure = (22 << 0),
    knightpep = (23 << 0),
    knightpepattack = (24 << 0),
    meteorpep = (25 << 0),
    bombpep = (26 << 0),
    grabbing = (27 << 0),
    chainsawpogo = (28 << 0),
    shotgunjump = (29 << 0),
    stunned = (30 << 0),
    highjump = (31 << 0),
    chainsaw = (32 << 0),
    facestomp = (33 << 0),
    timesup = (35 << 0),
    machroll = (36 << 0),
    pistol = (38 << 0),
    shotgun = (37 << 0),
    machfreefall = (39 << 0),
    throwing = (40 << 0),
    superslam = (42 << 0),
    slam = (41 << 0),
    skateboard = (43 << 0),
    grind = (44 << 0),
    grab = (45 << 0),
    punch = (46 << 0),
    backkick = (47 << 0),
    uppunch = (48 << 0),
    shoulder = (49 << 0),
    backbreaker = (50 << 0),
    bossdefeat = (51 << 0),
    bossintro = (53 << 0),
    smirk = (61 << 0),
    pizzathrow = (52 << 0),
    gameover = (54 << 0),
    Sjumpland = (91 << 0),
    freefallprep = (90 << 0),
    runonball = (88 << 0),
    boulder = (87 << 0),
    keyget = (55 << 0),
    tackle = (56 << 0),
    slipnslide = (59 << 0),
    ladder = (58 << 0),
    jump = (57 << 0),
    victory = (63 << 0),
    comingoutdoor = (60 << 0),
    Sjump = (62 << 0),
    Sjumpprep = (64 << 0),
    crouch = (65 << 0),
    crouchjump = (66 << 0),
    crouchslide = (67 << 0),
    mach1 = (68 << 0),
    mach2 = (69 << 0),
    mach3 = (89 << 0),
    machslide = (70 << 0),
    bump = (71 << 0),
    hurt = (72 << 0),
    freefall = (73 << 0),
    freefallland = (76 << 0),
    hang = (74 << 0),
    door = (77 << 0),
    barrelnormal = (83 << 0),
    barrelfall = (82 << 0),
    barrelmach1 = (81 << 0),
    barrelmach2 = (80 << 0),
    barrelfloat = (79 << 0),
    barrelcrouch = (78 << 0),
    barrelslipnslide = (84 << 0),
    barrelroll = (85 << 0),
    current = (86 << 0),
    idle = (92 << 0),
    turn = (96 << 0),
    walk = (100 << 0),
    land = (102 << 0),
    hit = (103 << 0),
    stun = (104 << 0),
    throw2 = (95 << 0),
    grabbed = (107 << 0),
	debugstate = (108 << 0)
}

pal_swap_init_system(shd_pal_swapper)
ini_open("saveData.ini")
global.deserthighscore = ini_read_string("Highscore", "desert", 0)
global.mansionhighscore = ini_read_string("Highscore", "mansion", 0)
global.factoryhighscore = ini_read_string("Highscore", "factory", 0)
global.sewerhighscore = ini_read_string("Highscore", "sewer", 0)
global.freezerhighscore = ini_read_string("Highscore", "freezer", 0)
global.entrancehighscore = ini_read_string("Highscore", "entrance", 0)
global.medievalhighscore = ini_read_string("Highscore", "medieval", 0)
global.deserttoppin1 = ini_read_string("Toppin", "desert1", 0)
global.deserttoppin2 = ini_read_string("Toppin", "desert2", 0)
global.deserttoppin3 = ini_read_string("Toppin", "desert3", 0)
global.deserttoppin4 = ini_read_string("Toppin", "desert4", 0)
global.deserttoppin5 = ini_read_string("Toppin", "desert5", 0)
global.mansiontoppin1 = ini_read_string("Toppin", "mansion1", 0)
global.mansiontoppin2 = ini_read_string("Toppin", "mansion2", 0)
global.mansiontoppin3 = ini_read_string("Toppin", "mansion3", 0)
global.mansiontoppin4 = ini_read_string("Toppin", "mansion4", 0)
global.mansiontoppin5 = ini_read_string("Toppin", "mansion5", 0)
global.factorytoppin1 = ini_read_string("Toppin", "factory1", 0)
global.factorytoppin2 = ini_read_string("Toppin", "factory2", 0)
global.factorytoppin3 = ini_read_string("Toppin", "factory3", 0)
global.factorytoppin4 = ini_read_string("Toppin", "factory4", 0)
global.factorytoppin5 = ini_read_string("Toppin", "factory5", 0)
global.sewertoppin1 = ini_read_string("Toppin", "sewer1", 0)
global.sewertoppin2 = ini_read_string("Toppin", "sewer2", 0)
global.sewertoppin3 = ini_read_string("Toppin", "sewer3", 0)
global.sewertoppin4 = ini_read_string("Toppin", "sewer4", 0)
global.sewertoppin5 = ini_read_string("Toppin", "sewer5", 0)
global.freezertoppin1 = ini_read_string("Toppin", "freezer1", 0)
global.freezertoppin2 = ini_read_string("Toppin", "freezer2", 0)
global.freezertoppin3 = ini_read_string("Toppin", "freezer3", 0)
global.freezertoppin4 = ini_read_string("Toppin", "freezer4", 0)
global.freezertoppin5 = ini_read_string("Toppin", "freezer5", 0)
global.entrancetoppin1 = ini_read_string("Toppin", "entrance1", 0)
global.entrancetoppin2 = ini_read_string("Toppin", "entrance2", 0)
global.entrancetoppin3 = ini_read_string("Toppin", "entrance3", 0)
global.entrancetoppin4 = ini_read_string("Toppin", "entrance4", 0)
global.entrancetoppin5 = ini_read_string("Toppin", "entrance5", 0)
global.medievaltoppin1 = ini_read_string("Toppin", "medieval1", 0)
global.medievaltoppin2 = ini_read_string("Toppin", "medieval2", 0)
global.medievaltoppin3 = ini_read_string("Toppin", "medieval3", 0)
global.medievaltoppin4 = ini_read_string("Toppin", "medieval4", 0)
global.medievaltoppin5 = ini_read_string("Toppin", "medieval5", 0)
ini_close()
global.instancelist = ds_list_create()
scr_startupcommand()