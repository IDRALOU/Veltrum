--1028280:UR_ゴクウブラック(超サイヤ人ロゼ)_気弾無効
--sp_effect_b4_00314
--as0026

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 162548; --気弾が飛んでくる～気弾が割れて爆発    ef_001

-- ズーム許可
setEnvZoomEnable(0, 0);
setVisibleUI(0, 0);
removeAllEffect(2);--必要

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

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

-- ** 冒頭に白フェードを出す ** --
entryFade(4, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fadeシーン切り替わり予定

ENABLE_AUTO_TIME_STRETCH(0.8);

-----------------------------------------------------
-- 気弾が飛んでくる～気弾が割れて爆発
------------------------------------------------------
flipAttackerSide(0)

spep_1 = 4;
MAX_FRAME_0 = 156;

-- ** エフェクト等 ** --
receive = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, receive, 0, 0, 0 );
setEffMoveKey( spep_1  + MAX_FRAME_0, receive, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, receive, 1.0, 1.0 );
setEffScaleKey( spep_1 + MAX_FRAME_0, receive, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, receive, 0 );
setEffRotateKey( spep_1 + MAX_FRAME_0, receive, 0 );
setEffAlphaKey( spep_1 + 0, receive, 255 );
setEffAlphaKey( spep_1 + MAX_FRAME_0, receive, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--敵気弾とんでくる
SE001 = playSeVer2( spep_1 + 0, 1145, "",spep_1 + 104, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 71 );
SE002 = playSeVer2( spep_1 + 0, 1177, "",spep_1 + 102, 0, 10, -1);

--目見開く
SE003 = playSeVer2( spep_1 + 54, 1232, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 56, 1179, "",spep_1 + 102, 0, 14, -1);
SE005 = playSeVer2( spep_1 + 56, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 56, SE005, 63 );

--無効化
SE006 = playSeVer2( spep_1 + 78, 1318, "",spep_1 + 120, 0, 12, -1);
SE007 = playSeVer2( spep_1 + 82, 1142, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 82, 1055, "", 0, 0, 0, -1);

--爆発
SE009 = playSeVer2( spep_1 + 100, 1023, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 104, 1011, "", 0, 0, 0, -1);


dealDamage( spep_1 + 90 );
endPhase( spep_1 + MAX_FRAME_0 );  --156
