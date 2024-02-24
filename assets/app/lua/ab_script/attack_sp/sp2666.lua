-- 1028280: UR_ゴクウブラック(超サイヤ人ロゼ)_必殺技：神裂演武斬
-- sp_effect_a1_00417
-- sp2666

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162549;  -- 冒頭突進 ef_001
SP_002 = 162550;  -- 格闘→気貯め：敵より前 ef_002
SP_003 = 162551;  -- 格闘→気貯め：敵より後ろ ef_003
SP_004 = 162552;  -- 剣シャキン→ラスト爆発：敵より前 ef_004
SP_005 = 162553;  -- 剣シャキン→ラスト爆発：敵より後ろ ef_005

-- 敵側
SP_002r = 162556;  -- 格闘→気貯め：敵より前：反転 ef_002r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.75);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭突進 ef_001
------------------------------------------------------
MAX_FRAME_0 = 98;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 6, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 30, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 22 );
setTimeStretch( SE004, 1.4, 30, 4 );

--画面遷移
SE005 = playSeVer2( spep_0 + 72, 1232, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 98

------------------------------------------------------
-- 格闘→気貯め：敵より前 ef_002
------------------------------------------------------
MAX_FRAME_1 = 326;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_1 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_1 + MAX_FRAME_1, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_1 + MAX_FRAME_1, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, SP_02, 0 );
setEffRotateKey( spep_1 + MAX_FRAME_1, SP_02, 0 );
setEffAlphaKey( spep_1 + 0, SP_02, 255 );
setEffAlphaKey( spep_1 + MAX_FRAME_1, SP_02, 255 );
SP_03 = entryEffect( spep_1 + 0, SP_003, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_1 + MAX_FRAME_1, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_1 + MAX_FRAME_1, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, SP_03, 0 );
setEffRotateKey( spep_1 + MAX_FRAME_1, SP_03, 0 );
setEffAlphaKey( spep_1 + 0, SP_03, 255 );
setEffAlphaKey( spep_1 + MAX_FRAME_1, SP_03, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 1 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 18 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 36 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 42 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 50 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 56 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 64 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 70 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 84 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 1 + OFFSET_X, 1, 28.6, -21.4 , 0 );
setMoveKey( spep_1 + 17 + OFFSET_X, 1, 28.6, -21.4 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, 65.3, -16 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_X, 1, 65.3, -16 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 14.4, -12.7 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_X, 1, 14.4, -12.7 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 49.2, 12.5 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_X, 1, 49.2, 12.5 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 60.9, -23.8 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 60.9, -23.8 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 39.7, -6.6 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_X, 1, 39.7, -6.6 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 47.5, -6.5 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 47.5, -6.5 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 51.8, -6.6 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 51.8, -6.6 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 56.1, -6.6 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 56.1, -6.6 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 60.5, -6.6 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 60.5, -6.6 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 84.8, -6.5 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 84.8, -6.5 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 91.4, -12.5 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 91.4, -12.5 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 75.5, -6.6 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 75.5, -6.6 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 95.3, -3 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 95.3, -3 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 129.2, -16 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, 129.2, -16 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 108.5, -12.6 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_X, 1, 108.5, -12.6 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 102.3, -6.5 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_X, 1, 102.3, -6.5 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 106.5, -6.5 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, 106.5, -6.5 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 141.3, -15.8 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_X, 1, 141.3, -15.8 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 73.6, -12.7 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, 73.6, -12.7 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 87.1, -6.6 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 87.1, -6.6 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 106.9, -3 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 106.9, -3 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 140.9, -15.9 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 140.9, -15.9 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 92.9, -2.9 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 92.9, -2.9 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 118.2, -4.6 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 118.2, -4.6 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, -32.1, 122.9 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, -32.1, 122.9 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 20.4, 113.5 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 20.4, 113.5 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 54.7, 82 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 54.7, 82 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 148.4, 72.4 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 148.4, 72.4 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 193.7, 11.5 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 193.7, 11.5 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 249.7, -11.6 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 249.7, -11.6 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 323.2, -51.2 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 323.2, -51.2 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 389.8, -86 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 389.8, -86 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 456.4, -120.8 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 456.4, -120.8 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 523.1, -155.6 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 523.1, -155.6 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 589.7, -190.4 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 589.7, -190.4 , 0 );

setScaleKey( spep_1 + 1 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 17 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 18 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 35 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 41 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 49 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 50 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 55 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 56 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 63 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 64 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 69 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 70 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 83 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 84 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 3.8, 3.8 );

setRotateKey( spep_1 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 17 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 18 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 29 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 30 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_1 + 31 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_1 + 32 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_1 + 33 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_1 + 34 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_1 + 35 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_1 + 36 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 37 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 38 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 39 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 40 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 41 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 42 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 43 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 44 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_1 + 45 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_1 + 46 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_1 + 47 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_1 + 48 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_1 + 49 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_1 + 50 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 51 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 52 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 53 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 54 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 55 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 56 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 57 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 58 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_1 + 59 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_1 + 60 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_1 + 61 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_1 + 62 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_1 + 63 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_1 + 64 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 65 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 66 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 67 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 68 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 69 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 70 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 71 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 72 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_1 + 73 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_1 + 74 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_1 + 75 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_1 + 76 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_1 + 77 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_1 + 78 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_1 + 79 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_1 + 81 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_1 + 82 + OFFSET_X, 1, -40 );
setRotateKey( spep_1 + 83 + OFFSET_X, 1, -40 );
setRotateKey( spep_1 + 84 + OFFSET_X, 1, -9 );
setRotateKey( spep_1 + 104 + OFFSET_X, 1, -9 );

-- 敵の動き2
setDisp( spep_1 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 176 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 146 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 146 + OFFSET_X, 1, -492.8, 303.8 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, -492.8, 303.8 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, -457.3, 283.8 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, -457.3, 283.8 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, -421.7, 263.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, -421.7, 263.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, -386.2, 243.6 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, -386.2, 243.6 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, -350.6, 223.5 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, -350.6, 223.5 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, -315, 203.5 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, -315, 203.5 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, -279.5, 183.4 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, -279.5, 183.4 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, -243.9, 163.3 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, -243.9, 163.3 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -208.4, 143.3 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, -208.4, 143.3 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, -172.8, 123.2 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, -172.8, 123.2 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -137.3, 103.1 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, -137.3, 103.1 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -101.7, 83.1 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, -101.7, 83.1 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -66.1, 63 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, -66.1, 63 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -30.6, 42.9 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, -30.6, 42.9 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 5, 22.8 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 5, 22.8 , 0 );

setScaleKey( spep_1 + 146 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_1 + 146 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, 43.1 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_1 + 8;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 8, 1042);
stopSe( SP_dodge - 8, SE001, 0);
stopSe( SP_dodge - 8, SE002, 0);
stopSe( SP_dodge - 8, SE004, 0);
stopSe( SP_dodge - 8, SE005, 0);
stopSe( SP_dodge - 8, SE00X, 0);

speff = entryEffectUnpausable( SP_dodge-8, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--初手パンチ
SE006 = playSeVer2( spep_1 + 8, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE006, 126 );
SE007 = playSeVer2( spep_1 + 14, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 14, 1110, "", 0, 0, 0, -1);

--連続パンチ
SE009 = playSeVer2( spep_1 + 32, 1425, "",spep_1 + 82, 0, 10, -1);
SE010 = playSeVer2( spep_1 + 32, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 66, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE012 = playSeVer2( spep_1 + 74, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 82, 1120, "", 0, 0, 0, -1);

--気弾溜め
SE014 = playSeVer2( spep_1 + 104, 1191, "",spep_1 + 144, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 104, SE014, 158 );
SE015 = playSeVer2( spep_1 + 104, 49, "", 0, 0, 0, -1);

--気弾発射
SE016 = playSeVer2( spep_1 + 120, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 120, SE016, 73 );
SE017 = playSeVer2( spep_1 + 122, 1212, "",spep_1 + 194, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 122, SE017, 69 );
SE018 = playSeVer2( spep_1 + 122, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 122, 1109, "", 0, 0, 0, -1);

--爆発
SE020 = playSeVer2( spep_1 + 168, 1023, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 176, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 176, SE021, 79 );

--気ダメ１
SE022 = playSeVer2( spep_1 + 224, 1374, "",spep_1 + 348, 18, 16, -1);
setSeVolumeByWorkId( spep_1 + 224, SE022, 87 );
setStartTimeMs( SE022,  667 );
setPitch( spep_1 + 230, SE022, -500 );
setTimeStretch( SE022, 0.80, 30, 4 );
SE025 = playSeVer2( spep_1 + 218, 1258, "",spep_1 + 350, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 218, SE025, 63 );

--構える
SE023 = playSeVer2( spep_1 + 204, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 206, 1006, "", 0, 0, 0, -1);

--気ダメ２
SE026 = playSeVer2( spep_1 + 258, 1176, "",spep_1 + 348, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 258, SE026, 73 );
SE028 = playSeVer2( spep_1 + 270, 1354, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 270, 1326, "",spep_1 + 350, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 270, SE029, 114 );

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;  -- 326

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_3 = showCardCutin(spep_2, 0);

------------------------------------------------------
-- 剣シャキン→ラスト爆発：敵より前 ef_004
------------------------------------------------------
MAX_FRAME_3 = 656;

-- ** エフェクト等 ** --
SP_04 = entryEffect( spep_3 + 0, SP_004, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_04, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_04, 0 );
setEffAlphaKey( spep_3 + 0, SP_04, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_04, 255 );
SP_05 = entryEffect( spep_3 + 0, SP_005, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, SP_05, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_05, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_05, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_05, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_05, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_05, 0 );
setEffAlphaKey( spep_3 + 0, SP_05, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_05, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 370 + OFFSET_X, 1, 1 );
setDisp( spep_3 + 540 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 370 + OFFSET_X, 1, 108 );
changeAnime( spep_3 + 414 + OFFSET_X, 1, 106 );

setMoveKey( spep_3 + 370 + OFFSET_X, 1, 238.3, 405.4 , 0 );
setMoveKey( spep_3 + 373 + OFFSET_X, 1, 238.3, 405.4 , 0 );
setMoveKey( spep_3 + 374 + OFFSET_X, 1, 238.3, 349.2 , 0 );
setMoveKey( spep_3 + 375 + OFFSET_X, 1, 238.3, 349.2 , 0 );
setMoveKey( spep_3 + 376 + OFFSET_X, 1, 238.3, 322.5 , 0 );
setMoveKey( spep_3 + 377 + OFFSET_X, 1, 238.3, 322.5 , 0 );
setMoveKey( spep_3 + 378 + OFFSET_X, 1, 238.3, 302.5 , 0 );
setMoveKey( spep_3 + 379 + OFFSET_X, 1, 238.3, 302.5 , 0 );
setMoveKey( spep_3 + 380 + OFFSET_X, 1, 238.3, 286.2 , 0 );
setMoveKey( spep_3 + 381 + OFFSET_X, 1, 238.3, 286.2 , 0 );
setMoveKey( spep_3 + 382 + OFFSET_X, 1, 238.3, 272.1 , 0 );
setMoveKey( spep_3 + 383 + OFFSET_X, 1, 238.3, 272.1 , 0 );
setMoveKey( spep_3 + 384 + OFFSET_X, 1, 238.3, 259.6 , 0 );
setMoveKey( spep_3 + 385 + OFFSET_X, 1, 238.3, 259.6 , 0 );
setMoveKey( spep_3 + 386 + OFFSET_X, 1, 238.3, 248.4 , 0 );
setMoveKey( spep_3 + 387 + OFFSET_X, 1, 238.3, 248.4 , 0 );
setMoveKey( spep_3 + 388 + OFFSET_X, 1, 270, 212.6 , 0 );
setMoveKey( spep_3 + 389 + OFFSET_X, 1, 270, 212.6 , 0 );
setMoveKey( spep_3 + 390 + OFFSET_X, 1, 213, 236.7 , 0 );
setMoveKey( spep_3 + 391 + OFFSET_X, 1, 213, 236.7 , 0 );
setMoveKey( spep_3 + 392 + OFFSET_X, 1, 247.8, 215 , 0 );
setMoveKey( spep_3 + 393 + OFFSET_X, 1, 247.8, 215 , 0 );
setMoveKey( spep_3 + 394 + OFFSET_X, 1, 202.4, 199.8 , 0 );
setMoveKey( spep_3 + 395 + OFFSET_X, 1, 202.4, 199.8 , 0 );
setMoveKey( spep_3 + 396 + OFFSET_X, 1, 247.7, 234.2 , 0 );
setMoveKey( spep_3 + 397 + OFFSET_X, 1, 247.7, 234.2 , 0 );
setMoveKey( spep_3 + 398 + OFFSET_X, 1, 270, 171.3 , 0 );
setMoveKey( spep_3 + 399 + OFFSET_X, 1, 270, 171.3 , 0 );
setMoveKey( spep_3 + 400 + OFFSET_X, 1, 192.4, 202.7 , 0 );
setMoveKey( spep_3 + 401 + OFFSET_X, 1, 192.4, 202.7 , 0 );
setMoveKey( spep_3 + 402 + OFFSET_X, 1, 236.3, 191.7 , 0 );
setMoveKey( spep_3 + 403 + OFFSET_X, 1, 236.3, 191.7 , 0 );
setMoveKey( spep_3 + 404 + OFFSET_X, 1, 244.5, 177.3 , 0 );
setMoveKey( spep_3 + 405 + OFFSET_X, 1, 244.5, 177.3 , 0 );
setMoveKey( spep_3 + 406 + OFFSET_X, 1, 238.3, 171.4 , 0 );
setMoveKey( spep_3 + 407 + OFFSET_X, 1, 238.3, 171.4 , 0 );
setMoveKey( spep_3 + 408 + OFFSET_X, 1, 244.5, 165.7 , 0 );
setMoveKey( spep_3 + 409 + OFFSET_X, 1, 244.5, 165.7 , 0 );
setMoveKey( spep_3 + 410 + OFFSET_X, 1, 236.3, 168.5 , 0 );
setMoveKey( spep_3 + 411 + OFFSET_X, 1, 236.3, 168.5 , 0 );
setMoveKey( spep_3 + 412 + OFFSET_X, 1, 244.5, 155 , 0 );
setMoveKey( spep_3 + 413 + OFFSET_X, 1, 244.5, 155 , 0 );
setMoveKey( spep_3 + 414 + OFFSET_X, 1, 137.6, 104.8 , 0 );
setMoveKey( spep_3 + 415 + OFFSET_X, 1, 137.6, 104.8 , 0 );
setMoveKey( spep_3 + 416 + OFFSET_X, 1, 137.6, 100 , 0 );
setMoveKey( spep_3 + 417 + OFFSET_X, 1, 137.6, 100 , 0 );
setMoveKey( spep_3 + 418 + OFFSET_X, 1, 137.6, 115.3 , 0 );
setMoveKey( spep_3 + 419 + OFFSET_X, 1, 137.6, 115.3 , 0 );
setMoveKey( spep_3 + 420 + OFFSET_X, 1, 137.6, 110.8 , 0 );
setMoveKey( spep_3 + 421 + OFFSET_X, 1, 137.6, 110.8 , 0 );
setMoveKey( spep_3 + 422 + OFFSET_X, 1, 137.6, 106.5 , 0 );
setMoveKey( spep_3 + 423 + OFFSET_X, 1, 137.6, 106.5 , 0 );
setMoveKey( spep_3 + 424 + OFFSET_X, 1, 137.6, 102.3 , 0 );
setMoveKey( spep_3 + 425 + OFFSET_X, 1, 137.6, 102.3 , 0 );
setMoveKey( spep_3 + 426 + OFFSET_X, 1, 137.6, 98.3 , 0 );
setMoveKey( spep_3 + 427 + OFFSET_X, 1, 137.6, 98.3 , 0 );
setMoveKey( spep_3 + 428 + OFFSET_X, 1, 137.6, 94.3 , 0 );
setMoveKey( spep_3 + 429 + OFFSET_X, 1, 137.6, 94.3 , 0 );
setMoveKey( spep_3 + 430 + OFFSET_X, 1, 137.6, 90.5 , 0 );
setMoveKey( spep_3 + 431 + OFFSET_X, 1, 137.6, 90.5 , 0 );
setMoveKey( spep_3 + 432 + OFFSET_X, 1, 137.6, 86.8 , 0 );
setMoveKey( spep_3 + 433 + OFFSET_X, 1, 137.6, 86.8 , 0 );
setMoveKey( spep_3 + 434 + OFFSET_X, 1, 137.6, 83.3 , 0 );
setMoveKey( spep_3 + 435 + OFFSET_X, 1, 137.6, 83.3 , 0 );
setMoveKey( spep_3 + 436 + OFFSET_X, 1, 137.6, 79.8 , 0 );
setMoveKey( spep_3 + 437 + OFFSET_X, 1, 137.6, 79.8 , 0 );
setMoveKey( spep_3 + 438 + OFFSET_X, 1, 137.6, 76.4 , 0 );
setMoveKey( spep_3 + 439 + OFFSET_X, 1, 137.6, 76.4 , 0 );
setMoveKey( spep_3 + 440 + OFFSET_X, 1, 137.6, 73.1 , 0 );
setMoveKey( spep_3 + 441 + OFFSET_X, 1, 137.6, 73.1 , 0 );
setMoveKey( spep_3 + 442 + OFFSET_X, 1, 137.5, 69.9 , 0 );
setMoveKey( spep_3 + 443 + OFFSET_X, 1, 137.5, 69.9 , 0 );
setMoveKey( spep_3 + 444 + OFFSET_X, 1, 137.5, 66.8 , 0 );
setMoveKey( spep_3 + 445 + OFFSET_X, 1, 137.5, 66.8 , 0 );
setMoveKey( spep_3 + 446 + OFFSET_X, 1, 137.5, 63.8 , 0 );
setMoveKey( spep_3 + 447 + OFFSET_X, 1, 137.5, 63.8 , 0 );
setMoveKey( spep_3 + 448 + OFFSET_X, 1, 137.5, 60.8 , 0 );
setMoveKey( spep_3 + 449 + OFFSET_X, 1, 137.5, 60.8 , 0 );
setMoveKey( spep_3 + 450 + OFFSET_X, 1, 137.5, 58 , 0 );
setMoveKey( spep_3 + 451 + OFFSET_X, 1, 137.5, 58 , 0 );
setMoveKey( spep_3 + 452 + OFFSET_X, 1, 137.5, 55.2 , 0 );
setMoveKey( spep_3 + 453 + OFFSET_X, 1, 137.5, 55.2 , 0 );
setMoveKey( spep_3 + 454 + OFFSET_X, 1, 137.5, 52.4 , 0 );
setMoveKey( spep_3 + 455 + OFFSET_X, 1, 137.5, 52.4 , 0 );
setMoveKey( spep_3 + 456 + OFFSET_X, 1, 137.5, 49.8 , 0 );
setMoveKey( spep_3 + 457 + OFFSET_X, 1, 137.5, 49.8 , 0 );
setMoveKey( spep_3 + 458 + OFFSET_X, 1, 137.5, 47.2 , 0 );
setMoveKey( spep_3 + 459 + OFFSET_X, 1, 137.5, 47.2 , 0 );
setMoveKey( spep_3 + 460 + OFFSET_X, 1, 137.6, 45.1 , 0 );
setMoveKey( spep_3 + 461 + OFFSET_X, 1, 137.6, 45.1 , 0 );
setMoveKey( spep_3 + 462 + OFFSET_X, 1, 136.7, -181.3 , 0 );
setMoveKey( spep_3 + 463 + OFFSET_X, 1, 136.7, -181.3 , 0 );
setMoveKey( spep_3 + 464 + OFFSET_X, 1, 137.6, -134.4 , 0 );
setMoveKey( spep_3 + 465 + OFFSET_X, 1, 137.6, -134.4 , 0 );
setMoveKey( spep_3 + 466 + OFFSET_X, 1, 145.8, -95.8 , 0 );
setMoveKey( spep_3 + 467 + OFFSET_X, 1, 145.8, -95.8 , 0 );
setMoveKey( spep_3 + 468 + OFFSET_X, 1, 151.4, -74.2 , 0 );
setMoveKey( spep_3 + 469 + OFFSET_X, 1, 151.4, -74.2 , 0 );
setMoveKey( spep_3 + 470 + OFFSET_X, 1, 159.4, -48.2 , 0 );
setMoveKey( spep_3 + 471 + OFFSET_X, 1, 159.4, -48.2 , 0 );
setMoveKey( spep_3 + 472 + OFFSET_X, 1, 162.7, -36.8 , 0 );
setMoveKey( spep_3 + 473 + OFFSET_X, 1, 162.7, -36.8 , 0 );
setMoveKey( spep_3 + 474 + OFFSET_X, 1, 165.2, -19.2 , 0 );
setMoveKey( spep_3 + 475 + OFFSET_X, 1, 165.2, -19.2 , 0 );
setMoveKey( spep_3 + 476 + OFFSET_X, 1, 166.7, -14.9 , 0 );
setMoveKey( spep_3 + 477 + OFFSET_X, 1, 166.7, -14.9 , 0 );
setMoveKey( spep_3 + 478 + OFFSET_X, 1, 167.2, -13.5 , 0 );
setMoveKey( spep_3 + 479 + OFFSET_X, 1, 167.2, -13.5 , 0 );
setMoveKey( spep_3 + 480 + OFFSET_X, 1, 167, -13.6 , 0 );
setMoveKey( spep_3 + 481 + OFFSET_X, 1, 167, -13.6 , 0 );
setMoveKey( spep_3 + 482 + OFFSET_X, 1, 166.9, -13.6 , 0 );
setMoveKey( spep_3 + 483 + OFFSET_X, 1, 166.9, -13.6 , 0 );
setMoveKey( spep_3 + 484 + OFFSET_X, 1, 166.7, -13.7 , 0 );
setMoveKey( spep_3 + 485 + OFFSET_X, 1, 166.7, -13.7 , 0 );
setMoveKey( spep_3 + 486 + OFFSET_X, 1, 166.5, -13.7 , 0 );
setMoveKey( spep_3 + 487 + OFFSET_X, 1, 166.5, -13.7 , 0 );
setMoveKey( spep_3 + 488 + OFFSET_X, 1, 166.4, -13.7 , 0 );
setMoveKey( spep_3 + 489 + OFFSET_X, 1, 166.4, -13.7 , 0 );
setMoveKey( spep_3 + 490 + OFFSET_X, 1, 166.2, -13.8 , 0 );
setMoveKey( spep_3 + 491 + OFFSET_X, 1, 166.2, -13.8 , 0 );
setMoveKey( spep_3 + 492 + OFFSET_X, 1, 166, -13.8 , 0 );
setMoveKey( spep_3 + 493 + OFFSET_X, 1, 166, -13.8 , 0 );
setMoveKey( spep_3 + 494 + OFFSET_X, 1, 165.9, -13.9 , 0 );
setMoveKey( spep_3 + 495 + OFFSET_X, 1, 165.9, -13.9 , 0 );
setMoveKey( spep_3 + 496 + OFFSET_X, 1, 165.7, -13.9 , 0 );
setMoveKey( spep_3 + 497 + OFFSET_X, 1, 165.7, -13.9 , 0 );
setMoveKey( spep_3 + 498 + OFFSET_X, 1, 165.5, -14 , 0 );
setMoveKey( spep_3 + 499 + OFFSET_X, 1, 165.5, -14 , 0 );
setMoveKey( spep_3 + 500 + OFFSET_X, 1, 165.4, -14 , 0 );
setMoveKey( spep_3 + 501 + OFFSET_X, 1, 165.4, -14 , 0 );
setMoveKey( spep_3 + 502 + OFFSET_X, 1, 165.2, -14.1 , 0 );
setMoveKey( spep_3 + 503 + OFFSET_X, 1, 165.2, -14.1 , 0 );
setMoveKey( spep_3 + 504 + OFFSET_X, 1, 165, -14.1 , 0 );
setMoveKey( spep_3 + 505 + OFFSET_X, 1, 165, -14.1 , 0 );
setMoveKey( spep_3 + 506 + OFFSET_X, 1, 164.9, -14.1 , 0 );
setMoveKey( spep_3 + 507 + OFFSET_X, 1, 164.9, -14.1 , 0 );
setMoveKey( spep_3 + 508 + OFFSET_X, 1, 164.7, -14.2 , 0 );
setMoveKey( spep_3 + 509 + OFFSET_X, 1, 164.7, -14.2 , 0 );
setMoveKey( spep_3 + 510 + OFFSET_X, 1, 164.5, -14.2 , 0 );
setMoveKey( spep_3 + 511 + OFFSET_X, 1, 164.5, -14.2 , 0 );
setMoveKey( spep_3 + 512 + OFFSET_X, 1, 164.4, -14.3 , 0 );
setMoveKey( spep_3 + 513 + OFFSET_X, 1, 164.4, -14.3 , 0 );
setMoveKey( spep_3 + 514 + OFFSET_X, 1, 164.2, -14.3 , 0 );
setMoveKey( spep_3 + 515 + OFFSET_X, 1, 164.2, -14.3 , 0 );
setMoveKey( spep_3 + 516 + OFFSET_X, 1, 164, -14.4 , 0 );
setMoveKey( spep_3 + 517 + OFFSET_X, 1, 164, -14.4 , 0 );
setMoveKey( spep_3 + 518 + OFFSET_X, 1, 163.9, -14.4 , 0 );
setMoveKey( spep_3 + 519 + OFFSET_X, 1, 163.9, -14.4 , 0 );
setMoveKey( spep_3 + 520 + OFFSET_X, 1, 163.7, -14.4 , 0 );
setMoveKey( spep_3 + 521 + OFFSET_X, 1, 163.7, -14.4 , 0 );
setMoveKey( spep_3 + 522 + OFFSET_X, 1, 163.5, -14.5 , 0 );
setMoveKey( spep_3 + 523 + OFFSET_X, 1, 163.5, -14.5 , 0 );
setMoveKey( spep_3 + 524 + OFFSET_X, 1, 163.4, -14.5 , 0 );
setMoveKey( spep_3 + 525 + OFFSET_X, 1, 163.4, -14.5 , 0 );
setMoveKey( spep_3 + 526 + OFFSET_X, 1, 163.2, -14.6 , 0 );
setMoveKey( spep_3 + 527 + OFFSET_X, 1, 163.2, -14.6 , 0 );
setMoveKey( spep_3 + 528 + OFFSET_X, 1, 163, -14.6 , 0 );
setMoveKey( spep_3 + 529 + OFFSET_X, 1, 163, -14.6 , 0 );
setMoveKey( spep_3 + 530 + OFFSET_X, 1, 162.9, -14.7 , 0 );
setMoveKey( spep_3 + 531 + OFFSET_X, 1, 162.9, -14.7 , 0 );
setMoveKey( spep_3 + 532 + OFFSET_X, 1, 162.7, -14.7 , 0 );
setMoveKey( spep_3 + 533 + OFFSET_X, 1, 162.7, -14.7 , 0 );
setMoveKey( spep_3 + 534 + OFFSET_X, 1, 162.5, -14.8 , 0 );
setMoveKey( spep_3 + 535 + OFFSET_X, 1, 162.5, -14.8 , 0 );
setMoveKey( spep_3 + 536 + OFFSET_X, 1, 162.4, -14.8 , 0 );
setMoveKey( spep_3 + 537 + OFFSET_X, 1, 162.4, -14.8 , 0 );
setMoveKey( spep_3 + 538 + OFFSET_X, 1, 162.2, -14.8 , 0 );
setMoveKey( spep_3 + 539 + OFFSET_X, 1, 162.2, -14.8 , 0 );
setMoveKey( spep_3 + 540 + OFFSET_X, 1, 162, -14.9 , 0 );

setScaleKey( spep_3 + 370 + OFFSET_X, 1, 9.6, 9.6 );
setScaleKey( spep_3 + 413 + OFFSET_X, 1, 9.6, 9.6 );
setScaleKey( spep_3 + 414 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_3 + 461 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_3 + 462 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 463 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 464 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 465 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 466 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 467 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 468 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 469 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 470 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 471 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 472 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 473 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 474 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 475 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 476 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 477 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 478 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_3 + 540 + OFFSET_X, 1, 0.32, 0.32 );

setRotateKey( spep_3 + 370 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 413 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 414 + OFFSET_X, 1, -46.8 );
setRotateKey( spep_3 + 415 + OFFSET_X, 1, -46.8 );
setRotateKey( spep_3 + 416 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_3 + 417 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_3 + 418 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_3 + 419 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_3 + 420 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_3 + 421 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_3 + 422 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_3 + 423 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_3 + 424 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_3 + 425 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_3 + 426 + OFFSET_X, 1, -45 );
setRotateKey( spep_3 + 427 + OFFSET_X, 1, -45 );
setRotateKey( spep_3 + 428 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_3 + 429 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_3 + 430 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_3 + 431 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_3 + 432 + OFFSET_X, 1, -44.3 );
setRotateKey( spep_3 + 433 + OFFSET_X, 1, -44.3 );
setRotateKey( spep_3 + 434 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_3 + 435 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_3 + 436 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_3 + 437 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_3 + 438 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_3 + 439 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_3 + 440 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_3 + 441 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_3 + 442 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_3 + 443 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_3 + 444 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_3 + 445 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_3 + 446 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_3 + 447 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_3 + 448 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_3 + 449 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_3 + 450 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_3 + 453 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_3 + 454 + OFFSET_X, 1, -43 );
setRotateKey( spep_3 + 461 + OFFSET_X, 1, -43 );
setRotateKey( spep_3 + 462 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_3 + 463 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_3 + 464 + OFFSET_X, 1, -30 );
setRotateKey( spep_3 + 465 + OFFSET_X, 1, -30 );
setRotateKey( spep_3 + 466 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_3 + 467 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_3 + 468 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_3 + 469 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_3 + 470 + OFFSET_X, 1, -34 );
setRotateKey( spep_3 + 471 + OFFSET_X, 1, -34 );
setRotateKey( spep_3 + 472 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_3 + 473 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_3 + 474 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_3 + 475 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_3 + 476 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_3 + 477 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_3 + 478 + OFFSET_X, 1, -36 );
setRotateKey( spep_3 + 540 + OFFSET_X, 1, -36 );

-- ** 音 ** --
--オーラ
SE027 = playSeVer2( spep_3 + 0, 1371, "",spep_3 + 134, 14, 24, -1);
setSeVolumeByWorkId( spep_3 + 0, SE027, 70 );
setStartTimeMs( SE027,  2500 );
setPitch( spep_3 + 0, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );
SE031 = playSeVer2( spep_3 + 2, 1176, "",spep_3 + 134, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 2, SE031, 72 );

--剣出す
SE032 = playSeVer2( spep_3 + 92, 1204, "",spep_3 + 220, 10, 54, -1);
setStartTimeMs( SE032,  1633 );
SE034 = playSeVer2( spep_3 + 98, 1142, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 98, 1240, "",spep_3 + 176, 0, 22, -1);
setPitch( spep_3 + 98, SE035, -400 );
setTimeStretch( SE035, 0.73, 30, 4 );
SE036 = playSeVer2( spep_3 + 98, 1026, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_3 + 98, 1152, "", 0, 0, 0, -1);

--腕構える
SE033 = playSeVer2( spep_3 + 40, 1003, "", 0, 0, 0, -1);

--飛んでくる
SE038 = playSeVer2( spep_3 + 180, 1183, "",spep_3 + 290, 12, 42, -1);
setStartTimeMs( SE038,  467 );
SE039 = playSeVer2( spep_3 + 180, 1182, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_3 + 180, 1277, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_3 + 190, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 190, SE041, 65 );

--舞う
SE042 = playSeVer2( spep_3 + 262, 1142, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_3 + 262, 1430, "",spep_3 + 432, 0, 32, -1);
setSeVolumeByWorkId( spep_3 + 262, SE043, 82 );
SE044 = playSeVer2( spep_3 + 274, 1116, "",spep_3 + 314, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 274, SE044, 106 );
SE045 = playSeVer2( spep_3 + 278, 1403, "",spep_3 + 420, 0, 16, -1);
SE047 = playSeVer2( spep_3 + 292, 1286, "",spep_3 + 436, 0, 30, -1);
SE048 = playSeVer2( spep_3 + 300, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 300, SE048, 73 );
setPitch( spep_3 + 300, SE048, -400 );
setTimeStretch( SE048, 0.73, 30, 4 );

--気弾発射
SE046 = playSeVer2( spep_3 + 336, 1406, "",spep_3 + 418, 12, 20, -1);
setSeVolumeByWorkId( spep_3 + 336, SE046, 78 );
setStartTimeMs( SE046,  733 );
SE049 = playSeVer2( spep_3 + 340, 1424, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_3 + 340, 1423, "",spep_3 + 424, 0, 24, -1);
setSeVolumeByWorkId( spep_3 + 340, SE050, 120 );
SE051 = playSeVer2( spep_3 + 340, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 340, SE051, 120 );

--身体に刺さる
SE052 = playSeVer2( spep_3 + 380, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 380, SE052, 67 );
setPitch( spep_3 + 380, SE052, -400 );
setTimeStretch( SE052, 0.73, 30, 4 );
SE053 = playSeVer2( spep_3 + 384, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 384, SE053, 72 );
SE054 = playSeVer2( spep_3 + 388, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 388, SE054, 56 );
setPitch( spep_3 + 388, SE054, -400 );
setTimeStretch( SE054, 0.73, 30, 4 );
stopSeIfDoubleSpeed( spep_3 + 388, SE054 );
SE055 = playSeVer2( spep_3 + 392, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 392, SE055, 59 );
SE056 = playSeVer2( spep_3 + 394, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 394, SE056, 58 );
setPitch( spep_3 + 394, SE056, -400 );
setTimeStretch( SE056, 0.73, 30, 4 );
SE057 = playSeVer2( spep_3 + 398, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 398, SE057, 63 );
stopSeIfDoubleSpeed( spep_3 + 398, SE057 );
SE058_1 = playSeVer2( spep_3 + 398, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 398, SE058_1, 73 );
setPitch( spep_3 + 398, SE058_1, -400 );
setTimeStretch( SE058_1, 0.73, 30, 4 );
SE058_2 = playSeVer2( spep_3 + 390, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 390, SE058_2, 40 );
SE059 = playSeVer2( spep_3 + 404, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 404, SE059, 59 );

--ポーズ取る
SE060 = playSeVer2( spep_3 + 462, 1235, "",spep_3 + 510, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 462, SE060, 80 );
setPitch( spep_3 + 462, SE060, -600 );
setTimeStretch( SE060, 0.6, 30, 4 );
SE061 = playSeVer2( spep_3 + 466, 1004, "", 0, 0, 0, -1);
setPitch( spep_3 + 466, SE061, -300 );
setTimeStretch( SE061, 0.8, 30, 4 );
SE062 = playSeVer2( spep_3 + 466, 1152, "",spep_3 + 532, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 466, SE062, 56 );
SE063 = playSeVer2( spep_3 + 488, 1424, "",spep_3 + 530, 4, 10, -1);
setStartTimeMs( SE063,  200 );
setPitch( spep_3 + 488, SE063, -500 );
setTimeStretch( SE063, 0.67, 30, 4 );
SE064 = playSeVer2( spep_3 + 484, 1235, "",spep_3 + 532, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 484, SE064, 84 );
setPitch( spep_3 + 484, SE064, -600 );
setTimeStretch( SE064, 0.6, 30, 4 );
SE065 = playSeVer2( spep_3 + 488, 1004, "", 0, 0, 0, -1);
setPitch( spep_3 + 488, SE065, -300 );
setTimeStretch( SE065, 0.8, 30, 4 );

--ポーズ取る決め
SE066 = playSeVer2( spep_3 + 508, 1208, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 508, SE066, 79 );
SE067 = playSeVer2( spep_3 + 518, 1006, "", 0, 0, 0, -1);

--爆発
SE068 = playSeVer2( spep_3 + 538, 1024, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_3 + 552, 1058, "", 0, 0, 0, -1);

dealDamage( spep_3 + 550 );
endPhase( spep_3 +  MAX_FRAME_3 - 2 );  -- 656

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭突進 ef_001
------------------------------------------------------
MAX_FRAME_0 = 98;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 6, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 30, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 22 );
setTimeStretch( SE004, 1.4, 30, 4 );

--画面遷移
SE005 = playSeVer2( spep_0 + 72, 1232, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 98

------------------------------------------------------
-- 格闘→気貯め：敵より前 ef_002
------------------------------------------------------
MAX_FRAME_1 = 326;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_1 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_1 + MAX_FRAME_1, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_1 + MAX_FRAME_1, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, SP_02, 0 );
setEffRotateKey( spep_1 + MAX_FRAME_1, SP_02, 0 );
setEffAlphaKey( spep_1 + 0, SP_02, 255 );
setEffAlphaKey( spep_1 + MAX_FRAME_1, SP_02, 255 );
SP_03 = entryEffect( spep_1 + 0, SP_003, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_1 + MAX_FRAME_1, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, SP_03, -1.0, 1.0 );
setEffScaleKey( spep_1 + MAX_FRAME_1, SP_03, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, SP_03, 0 );
setEffRotateKey( spep_1 + MAX_FRAME_1, SP_03, 0 );
setEffAlphaKey( spep_1 + 0, SP_03, 255 );
setEffAlphaKey( spep_1 + MAX_FRAME_1, SP_03, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 1 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 18 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 36 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 42 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 50 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 56 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 64 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 70 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 84 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 1 + OFFSET_X, 1, 28.6, -21.4 , 0 );
setMoveKey( spep_1 + 17 + OFFSET_X, 1, 28.6, -21.4 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, 65.3, -16 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_X, 1, 65.3, -16 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 14.4, -12.7 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_X, 1, 14.4, -12.7 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 49.2, 12.5 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_X, 1, 49.2, 12.5 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 60.9, -23.8 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 60.9, -23.8 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 39.7, -6.6 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_X, 1, 39.7, -6.6 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 47.5, -6.5 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 47.5, -6.5 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 51.8, -6.6 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 51.8, -6.6 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 56.1, -6.6 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 56.1, -6.6 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 60.5, -6.6 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 60.5, -6.6 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 84.8, -6.5 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 84.8, -6.5 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 91.4, -12.5 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 91.4, -12.5 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 75.5, -6.6 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 75.5, -6.6 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 95.3, -3 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 95.3, -3 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 129.2, -16 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, 129.2, -16 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 108.5, -12.6 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_X, 1, 108.5, -12.6 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 102.3, -6.5 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_X, 1, 102.3, -6.5 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 106.5, -6.5 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, 106.5, -6.5 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 141.3, -15.8 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_X, 1, 141.3, -15.8 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 73.6, -12.7 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, 73.6, -12.7 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 87.1, -6.6 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 87.1, -6.6 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 106.9, -3 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 106.9, -3 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 140.9, -15.9 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 140.9, -15.9 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 92.9, -2.9 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 92.9, -2.9 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 118.2, -4.6 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 118.2, -4.6 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, -32.1, 122.9 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, -32.1, 122.9 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 20.4, 113.5 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 20.4, 113.5 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 54.7, 82 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 54.7, 82 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 148.4, 72.4 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 148.4, 72.4 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 193.7, 11.5 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 193.7, 11.5 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 249.7, -11.6 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 249.7, -11.6 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 323.2, -51.2 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 323.2, -51.2 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 389.8, -86 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 389.8, -86 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 456.4, -120.8 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 456.4, -120.8 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 523.1, -155.6 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 523.1, -155.6 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 589.7, -190.4 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 589.7, -190.4 , 0 );

setScaleKey( spep_1 + 1 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 17 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 18 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 35 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 41 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 49 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 50 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 55 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 56 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 63 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 64 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 69 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 70 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 83 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 84 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 3.8, 3.8 );

setRotateKey( spep_1 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 17 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 18 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 29 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 30 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_1 + 31 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_1 + 32 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_1 + 33 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_1 + 34 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_1 + 35 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_1 + 36 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 37 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 38 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 39 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 40 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 41 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 42 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 43 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 44 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_1 + 45 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_1 + 46 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_1 + 47 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_1 + 48 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_1 + 49 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_1 + 50 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 51 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 52 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 53 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 54 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 55 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 56 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 57 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 58 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_1 + 59 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_1 + 60 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_1 + 61 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_1 + 62 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_1 + 63 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_1 + 64 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 65 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 66 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 67 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 68 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 69 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 70 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 71 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 72 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_1 + 73 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_1 + 74 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_1 + 75 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_1 + 76 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_1 + 77 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_1 + 78 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_1 + 79 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_1 + 81 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_1 + 82 + OFFSET_X, 1, -40 );
setRotateKey( spep_1 + 83 + OFFSET_X, 1, -40 );
setRotateKey( spep_1 + 84 + OFFSET_X, 1, -9 );
setRotateKey( spep_1 + 104 + OFFSET_X, 1, -9 );

-- 敵の動き2
setDisp( spep_1 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 176 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 146 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 146 + OFFSET_X, 1, -492.8, 303.8 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, -492.8, 303.8 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, -457.3, 283.8 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, -457.3, 283.8 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, -421.7, 263.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, -421.7, 263.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, -386.2, 243.6 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, -386.2, 243.6 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, -350.6, 223.5 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, -350.6, 223.5 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, -315, 203.5 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, -315, 203.5 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, -279.5, 183.4 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, -279.5, 183.4 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, -243.9, 163.3 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, -243.9, 163.3 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -208.4, 143.3 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, -208.4, 143.3 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, -172.8, 123.2 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, -172.8, 123.2 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -137.3, 103.1 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, -137.3, 103.1 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -101.7, 83.1 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, -101.7, 83.1 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -66.1, 63 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, -66.1, 63 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -30.6, 42.9 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, -30.6, 42.9 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 5, 22.8 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 5, 22.8 , 0 );

setScaleKey( spep_1 + 146 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_1 + 146 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, 43.1 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_1 + 8;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 8, 1042);
stopSe( SP_dodge - 8, SE001, 0);
stopSe( SP_dodge - 8, SE002, 0);
stopSe( SP_dodge - 8, SE004, 0);
stopSe( SP_dodge - 8, SE005, 0);
stopSe( SP_dodge - 8, SE00X, 0);

speff = entryEffectUnpausable( SP_dodge-8, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-- ** 音 ** --
--初手パンチ
SE006 = playSeVer2( spep_1 + 8, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE006, 126 );
SE007 = playSeVer2( spep_1 + 14, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 14, 1110, "", 0, 0, 0, -1);

--連続パンチ
SE009 = playSeVer2( spep_1 + 32, 1425, "",spep_1 + 82, 0, 10, -1);
SE010 = playSeVer2( spep_1 + 32, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 66, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE012 = playSeVer2( spep_1 + 74, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 82, 1120, "", 0, 0, 0, -1);

--気弾溜め
SE014 = playSeVer2( spep_1 + 104, 1191, "",spep_1 + 144, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 104, SE014, 158 );
SE015 = playSeVer2( spep_1 + 104, 49, "", 0, 0, 0, -1);

--気弾発射
SE016 = playSeVer2( spep_1 + 120, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 120, SE016, 73 );
SE017 = playSeVer2( spep_1 + 122, 1212, "",spep_1 + 194, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 122, SE017, 69 );
SE018 = playSeVer2( spep_1 + 122, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 122, 1109, "", 0, 0, 0, -1);

--爆発
SE020 = playSeVer2( spep_1 + 168, 1023, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 176, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 176, SE021, 79 );

--気ダメ１
SE022 = playSeVer2( spep_1 + 224, 1374, "",spep_1 + 348, 18, 16, -1);
setSeVolumeByWorkId( spep_1 + 224, SE022, 87 );
setStartTimeMs( SE022,  667 );
setPitch( spep_1 + 230, SE022, -500 );
setTimeStretch( SE022, 0.80, 30, 4 );
SE025 = playSeVer2( spep_1 + 218, 1258, "",spep_1 + 350, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 218, SE025, 63 );

--構える
SE023 = playSeVer2( spep_1 + 204, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 206, 1006, "", 0, 0, 0, -1);

--気ダメ２
SE026 = playSeVer2( spep_1 + 258, 1176, "",spep_1 + 348, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 258, SE026, 73 );
SE028 = playSeVer2( spep_1 + 270, 1354, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 270, 1326, "",spep_1 + 350, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 270, SE029, 114 );

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;  -- 326

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_3 = showCardCutin(spep_2, 0);

------------------------------------------------------
-- 剣シャキン→ラスト爆発：敵より前 ef_004
------------------------------------------------------
MAX_FRAME_3 = 656;

-- ** エフェクト等 ** --
SP_04 = entryEffect( spep_3 + 0, SP_004, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_04, -1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_04, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_04, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_04, 0 );
setEffAlphaKey( spep_3 + 0, SP_04, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_04, 255 );
SP_05 = entryEffect( spep_3 + 0, SP_005, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, SP_05, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_05, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_05, -1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_05, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_05, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_05, 0 );
setEffAlphaKey( spep_3 + 0, SP_05, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_05, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 370 + OFFSET_X, 1, 1 );
setDisp( spep_3 + 540 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 370 + OFFSET_X, 1, 8 );
changeAnime( spep_3 + 414 + OFFSET_X, 1, 6 );

setMoveKey( spep_3 + 370 + OFFSET_X, 1, -238.3, 405.4 , 0 );
setMoveKey( spep_3 + 373 + OFFSET_X, 1, -238.3, 405.4 , 0 );
setMoveKey( spep_3 + 374 + OFFSET_X, 1, -238.3, 349.2 , 0 );
setMoveKey( spep_3 + 375 + OFFSET_X, 1, -238.3, 349.2 , 0 );
setMoveKey( spep_3 + 376 + OFFSET_X, 1, -238.3, 322.5 , 0 );
setMoveKey( spep_3 + 377 + OFFSET_X, 1, -238.3, 322.5 , 0 );
setMoveKey( spep_3 + 378 + OFFSET_X, 1, -238.3, 302.5 , 0 );
setMoveKey( spep_3 + 379 + OFFSET_X, 1, -238.3, 302.5 , 0 );
setMoveKey( spep_3 + 380 + OFFSET_X, 1, -238.3, 286.2 , 0 );
setMoveKey( spep_3 + 381 + OFFSET_X, 1, -238.3, 286.2 , 0 );
setMoveKey( spep_3 + 382 + OFFSET_X, 1, -238.3, 272.1 , 0 );
setMoveKey( spep_3 + 383 + OFFSET_X, 1, -238.3, 272.1 , 0 );
setMoveKey( spep_3 + 384 + OFFSET_X, 1, -238.3, 259.6 , 0 );
setMoveKey( spep_3 + 385 + OFFSET_X, 1, -238.3, 259.6 , 0 );
setMoveKey( spep_3 + 386 + OFFSET_X, 1, -238.3, 248.4 , 0 );
setMoveKey( spep_3 + 387 + OFFSET_X, 1, -238.3, 248.4 , 0 );
setMoveKey( spep_3 + 388 + OFFSET_X, 1, -270, 212.6 , 0 );
setMoveKey( spep_3 + 389 + OFFSET_X, 1, -270, 212.6 , 0 );
setMoveKey( spep_3 + 390 + OFFSET_X, 1, -213, 236.7 , 0 );
setMoveKey( spep_3 + 391 + OFFSET_X, 1, -213, 236.7 , 0 );
setMoveKey( spep_3 + 392 + OFFSET_X, 1, -247.8, 215 , 0 );
setMoveKey( spep_3 + 393 + OFFSET_X, 1, -247.8, 215 , 0 );
setMoveKey( spep_3 + 394 + OFFSET_X, 1, -202.4, 199.8 , 0 );
setMoveKey( spep_3 + 395 + OFFSET_X, 1, -202.4, 199.8 , 0 );
setMoveKey( spep_3 + 396 + OFFSET_X, 1, -247.7, 234.2 , 0 );
setMoveKey( spep_3 + 397 + OFFSET_X, 1, -247.7, 234.2 , 0 );
setMoveKey( spep_3 + 398 + OFFSET_X, 1, -270, 171.3 , 0 );
setMoveKey( spep_3 + 399 + OFFSET_X, 1, -270, 171.3 , 0 );
setMoveKey( spep_3 + 400 + OFFSET_X, 1, -192.4, 202.7 , 0 );
setMoveKey( spep_3 + 401 + OFFSET_X, 1, -192.4, 202.7 , 0 );
setMoveKey( spep_3 + 402 + OFFSET_X, 1, -236.3, 191.7 , 0 );
setMoveKey( spep_3 + 403 + OFFSET_X, 1, -236.3, 191.7 , 0 );
setMoveKey( spep_3 + 404 + OFFSET_X, 1, -244.5, 177.3 , 0 );
setMoveKey( spep_3 + 405 + OFFSET_X, 1, -244.5, 177.3 , 0 );
setMoveKey( spep_3 + 406 + OFFSET_X, 1, -238.3, 171.4 , 0 );
setMoveKey( spep_3 + 407 + OFFSET_X, 1, -238.3, 171.4 , 0 );
setMoveKey( spep_3 + 408 + OFFSET_X, 1, -244.5, 165.7 , 0 );
setMoveKey( spep_3 + 409 + OFFSET_X, 1, -244.5, 165.7 , 0 );
setMoveKey( spep_3 + 410 + OFFSET_X, 1, -236.3, 168.5 , 0 );
setMoveKey( spep_3 + 411 + OFFSET_X, 1, -236.3, 168.5 , 0 );
setMoveKey( spep_3 + 412 + OFFSET_X, 1, -244.5, 155 , 0 );
setMoveKey( spep_3 + 413 + OFFSET_X, 1, -244.5, 155 , 0 );
setMoveKey( spep_3 + 414 + OFFSET_X, 1, -137.6, 104.8 , 0 );
setMoveKey( spep_3 + 415 + OFFSET_X, 1, -137.6, 104.8 , 0 );
setMoveKey( spep_3 + 416 + OFFSET_X, 1, -137.6, 100 , 0 );
setMoveKey( spep_3 + 417 + OFFSET_X, 1, -137.6, 100 , 0 );
setMoveKey( spep_3 + 418 + OFFSET_X, 1, -137.6, 115.3 , 0 );
setMoveKey( spep_3 + 419 + OFFSET_X, 1, -137.6, 115.3 , 0 );
setMoveKey( spep_3 + 420 + OFFSET_X, 1, -137.6, 110.8 , 0 );
setMoveKey( spep_3 + 421 + OFFSET_X, 1, -137.6, 110.8 , 0 );
setMoveKey( spep_3 + 422 + OFFSET_X, 1, -137.6, 106.5 , 0 );
setMoveKey( spep_3 + 423 + OFFSET_X, 1, -137.6, 106.5 , 0 );
setMoveKey( spep_3 + 424 + OFFSET_X, 1, -137.6, 102.3 , 0 );
setMoveKey( spep_3 + 425 + OFFSET_X, 1, -137.6, 102.3 , 0 );
setMoveKey( spep_3 + 426 + OFFSET_X, 1, -137.6, 98.3 , 0 );
setMoveKey( spep_3 + 427 + OFFSET_X, 1, -137.6, 98.3 , 0 );
setMoveKey( spep_3 + 428 + OFFSET_X, 1, -137.6, 94.3 , 0 );
setMoveKey( spep_3 + 429 + OFFSET_X, 1, -137.6, 94.3 , 0 );
setMoveKey( spep_3 + 430 + OFFSET_X, 1, -137.6, 90.5 , 0 );
setMoveKey( spep_3 + 431 + OFFSET_X, 1, -137.6, 90.5 , 0 );
setMoveKey( spep_3 + 432 + OFFSET_X, 1, -137.6, 86.8 , 0 );
setMoveKey( spep_3 + 433 + OFFSET_X, 1, -137.6, 86.8 , 0 );
setMoveKey( spep_3 + 434 + OFFSET_X, 1, -137.6, 83.3 , 0 );
setMoveKey( spep_3 + 435 + OFFSET_X, 1, -137.6, 83.3 , 0 );
setMoveKey( spep_3 + 436 + OFFSET_X, 1, -137.6, 79.8 , 0 );
setMoveKey( spep_3 + 437 + OFFSET_X, 1, -137.6, 79.8 , 0 );
setMoveKey( spep_3 + 438 + OFFSET_X, 1, -137.6, 76.4 , 0 );
setMoveKey( spep_3 + 439 + OFFSET_X, 1, -137.6, 76.4 , 0 );
setMoveKey( spep_3 + 440 + OFFSET_X, 1, -137.6, 73.1 , 0 );
setMoveKey( spep_3 + 441 + OFFSET_X, 1, -137.6, 73.1 , 0 );
setMoveKey( spep_3 + 442 + OFFSET_X, 1, -137.5, 69.9 , 0 );
setMoveKey( spep_3 + 443 + OFFSET_X, 1, -137.5, 69.9 , 0 );
setMoveKey( spep_3 + 444 + OFFSET_X, 1, -137.5, 66.8 , 0 );
setMoveKey( spep_3 + 445 + OFFSET_X, 1, -137.5, 66.8 , 0 );
setMoveKey( spep_3 + 446 + OFFSET_X, 1, -137.5, 63.8 , 0 );
setMoveKey( spep_3 + 447 + OFFSET_X, 1, -137.5, 63.8 , 0 );
setMoveKey( spep_3 + 448 + OFFSET_X, 1, -137.5, 60.8 , 0 );
setMoveKey( spep_3 + 449 + OFFSET_X, 1, -137.5, 60.8 , 0 );
setMoveKey( spep_3 + 450 + OFFSET_X, 1, -137.5, 58 , 0 );
setMoveKey( spep_3 + 451 + OFFSET_X, 1, -137.5, 58 , 0 );
setMoveKey( spep_3 + 452 + OFFSET_X, 1, -137.5, 55.2 , 0 );
setMoveKey( spep_3 + 453 + OFFSET_X, 1, -137.5, 55.2 , 0 );
setMoveKey( spep_3 + 454 + OFFSET_X, 1, -137.5, 52.4 , 0 );
setMoveKey( spep_3 + 455 + OFFSET_X, 1, -137.5, 52.4 , 0 );
setMoveKey( spep_3 + 456 + OFFSET_X, 1, -137.5, 49.8 , 0 );
setMoveKey( spep_3 + 457 + OFFSET_X, 1, -137.5, 49.8 , 0 );
setMoveKey( spep_3 + 458 + OFFSET_X, 1, -137.5, 47.2 , 0 );
setMoveKey( spep_3 + 459 + OFFSET_X, 1, -137.5, 47.2 , 0 );
setMoveKey( spep_3 + 460 + OFFSET_X, 1, -137.6, 45.1 , 0 );
setMoveKey( spep_3 + 461 + OFFSET_X, 1, -137.6, 45.1 , 0 );
setMoveKey( spep_3 + 462 + OFFSET_X, 1, -136.7, -181.3 , 0 );
setMoveKey( spep_3 + 463 + OFFSET_X, 1, -136.7, -181.3 , 0 );
setMoveKey( spep_3 + 464 + OFFSET_X, 1, -137.6, -134.4 , 0 );
setMoveKey( spep_3 + 465 + OFFSET_X, 1, -137.6, -134.4 , 0 );
setMoveKey( spep_3 + 466 + OFFSET_X, 1, -145.8, -95.8 , 0 );
setMoveKey( spep_3 + 467 + OFFSET_X, 1, -145.8, -95.8 , 0 );
setMoveKey( spep_3 + 468 + OFFSET_X, 1, -151.4, -74.2 , 0 );
setMoveKey( spep_3 + 469 + OFFSET_X, 1, -151.4, -74.2 , 0 );
setMoveKey( spep_3 + 470 + OFFSET_X, 1, -159.4, -48.2 , 0 );
setMoveKey( spep_3 + 471 + OFFSET_X, 1, -159.4, -48.2 , 0 );
setMoveKey( spep_3 + 472 + OFFSET_X, 1, -162.7, -36.8 , 0 );
setMoveKey( spep_3 + 473 + OFFSET_X, 1, -162.7, -36.8 , 0 );
setMoveKey( spep_3 + 474 + OFFSET_X, 1, -165.2, -19.2 , 0 );
setMoveKey( spep_3 + 475 + OFFSET_X, 1, -165.2, -19.2 , 0 );
setMoveKey( spep_3 + 476 + OFFSET_X, 1, -166.7, -14.9 , 0 );
setMoveKey( spep_3 + 477 + OFFSET_X, 1, -166.7, -14.9 , 0 );
setMoveKey( spep_3 + 478 + OFFSET_X, 1, -167.2, -13.5 , 0 );
setMoveKey( spep_3 + 479 + OFFSET_X, 1, -167.2, -13.5 , 0 );
setMoveKey( spep_3 + 480 + OFFSET_X, 1, -167, -13.6 , 0 );
setMoveKey( spep_3 + 481 + OFFSET_X, 1, -167, -13.6 , 0 );
setMoveKey( spep_3 + 482 + OFFSET_X, 1, -166.9, -13.6 , 0 );
setMoveKey( spep_3 + 483 + OFFSET_X, 1, -166.9, -13.6 , 0 );
setMoveKey( spep_3 + 484 + OFFSET_X, 1, -166.7, -13.7 , 0 );
setMoveKey( spep_3 + 485 + OFFSET_X, 1, -166.7, -13.7 , 0 );
setMoveKey( spep_3 + 486 + OFFSET_X, 1, -166.5, -13.7 , 0 );
setMoveKey( spep_3 + 487 + OFFSET_X, 1, -166.5, -13.7 , 0 );
setMoveKey( spep_3 + 488 + OFFSET_X, 1, -166.4, -13.7 , 0 );
setMoveKey( spep_3 + 489 + OFFSET_X, 1, -166.4, -13.7 , 0 );
setMoveKey( spep_3 + 490 + OFFSET_X, 1, -166.2, -13.8 , 0 );
setMoveKey( spep_3 + 491 + OFFSET_X, 1, -166.2, -13.8 , 0 );
setMoveKey( spep_3 + 492 + OFFSET_X, 1, -166, -13.8 , 0 );
setMoveKey( spep_3 + 493 + OFFSET_X, 1, -166, -13.8 , 0 );
setMoveKey( spep_3 + 494 + OFFSET_X, 1, -165.9, -13.9 , 0 );
setMoveKey( spep_3 + 495 + OFFSET_X, 1, -165.9, -13.9 , 0 );
setMoveKey( spep_3 + 496 + OFFSET_X, 1, -165.7, -13.9 , 0 );
setMoveKey( spep_3 + 497 + OFFSET_X, 1, -165.7, -13.9 , 0 );
setMoveKey( spep_3 + 498 + OFFSET_X, 1, -165.5, -14 , 0 );
setMoveKey( spep_3 + 499 + OFFSET_X, 1, -165.5, -14 , 0 );
setMoveKey( spep_3 + 500 + OFFSET_X, 1, -165.4, -14 , 0 );
setMoveKey( spep_3 + 501 + OFFSET_X, 1, -165.4, -14 , 0 );
setMoveKey( spep_3 + 502 + OFFSET_X, 1, -165.2, -14.1 , 0 );
setMoveKey( spep_3 + 503 + OFFSET_X, 1, -165.2, -14.1 , 0 );
setMoveKey( spep_3 + 504 + OFFSET_X, 1, -165, -14.1 , 0 );
setMoveKey( spep_3 + 505 + OFFSET_X, 1, -165, -14.1 , 0 );
setMoveKey( spep_3 + 506 + OFFSET_X, 1, -164.9, -14.1 , 0 );
setMoveKey( spep_3 + 507 + OFFSET_X, 1, -164.9, -14.1 , 0 );
setMoveKey( spep_3 + 508 + OFFSET_X, 1, -164.7, -14.2 , 0 );
setMoveKey( spep_3 + 509 + OFFSET_X, 1, -164.7, -14.2 , 0 );
setMoveKey( spep_3 + 510 + OFFSET_X, 1, -164.5, -14.2 , 0 );
setMoveKey( spep_3 + 511 + OFFSET_X, 1, -164.5, -14.2 , 0 );
setMoveKey( spep_3 + 512 + OFFSET_X, 1, -164.4, -14.3 , 0 );
setMoveKey( spep_3 + 513 + OFFSET_X, 1, -164.4, -14.3 , 0 );
setMoveKey( spep_3 + 514 + OFFSET_X, 1, -164.2, -14.3 , 0 );
setMoveKey( spep_3 + 515 + OFFSET_X, 1, -164.2, -14.3 , 0 );
setMoveKey( spep_3 + 516 + OFFSET_X, 1, -164, -14.4 , 0 );
setMoveKey( spep_3 + 517 + OFFSET_X, 1, -164, -14.4 , 0 );
setMoveKey( spep_3 + 518 + OFFSET_X, 1, -163.9, -14.4 , 0 );
setMoveKey( spep_3 + 519 + OFFSET_X, 1, -163.9, -14.4 , 0 );
setMoveKey( spep_3 + 520 + OFFSET_X, 1, -163.7, -14.4 , 0 );
setMoveKey( spep_3 + 521 + OFFSET_X, 1, -163.7, -14.4 , 0 );
setMoveKey( spep_3 + 522 + OFFSET_X, 1, -163.5, -14.5 , 0 );
setMoveKey( spep_3 + 523 + OFFSET_X, 1, -163.5, -14.5 , 0 );
setMoveKey( spep_3 + 524 + OFFSET_X, 1, -163.4, -14.5 , 0 );
setMoveKey( spep_3 + 525 + OFFSET_X, 1, -163.4, -14.5 , 0 );
setMoveKey( spep_3 + 526 + OFFSET_X, 1, -163.2, -14.6 , 0 );
setMoveKey( spep_3 + 527 + OFFSET_X, 1, -163.2, -14.6 , 0 );
setMoveKey( spep_3 + 528 + OFFSET_X, 1, -163, -14.6 , 0 );
setMoveKey( spep_3 + 529 + OFFSET_X, 1, -163, -14.6 , 0 );
setMoveKey( spep_3 + 530 + OFFSET_X, 1, -162.9, -14.7 , 0 );
setMoveKey( spep_3 + 531 + OFFSET_X, 1, -162.9, -14.7 , 0 );
setMoveKey( spep_3 + 532 + OFFSET_X, 1, -162.7, -14.7 , 0 );
setMoveKey( spep_3 + 533 + OFFSET_X, 1, -162.7, -14.7 , 0 );
setMoveKey( spep_3 + 534 + OFFSET_X, 1, -162.5, -14.8 , 0 );
setMoveKey( spep_3 + 535 + OFFSET_X, 1, -162.5, -14.8 , 0 );
setMoveKey( spep_3 + 536 + OFFSET_X, 1, -162.4, -14.8 , 0 );
setMoveKey( spep_3 + 537 + OFFSET_X, 1, -162.4, -14.8 , 0 );
setMoveKey( spep_3 + 538 + OFFSET_X, 1, -162.2, -14.8 , 0 );
setMoveKey( spep_3 + 539 + OFFSET_X, 1, -162.2, -14.8 , 0 );
setMoveKey( spep_3 + 540 + OFFSET_X, 1, -162, -14.9 , 0 );

setScaleKey( spep_3 + 370 + OFFSET_X, 1, 9.6, 9.6 );
setScaleKey( spep_3 + 413 + OFFSET_X, 1, 9.6, 9.6 );
setScaleKey( spep_3 + 414 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_3 + 461 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_3 + 462 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 463 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 464 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 465 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 466 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 467 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 468 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 469 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 470 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 471 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 472 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 473 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 474 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 475 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 476 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 477 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 478 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_3 + 540 + OFFSET_X, 1, 0.32, 0.32 );

setRotateKey( spep_3 + 370 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 413 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 414 + OFFSET_X, 1, 46.8 );
setRotateKey( spep_3 + 415 + OFFSET_X, 1, 46.8 );
setRotateKey( spep_3 + 416 + OFFSET_X, 1, 46.4 );
setRotateKey( spep_3 + 417 + OFFSET_X, 1, 46.4 );
setRotateKey( spep_3 + 418 + OFFSET_X, 1, 46.1 );
setRotateKey( spep_3 + 419 + OFFSET_X, 1, 46.1 );
setRotateKey( spep_3 + 420 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_3 + 421 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_3 + 422 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_3 + 423 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_3 + 424 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_3 + 425 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_3 + 426 + OFFSET_X, 1, 45 );
setRotateKey( spep_3 + 427 + OFFSET_X, 1, 45 );
setRotateKey( spep_3 + 428 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_3 + 429 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_3 + 430 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_3 + 431 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_3 + 432 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_3 + 433 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_3 + 434 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_3 + 435 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_3 + 436 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_3 + 437 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_3 + 438 + OFFSET_X, 1, 43.8 );
setRotateKey( spep_3 + 439 + OFFSET_X, 1, 43.8 );
setRotateKey( spep_3 + 440 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_3 + 441 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_3 + 442 + OFFSET_X, 1, 43.5 );
setRotateKey( spep_3 + 443 + OFFSET_X, 1, 43.5 );
setRotateKey( spep_3 + 444 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_3 + 445 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_3 + 446 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_3 + 447 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_3 + 448 + OFFSET_X, 1, 43.2 );
setRotateKey( spep_3 + 449 + OFFSET_X, 1, 43.2 );
setRotateKey( spep_3 + 450 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_3 + 453 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_3 + 454 + OFFSET_X, 1, 43 );
setRotateKey( spep_3 + 461 + OFFSET_X, 1, 43 );
setRotateKey( spep_3 + 462 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_3 + 463 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_3 + 464 + OFFSET_X, 1, 30 );
setRotateKey( spep_3 + 465 + OFFSET_X, 1, 30 );
setRotateKey( spep_3 + 466 + OFFSET_X, 1, 31.6 );
setRotateKey( spep_3 + 467 + OFFSET_X, 1, 31.6 );
setRotateKey( spep_3 + 468 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_3 + 469 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_3 + 470 + OFFSET_X, 1, 34 );
setRotateKey( spep_3 + 471 + OFFSET_X, 1, 34 );
setRotateKey( spep_3 + 472 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_3 + 473 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_3 + 474 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_3 + 475 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_3 + 476 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_3 + 477 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_3 + 478 + OFFSET_X, 1, 36 );
setRotateKey( spep_3 + 540 + OFFSET_X, 1, 36 );

-- ** 音 ** --
--オーラ
SE027 = playSeVer2( spep_3 + 0, 1371, "",spep_3 + 134, 14, 24, -1);
setSeVolumeByWorkId( spep_3 + 0, SE027, 70 );
setStartTimeMs( SE027,  2500 );
setPitch( spep_3 + 0, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );
SE031 = playSeVer2( spep_3 + 2, 1176, "",spep_3 + 134, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 2, SE031, 72 );

--剣出す
SE032 = playSeVer2( spep_3 + 92, 1204, "",spep_3 + 220, 10, 54, -1);
setStartTimeMs( SE032,  1633 );
SE034 = playSeVer2( spep_3 + 98, 1142, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 98, 1240, "",spep_3 + 176, 0, 22, -1);
setPitch( spep_3 + 98, SE035, -400 );
setTimeStretch( SE035, 0.73, 30, 4 );
SE036 = playSeVer2( spep_3 + 98, 1026, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_3 + 98, 1152, "", 0, 0, 0, -1);

--腕構える
SE033 = playSeVer2( spep_3 + 40, 1003, "", 0, 0, 0, -1);

--飛んでくる
SE038 = playSeVer2( spep_3 + 180, 1183, "",spep_3 + 290, 12, 42, -1);
setStartTimeMs( SE038,  467 );
SE039 = playSeVer2( spep_3 + 180, 1182, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_3 + 180, 1277, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_3 + 190, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 190, SE041, 65 );

--舞う
SE042 = playSeVer2( spep_3 + 262, 1142, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_3 + 262, 1430, "",spep_3 + 432, 0, 32, -1);
setSeVolumeByWorkId( spep_3 + 262, SE043, 82 );
SE044 = playSeVer2( spep_3 + 274, 1116, "",spep_3 + 314, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 274, SE044, 106 );
SE045 = playSeVer2( spep_3 + 278, 1403, "",spep_3 + 420, 0, 16, -1);
SE047 = playSeVer2( spep_3 + 292, 1286, "",spep_3 + 436, 0, 30, -1);
SE048 = playSeVer2( spep_3 + 300, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 300, SE048, 73 );
setPitch( spep_3 + 300, SE048, -400 );
setTimeStretch( SE048, 0.73, 30, 4 );

--気弾発射
SE046 = playSeVer2( spep_3 + 336, 1406, "",spep_3 + 418, 12, 20, -1);
setSeVolumeByWorkId( spep_3 + 336, SE046, 78 );
setStartTimeMs( SE046,  733 );
SE049 = playSeVer2( spep_3 + 340, 1424, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_3 + 340, 1423, "",spep_3 + 424, 0, 24, -1);
setSeVolumeByWorkId( spep_3 + 340, SE050, 120 );
SE051 = playSeVer2( spep_3 + 340, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 340, SE051, 120 );

--身体に刺さる
SE052 = playSeVer2( spep_3 + 380, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 380, SE052, 67 );
setPitch( spep_3 + 380, SE052, -400 );
setTimeStretch( SE052, 0.73, 30, 4 );
SE053 = playSeVer2( spep_3 + 384, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 384, SE053, 72 );
SE054 = playSeVer2( spep_3 + 388, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 388, SE054, 56 );
setPitch( spep_3 + 388, SE054, -400 );
setTimeStretch( SE054, 0.73, 30, 4 );
stopSeIfDoubleSpeed( spep_3 + 388, SE054 );
SE055 = playSeVer2( spep_3 + 392, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 392, SE055, 59 );
SE056 = playSeVer2( spep_3 + 394, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 394, SE056, 58 );
setPitch( spep_3 + 394, SE056, -400 );
setTimeStretch( SE056, 0.73, 30, 4 );
SE057 = playSeVer2( spep_3 + 398, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 398, SE057, 63 );
stopSeIfDoubleSpeed( spep_3 + 398, SE057 );
SE058_1 = playSeVer2( spep_3 + 398, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 398, SE058_1, 73 );
setPitch( spep_3 + 398, SE058_1, -400 );
setTimeStretch( SE058_1, 0.73, 30, 4 );
SE058_2 = playSeVer2( spep_3 + 390, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 390, SE058_2, 40 );
SE059 = playSeVer2( spep_3 + 404, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 404, SE059, 59 );

--ポーズ取る
SE060 = playSeVer2( spep_3 + 462, 1235, "",spep_3 + 510, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 462, SE060, 80 );
setPitch( spep_3 + 462, SE060, -600 );
setTimeStretch( SE060, 0.6, 30, 4 );
SE061 = playSeVer2( spep_3 + 466, 1004, "", 0, 0, 0, -1);
setPitch( spep_3 + 466, SE061, -300 );
setTimeStretch( SE061, 0.8, 30, 4 );
SE062 = playSeVer2( spep_3 + 466, 1152, "",spep_3 + 532, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 466, SE062, 56 );
SE063 = playSeVer2( spep_3 + 488, 1424, "",spep_3 + 530, 4, 10, -1);
setStartTimeMs( SE063,  200 );
setPitch( spep_3 + 488, SE063, -500 );
setTimeStretch( SE063, 0.67, 30, 4 );
SE064 = playSeVer2( spep_3 + 484, 1235, "",spep_3 + 532, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 484, SE064, 84 );
setPitch( spep_3 + 484, SE064, -600 );
setTimeStretch( SE064, 0.6, 30, 4 );
SE065 = playSeVer2( spep_3 + 488, 1004, "", 0, 0, 0, -1);
setPitch( spep_3 + 488, SE065, -300 );
setTimeStretch( SE065, 0.8, 30, 4 );

--ポーズ取る決め
SE066 = playSeVer2( spep_3 + 508, 1208, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 508, SE066, 79 );
SE067 = playSeVer2( spep_3 + 518, 1006, "", 0, 0, 0, -1);

--爆発
SE068 = playSeVer2( spep_3 + 538, 1024, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_3 + 552, 1058, "", 0, 0, 0, -1);

dealDamage( spep_3 + 550 );
endPhase( spep_3 +  MAX_FRAME_3 - 2 );  -- 656

end
