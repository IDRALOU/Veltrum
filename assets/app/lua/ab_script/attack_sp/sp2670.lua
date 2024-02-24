-- 1028270: SSR_ゴクウブラック(超サイヤ人ロゼ)_必殺技：神裂光弾
-- sp_effect_a1_00417
-- sp2670

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162549;  -- 冒頭突進 ef_001
SP_006 = 162554;  -- 格闘→爆発：敵より前 ef_006
SP_007 = 162555;  -- 格闘→爆発：敵より後ろ ef_007

-- 敵側
SP_006r = 162557;  -- 格闘→爆発：敵より前:反転 ef_006r

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

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 格闘→爆発：敵より前 ef_006
------------------------------------------------------
MAX_FRAME_2 = 286;

-- ** エフェクト等 ** --
SP_06 = entryEffect( spep_2 + 0, SP_006, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_06, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_06, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_06, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_06, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_06, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_06, 0 );
setEffAlphaKey( spep_2 + 0, SP_06, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_06, 255 );
SP_07 = entryEffect( spep_2 + 0, SP_007, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_07, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_07, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_07, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_07, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_07, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_07, 0 );
setEffAlphaKey( spep_2 + 0, SP_07, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_07, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 1 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 18 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 36 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 42 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 50 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 56 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 64 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 70 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 84 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 1 + OFFSET_X, 1, 28.6, -21.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 28.6, -21.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 65.3, -16 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 65.3, -16 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 14.4, -12.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 14.4, -12.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 49.2, 12.5 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 49.2, 12.5 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 60.9, -23.8 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 60.9, -23.8 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 39.7, -6.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 39.7, -6.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 47.5, -6.5 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 47.5, -6.5 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 51.8, -6.6 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 51.8, -6.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 56.1, -6.6 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 56.1, -6.6 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 60.5, -6.6 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 60.5, -6.6 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 84.8, -6.5 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 84.8, -6.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 91.4, -12.5 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 91.4, -12.5 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 75.5, -6.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 75.5, -6.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 95.3, -3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 95.3, -3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 129.2, -16 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 129.2, -16 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 108.5, -12.6 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 108.5, -12.6 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 102.3, -6.5 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 102.3, -6.5 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 106.5, -6.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 106.5, -6.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 141.3, -15.8 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 141.3, -15.8 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 73.6, -12.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 73.6, -12.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 87.1, -6.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 87.1, -6.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 106.9, -3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 106.9, -3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 140.9, -15.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 140.9, -15.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 92.9, -2.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 92.9, -2.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 118.2, -4.6 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 118.2, -4.6 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -32.1, 122.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -32.1, 122.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 20.4, 113.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 20.4, 113.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 54.7, 82 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 54.7, 82 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 148.4, 72.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 148.4, 72.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 193.7, 11.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 193.7, 11.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 249.7, -11.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 249.7, -11.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 323.2, -51.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 323.2, -51.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 389.8, -86 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 389.8, -86 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 456.4, -120.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 456.4, -120.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 523.1, -155.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 523.1, -155.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 589.7, -190.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 589.7, -190.4 , 0 );

setScaleKey( spep_2 + 1 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 3.8, 3.8 );

setRotateKey( spep_2 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -9 );

-- 敵の動き2
setDisp( spep_2 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 176 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 146 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 146 + OFFSET_X, 1, -492.8, 303.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -492.8, 303.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -457.3, 283.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -457.3, 283.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -421.7, 263.7 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -421.7, 263.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -386.2, 243.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -386.2, 243.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -350.6, 223.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -350.6, 223.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -315, 203.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -315, 203.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -279.5, 183.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -279.5, 183.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -243.9, 163.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -243.9, 163.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -208.4, 143.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -208.4, 143.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -172.8, 123.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -172.8, 123.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -137.3, 103.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -137.3, 103.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -101.7, 83.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -101.7, 83.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -66.1, 63 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -66.1, 63 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -30.6, 42.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -30.6, 42.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 5, 22.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 5, 22.8 , 0 );

setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_2 + 146 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 43.1 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_2 + 8;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 8, 1042);
stopSe( SP_dodge - 8, SE001, 0);
stopSe( SP_dodge - 8, SE002, 0);
stopSe( SP_dodge - 8, SE004, 0);
stopSe( SP_dodge - 8, SE005, 0);
stopSe( SP_dodge - 8, SE00X, 0);
stopSe( SP_dodge - 8, SE_CUTIN, 0);

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
SE006 = playSeVer2( spep_2 + 8, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE006, 126 );
SE007 = playSeVer2( spep_2 + 14, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 14, 1110, "", 0, 0, 0, -1);

--連続パンチ
SE009 = playSeVer2( spep_2 + 32, 1425, "",spep_2 + 82, 0, 10, -1);
SE010 = playSeVer2( spep_2 + 32, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 66, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE012 = playSeVer2( spep_2 + 74, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 82, 1120, "", 0, 0, 0, -1);

--気弾溜め
SE014 = playSeVer2( spep_2 + 104, 1191, "",spep_2 + 144, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 104, SE014, 158 );
SE015 = playSeVer2( spep_2 + 104, 49, "", 0, 0, 0, -1);

--気弾発射
SE016 = playSeVer2( spep_2 + 120, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE016, 73 );
SE017 = playSeVer2( spep_2 + 122, 1212, "",spep_2 + 194, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 122, SE017, 69 );
SE018 = playSeVer2( spep_2 + 122, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 122, 1109, "", 0, 0, 0, -1);

--爆発
SE020 = playSeVer2( spep_2 + 168, 1023, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 176, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 176, SE021, 79 );

-- ** おわり ** --
dealDamage( spep_2 + 180 );
endPhase( spep_2 +  MAX_FRAME_2 - 2 );  -- 286

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

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 格闘→爆発：敵より前 ef_006
------------------------------------------------------
MAX_FRAME_2 = 286;

-- ** エフェクト等 ** --
SP_06 = entryEffect( spep_2 + 0, SP_006r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_06, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_06, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_06, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_06, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_06, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_06, 0 );
setEffAlphaKey( spep_2 + 0, SP_06, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_06, 255 );
SP_07 = entryEffect( spep_2 + 0, SP_007, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_07, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_07, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_07, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_07, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_07, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_07, 0 );
setEffAlphaKey( spep_2 + 0, SP_07, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_07, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 1 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 18 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 36 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 42 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 50 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 56 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 64 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 70 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 84 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 1 + OFFSET_X, 1, 28.6, -21.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 28.6, -21.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 65.3, -16 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 65.3, -16 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 14.4, -12.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 14.4, -12.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 49.2, 12.5 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 49.2, 12.5 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 60.9, -23.8 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 60.9, -23.8 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 39.7, -6.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 39.7, -6.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 47.5, -6.5 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 47.5, -6.5 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 51.8, -6.6 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 51.8, -6.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 56.1, -6.6 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 56.1, -6.6 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 60.5, -6.6 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 60.5, -6.6 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 84.8, -6.5 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 84.8, -6.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 91.4, -12.5 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 91.4, -12.5 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 75.5, -6.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 75.5, -6.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 95.3, -3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 95.3, -3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 129.2, -16 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 129.2, -16 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 108.5, -12.6 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 108.5, -12.6 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 102.3, -6.5 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 102.3, -6.5 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 106.5, -6.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 106.5, -6.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 141.3, -15.8 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 141.3, -15.8 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 73.6, -12.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 73.6, -12.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 87.1, -6.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 87.1, -6.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 106.9, -3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 106.9, -3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 140.9, -15.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 140.9, -15.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 92.9, -2.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 92.9, -2.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 119.5, -15.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 118.2, -4.6 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 118.2, -4.6 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -32.1, 122.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -32.1, 122.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 20.4, 113.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 20.4, 113.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 54.7, 82 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 54.7, 82 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 148.4, 72.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 148.4, 72.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 193.7, 11.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 193.7, 11.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 249.7, -11.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 249.7, -11.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 323.2, -51.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 323.2, -51.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 389.8, -86 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 389.8, -86 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 456.4, -120.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 456.4, -120.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 523.1, -155.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 523.1, -155.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 589.7, -190.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 589.7, -190.4 , 0 );

setScaleKey( spep_2 + 1 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 3.8, 3.8 );

setRotateKey( spep_2 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -9 );

-- 敵の動き2
setDisp( spep_2 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 176 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 146 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 146 + OFFSET_X, 1, -492.8, 303.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -492.8, 303.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -457.3, 283.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -457.3, 283.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -421.7, 263.7 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -421.7, 263.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -386.2, 243.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -386.2, 243.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -350.6, 223.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -350.6, 223.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -315, 203.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -315, 203.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -279.5, 183.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -279.5, 183.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -243.9, 163.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -243.9, 163.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -208.4, 143.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -208.4, 143.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -172.8, 123.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -172.8, 123.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -137.3, 103.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -137.3, 103.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -101.7, 83.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -101.7, 83.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -66.1, 63 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -66.1, 63 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -30.6, 42.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -30.6, 42.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 5, 22.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 5, 22.8 , 0 );

setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_2 + 146 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 43.1 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_2 + 8;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 8, 1042);
stopSe( SP_dodge - 8, SE001, 0);
stopSe( SP_dodge - 8, SE002, 0);
stopSe( SP_dodge - 8, SE004, 0);
stopSe( SP_dodge - 8, SE005, 0);
stopSe( SP_dodge - 8, SE00X, 0);
stopSe( SP_dodge - 8, SE_CUTIN, 0);

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
SE006 = playSeVer2( spep_2 + 8, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE006, 126 );
SE007 = playSeVer2( spep_2 + 14, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 14, 1110, "", 0, 0, 0, -1);

--連続パンチ
SE009 = playSeVer2( spep_2 + 32, 1425, "",spep_2 + 82, 0, 10, -1);
SE010 = playSeVer2( spep_2 + 32, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 66, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE012 = playSeVer2( spep_2 + 74, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 82, 1120, "", 0, 0, 0, -1);

--気弾溜め
SE014 = playSeVer2( spep_2 + 104, 1191, "",spep_2 + 144, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 104, SE014, 158 );
SE015 = playSeVer2( spep_2 + 104, 49, "", 0, 0, 0, -1);

--気弾発射
SE016 = playSeVer2( spep_2 + 120, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE016, 73 );
SE017 = playSeVer2( spep_2 + 122, 1212, "",spep_2 + 194, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 122, SE017, 69 );
SE018 = playSeVer2( spep_2 + 122, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 122, 1109, "", 0, 0, 0, -1);

--爆発
SE020 = playSeVer2( spep_2 + 168, 1023, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 176, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 176, SE021, 79 );

-- ** おわり ** --
dealDamage( spep_2 + 180 );
endPhase( spep_2 +  MAX_FRAME_2 - 2 );  -- 286

end
