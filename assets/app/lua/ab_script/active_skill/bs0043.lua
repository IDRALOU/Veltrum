--1028280:UR_ゴクウブラック(超サイヤ人ロゼ)_アクティブフィールド展開：怒りの時空破裂
--battle_301277
--bs0043

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3215; --アクティブフィールド展開 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- アクティブバフ
-------------------------------------------------

MAX_FRAME_0 = 948;

-- ** エフェクト等 ** --
base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base, 0);
setEffAlphaKey( spep_0 + 0, base, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --
--集中線
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE001, 0.8, 30, 4 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 130 );
SE002 = playSeVer2( spep_0 + 14, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE002, 88 );
SE003 = playSeVer2( spep_0 + 18, 20, "", 0, 0, 0, -1);
--鎌オーラ
SE004 = playSeVer2( spep_0 + 70, 1397, "",spep_0 + 422, 26, 18, -1);
setStartTimeMs( SE004,  433 );
SE006 = playSeVer2( spep_0 + 70, 1240, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 70, 1227, "",spep_0 + 424, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 70, SE007, 82 );
SE008 = playSeVer2( spep_0 + 70, 1181, "",spep_0 + 420, 0, 20, -1);
SE009 = playSeVer2( spep_0 + 372, 1240, "",spep_0 + 462, 0, 24, -1);
--セリフカットイン	
SE005 = playSeVer2( spep_0 + 74, 1018, "", 0, 0, 0, -1);
--回転
SE010 = playSeVer2( spep_0 + 384, 1117, "",spep_0 + 486, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 384, SE010, 77 );
SE011 = playSeVer2( spep_0 + 384, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE011, 77 );
SE012 = playSeVer2( spep_0 + 384, 1423, "",spep_0 + 480, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 384, SE012, 58 );
SE013 = playSeVer2( spep_0 + 396, 1431, "",spep_0 + 476, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 396, SE013, 133 );
--斬る
SE014 = playSeVer2( spep_0 + 430, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE014, 84 );
SE015 = playSeVer2( spep_0 + 430, 1022, "",spep_0 + 536, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 430, SE015, 71 );
SE016 = playSeVer2( spep_0 + 430, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE016, 77 );
setPitch( spep_0 + 430, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );
SE017 = playSeVer2( spep_0 + 430, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE017, 80 );
--闇の門開く
SE018 = playSeVer2( spep_0 + 508, 1397, "",spep_0 + 704, 20, 42, -1);
setStartTimeMs( SE018,  526 );
SE020 = playSeVer2( spep_0 + 498, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE020, 68 );
SE021 = playSeVer2( spep_0 + 498, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE021, 79 );
SE022 = playSeVer2( spep_0 + 510, 1175, "",spep_0 + 710, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 510, SE022, 58 );
SE023 = playSeVer2( spep_0 + 514, 1407, "",spep_0 + 698, 0, 38, -1);
SE024 = playSeVer2( spep_0 + 514, 1173, "",spep_0 + 692, 0, 40, -1);
--煙あがる
SE026 = playSeVer2( spep_0 + 566, 1219, "",spep_0 + 754, 0, 62, -1);
SE027 = playSeVer2( spep_0 + 566, 1227, "",spep_0 + 752, 0, 60, -1);
--ゴクウブラック軍団出現
SE019 = playSeVer2( spep_0 + 670, 1255, "",spep_0 + 756, 16, 36, -1);
setStartTimeMs( SE019,  3167 );
SE025 = playSeVer2( spep_0 + 638, 1418, "", 0, 26, 0, -1);
setSeVolumeByWorkId( spep_0 + 638, SE025, 76 );
setStartTimeMs( SE025,  1767 );
SE028 = playSeVer2( spep_0 + 662, 1374, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 662, SE028, 50 );
setStartTimeMs( SE028,  800 );
SE029 = playSeVer2( spep_0 + 646, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE029, 25 );
--降りてくる
SE030 = playSeVer2( spep_0 + 748, 63, "",spep_0 + 838, 0, 28, -1);
SE031 = playSeVer2( spep_0 + 786, 8, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 786, 1278, "",spep_0 + 908, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 786, SE032, 48 );
--ラスト決め
SE033 = playSeVer2( spep_0 + 872, 1062, "", 0, 0, 0, -1);
setPitch( spep_0 + 872, SE033, -400 );
setTimeStretch( SE033, 0.73, 30, 4 );
SE034 = playSeVer2( spep_0 + 872, 20, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「神の怒りの強さがいかほどのものなのか…」
playVoice( spep_0 + 66, 757 );
setVoiceVolume( spep_0 + 66, 757, 100 );

--「その身に刻み込め！！」
playVoice( spep_0 + 307, 758 );
setVoiceVolume( spep_0 + 307, 758, 110 );

--「斬！！！！」
playVoice( spep_0 + 417, 759 );
setVoiceVolume( spep_0 + 417, 759, 130 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);--948

else end