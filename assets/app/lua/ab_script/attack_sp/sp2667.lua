-- 4028290: UR_ゴクウブラック(超サイヤ人ロゼ)_必殺技(フィールド展開中)：憤怒の葬送曲
-- sp_effect_b2_00062
-- sp2667

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162571;  -- 分身が迫る～カードカットイン ef_001
SP_001b = 162572;  -- 分身が迫る～カードカットイン ef_001b
SP_002 = 162575;  -- 分身連続攻撃～フィニッシュ ef_002

-- 敵側
SP_001r = 162573;  -- 分身が迫る～カードカットイン ef_001r
SP_001br = 162574;  -- 分身が迫る～カードカットイン ef_001br

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 分身が迫る～カードカットイン ef_001
------------------------------------------------------
MAX_FRAME_0 = 572;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 40;

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 324 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 564 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 324 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 364 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 380 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 402 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 434 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 470 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 504 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 536 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 324 + OFFSET_X, 1, 151.7, 249.2 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 151.7, 249.2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 158.5, 251.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 158.5, 251.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 157.2, 259.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 157.2, 259.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 159.2, 260 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 159.2, 260 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 162.3, 263 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 162.3, 263 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 160.6, 259.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 160.6, 259.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 160.5, 262.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 160.5, 262.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 160.5, 262.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 160.5, 262.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 160.4, 260.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 160.4, 260.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 160.3, 260.8 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 160.3, 260.8 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 161.9, 260.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 161.9, 260.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 158.6, 259 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 158.6, 259 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 156.6, 260.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 156.6, 260.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 162.6, 256.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 162.6, 256.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 156.6, 262.8 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 156.6, 262.8 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 156.5, 256.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 156.5, 256.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 158.5, 258.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 158.5, 258.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 158.5, 260.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 158.5, 260.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 154.5, 260.7 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 154.5, 260.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 160.7, 256.8 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 160.7, 256.8 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -1.1, 30.8 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -1.1, 30.8 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -3.1, 28.8 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -3.1, 28.8 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -1.1, 26.8 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -1.1, 26.8 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 7.3, 34.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 7.3, 34.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -7.1, 40.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -7.1, 40.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -24.3, 42.7 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -24.3, 42.7 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -22.6, 45 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -22.6, 45 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -23.7, 46.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -23.7, 46.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -24.7, 47.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -24.7, 47.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -25.7, 48.4 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -25.7, 48.4 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -26.7, 49.5 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -26.7, 49.5 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -27.6, 50.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -27.6, 50.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -28.4, 51.4 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -28.4, 51.4 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -29.1, 52.1 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -29.1, 52.1 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 47.2, 42.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 47.2, 42.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 86.4, 29.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 86.4, 29.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 110.5, 21.8 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 110.5, 21.8 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 101.5, 24.4 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 101.5, 24.4 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 104.1, 23.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 104.1, 23.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 106.7, 22.9 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 106.7, 22.9 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 109.2, 22.1 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 109.2, 22.1 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 111.8, 21.3 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 111.8, 21.3 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 114.4, 20.5 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 114.4, 20.5 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 117, 19.8 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 117, 19.8 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 119.6, 19 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 119.6, 19 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 122.2, 18.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 122.2, 18.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 124.8, 17.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 124.8, 17.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 127.4, 16.7 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 127.4, 16.7 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 129.9, 15.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 129.9, 15.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 132.6, 15.2 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 132.6, 15.2 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -22.2, 41.3 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -22.2, 41.3 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -43.3, 41 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -43.3, 41 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -77, 37 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -77, 37 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -69.9, 38.5 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -69.9, 38.5 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -70.6, 38.4 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -70.6, 38.4 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -71.2, 38.3 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -71.2, 38.3 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -71.8, 38.2 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -71.8, 38.2 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -72.3, 38.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -72.3, 38.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -73.2, 38 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -73.2, 38 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -73.9, 37.9 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -73.9, 37.9 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -74.7, 37.8 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -74.7, 37.8 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -75.5, 37.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -75.5, 37.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -76.2, 37.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -76.2, 37.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -76.9, 37.4 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -76.9, 37.4 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -77.5, 37.3 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -77.5, 37.3 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -78.2, 37.2 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -78.2, 37.2 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -78.8, 37.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -78.8, 37.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -79.4, 37 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -79.4, 37 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 15, 57.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 15, 57.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 0.3, 57.9 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 0.3, 57.9 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -15.5, 59 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -15.5, 59 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -10.1, 58.5 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -10.1, 58.5 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -6.9, 58.5 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -6.9, 58.5 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -3.6, 58.4 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -3.6, 58.4 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -0.4, 58.4 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -0.4, 58.4 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 2.8, 58.4 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 2.8, 58.4 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 6, 58.3 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 6, 58.3 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 9.3, 58.3 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 9.3, 58.3 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 12.5, 58.3 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 12.5, 58.3 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 15.7, 58.3 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 15.7, 58.3 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 19, 58.2 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 19, 58.2 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 22.2, 58.2 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 22.2, 58.2 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 25.4, 58.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 25.4, 58.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 28.6, 58.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 28.6, 58.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 31.9, 58 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 31.9, 58 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -62.6, -6.7 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -62.6, -6.7 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -63, -4.8 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -63, -4.8 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -83.8, -19.5 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -83.8, -19.5 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -76.4, -13.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -76.4, -13.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -77.4, -14.2 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -77.4, -14.2 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -78.4, -14.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -78.4, -14.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -79.3, -15.7 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -79.3, -15.7 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -80.3, -16.4 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -80.3, -16.4 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -81.3, -17.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -81.3, -17.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -82.3, -17.8 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -82.3, -17.8 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -83.2, -18.5 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -83.2, -18.5 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -84.2, -19.2 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -84.2, -19.2 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -85.2, -20 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -85.2, -20 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -86.1, -20.7 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -86.1, -20.7 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -87.1, -21.4 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -87.1, -21.4 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -88.1, -22.1 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -88.1, -22.1 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 160.9, -229 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 160.9, -229 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 98.5, -183.4 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 98.5, -183.4 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 262.9, -359.1 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 262.9, -359.1 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 336.1, -404.3 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 336.1, -404.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 412, -469.4 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 412, -469.4 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 471.2, -520.3 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 471.2, -520.3 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 517.3, -559.8 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 517.3, -559.8 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 552.9, -590.4 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 552.9, -590.4 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 580.4, -613.9 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 580.4, -613.9 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 601.1, -631.8 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 601.1, -631.8 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 616.5, -644.9 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 616.5, -644.9 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 627.4, -654.3 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 627.4, -654.3 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 634.5, -660.4 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 634.5, -660.4 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 638.4, -663.7 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 638.4, -663.7 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 639.7, -664.8 , 0 );

setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 1.77, 1.77 );

setRotateKey( spep_0 + 324 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -66 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -66 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -68.3 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -68.3 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -69 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -69 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -69.6 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -69.6 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -70.2 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -70.2 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -71.4 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -71.4 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -64.9 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -64.9 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -65 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -65 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -65.1 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -65.1 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -65.3 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -65.3 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -65.6 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -65.6 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -65.7 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -65.7 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -65.8 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, -65.8 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -66 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -66 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -66.1 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, -66.1 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -66.3 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, -66.3 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, -66.4 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -66.4 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 495 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 496 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_0 + 499 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, -80.4 );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, -80.4 );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, -91.3 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, -91.3 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 33.9 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, 33.9 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, 39 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 39 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, 39.1 );

-- ** 音 ** --
--オーラ背景
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 272, 0, 138, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 58 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 272, 0, 140, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );
SE003 = playSeVer2( spep_0 + 0, 1397, "",spep_0 + 282, 0, 154, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 81 );
SE004 = playSeVer2( spep_0 + 0, 1278, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 0, SE004, 51 );

--ズームアウト
SE006 = playSeVer2( spep_0 + 112, 63, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE006, 79 );
SE007 = playSeVer2( spep_0 + 112, 1183, "",spep_0 + 268, 0, 60, -1);
SE008 = playSeVer2( spep_0 + 134, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE008, 59 );
setTimeStretch( SE008, 1.65, 30, 4 );

--飛び込んでくる
SE009 = playSeVer2( spep_0 + 282, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 282, 9, "", 0, 0, 0, -1);
setTimeStretch( SE010, 1.24, 30, 4 );
SE011 = playSeVer2( spep_0 + 282, 1277, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 310;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
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
--画面遷移
SE012 = playSeVer2( spep_0 + 326, 1232, "", 0, 0, 0, -1);

--キック
SE013 = playSeVer2( spep_0 + 356, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 368, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE014, 72 );
SE016 = playSeVer2( spep_0 + 370, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 370, 1153, "", 0, 0, 0, -1);

--環境音
SE015 = playSeVer2( spep_0 + 372, 1227, "",spep_0 + 600, 0, 22, -1);

--パンチ
SE018 = playSeVer2( spep_0 + 392, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE018, 85 );
SE019 = playSeVer2( spep_0 + 396, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 396, 1000, "", 0, 0, 0, -1);

--パンチ2
SE021 = playSeVer2( spep_0 + 426, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 430, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE022, 83 );
SE023 = playSeVer2( spep_0 + 432, 1009, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 432, 1110, "", 0, 0, 0, -1);

--パンチ3
SE025 = playSeVer2( spep_0 + 458, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 462, 1359, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 464, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 464, 1010, "", 0, 0, 0, -1);

--キック2
SE029 = playSeVer2( spep_0 + 490, 1003, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 494, 1359, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 498, 1110, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 498, 1010, "", 0, 0, 0, -1);

--殴り飛ばす
SE033 = playSeVer2( spep_0 + 528, 1189, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 534, 1187, "",spep_0 + 590, 0, 10, -1);
SE035 = playSeVer2( spep_0 + 534, 1120, "",spep_0 + 592, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 534, SE035, 81 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 572

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 分身連続攻撃～フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 224;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--振りかぶる
SE037 = playSeVer2( spep_2 + 0, 1271, "",spep_2 + 70, 10, 20, -1);
setStartTimeMs( SE037,  433 );
setPitch( spep_1 + 92, SE037, -300 );
setTimeStretch( SE037, 0.8, 30, 4 );
SE038 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 46, 0, 14, -1);
SE039 = playSeVer2( spep_2 + 0, 1176, "",spep_2 + 68, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 0, SE039, 48 );

--鎌振る
SE040 = playSeVer2( spep_2 + 50, 1142, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 50, 1424, "",spep_2 + 152, 0, 26, -1);
SE042 = playSeVer2( spep_2 + 50, 1026, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 50, 1027, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 58, 1022, "",spep_2 + 146, 0, 26, -1);

--爆発前予兆
SE045 = playSeVer2( spep_2 + 88, 1179, "",spep_2 + 148, 0, 22, -1);

--爆発
SE046 = playSeVer2( spep_2 + 122, 1067, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 122, 1159, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 120 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 224

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 分身が迫る～カードカットイン ef_001
------------------------------------------------------
MAX_FRAME_0 = 572;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 40;

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 324 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 564 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 324 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 364 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 380 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 402 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 434 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 470 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 504 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 536 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 324 + OFFSET_X, 1, 151.7, 249.2 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 151.7, 249.2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 158.5, 251.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 158.5, 251.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 157.2, 259.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 157.2, 259.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 159.2, 260 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 159.2, 260 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 162.3, 263 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 162.3, 263 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 160.6, 259.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 160.6, 259.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 160.5, 262.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 160.5, 262.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 160.5, 262.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 160.5, 262.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 160.4, 260.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 160.4, 260.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 160.3, 260.8 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 160.3, 260.8 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 161.9, 260.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 161.9, 260.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 158.6, 259 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 158.6, 259 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 156.6, 260.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 156.6, 260.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 162.6, 256.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 162.6, 256.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 156.6, 262.8 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 156.6, 262.8 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 156.5, 256.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 156.5, 256.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 158.5, 258.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 158.5, 258.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 158.5, 260.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 158.5, 260.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 154.5, 260.7 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 154.5, 260.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 160.7, 256.8 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 160.7, 256.8 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -1.1, 30.8 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -1.1, 30.8 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -3.1, 28.8 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -3.1, 28.8 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -1.1, 26.8 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -1.1, 26.8 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 7.3, 34.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 7.3, 34.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -7.1, 40.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -7.1, 40.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -24.3, 42.7 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -24.3, 42.7 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -22.6, 45 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -22.6, 45 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -23.7, 46.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -23.7, 46.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -24.7, 47.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -24.7, 47.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -25.7, 48.4 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -25.7, 48.4 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -26.7, 49.5 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -26.7, 49.5 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -27.6, 50.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -27.6, 50.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -28.4, 51.4 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -28.4, 51.4 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -29.1, 52.1 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -29.1, 52.1 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 47.2, 42.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 47.2, 42.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 86.4, 29.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 86.4, 29.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 110.5, 21.8 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 110.5, 21.8 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 101.5, 24.4 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 101.5, 24.4 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 104.1, 23.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 104.1, 23.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 106.7, 22.9 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 106.7, 22.9 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 109.2, 22.1 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 109.2, 22.1 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 111.8, 21.3 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 111.8, 21.3 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 114.4, 20.5 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 114.4, 20.5 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 117, 19.8 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 117, 19.8 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 119.6, 19 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 119.6, 19 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 122.2, 18.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 122.2, 18.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 124.8, 17.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 124.8, 17.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 127.4, 16.7 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 127.4, 16.7 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 129.9, 15.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 129.9, 15.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 132.6, 15.2 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 132.6, 15.2 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -22.2, 41.3 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -22.2, 41.3 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -43.3, 41 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -43.3, 41 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -77, 37 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -77, 37 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -69.9, 38.5 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -69.9, 38.5 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -70.6, 38.4 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -70.6, 38.4 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -71.2, 38.3 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -71.2, 38.3 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -71.8, 38.2 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -71.8, 38.2 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -72.3, 38.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -72.3, 38.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -73.2, 38 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -73.2, 38 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -73.9, 37.9 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -73.9, 37.9 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -74.7, 37.8 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -74.7, 37.8 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -75.5, 37.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -75.5, 37.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -76.2, 37.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -76.2, 37.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -76.9, 37.4 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -76.9, 37.4 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -77.5, 37.3 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -77.5, 37.3 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -78.2, 37.2 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -78.2, 37.2 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -78.8, 37.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -78.8, 37.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -79.4, 37 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -79.4, 37 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 15, 57.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 15, 57.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 0.3, 57.9 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 0.3, 57.9 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -15.5, 59 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -15.5, 59 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -10.1, 58.5 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -10.1, 58.5 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -6.9, 58.5 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -6.9, 58.5 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -3.6, 58.4 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -3.6, 58.4 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -0.4, 58.4 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -0.4, 58.4 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 2.8, 58.4 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 2.8, 58.4 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 6, 58.3 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 6, 58.3 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 9.3, 58.3 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 9.3, 58.3 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 12.5, 58.3 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 12.5, 58.3 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 15.7, 58.3 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 15.7, 58.3 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 19, 58.2 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 19, 58.2 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 22.2, 58.2 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 22.2, 58.2 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 25.4, 58.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 25.4, 58.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 28.6, 58.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 28.6, 58.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 31.9, 58 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 31.9, 58 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -62.6, -6.7 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -62.6, -6.7 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -63, -4.8 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -63, -4.8 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -83.8, -19.5 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -83.8, -19.5 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -76.4, -13.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -76.4, -13.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -77.4, -14.2 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -77.4, -14.2 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -78.4, -14.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -78.4, -14.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -79.3, -15.7 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -79.3, -15.7 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -80.3, -16.4 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -80.3, -16.4 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -81.3, -17.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -81.3, -17.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -82.3, -17.8 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -82.3, -17.8 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -83.2, -18.5 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -83.2, -18.5 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -84.2, -19.2 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -84.2, -19.2 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -85.2, -20 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -85.2, -20 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -86.1, -20.7 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -86.1, -20.7 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -87.1, -21.4 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -87.1, -21.4 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -88.1, -22.1 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -88.1, -22.1 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 160.9, -229 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 160.9, -229 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 98.5, -183.4 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 98.5, -183.4 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 262.9, -359.1 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 262.9, -359.1 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 336.1, -404.3 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 336.1, -404.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 412, -469.4 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 412, -469.4 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 471.2, -520.3 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 471.2, -520.3 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 517.3, -559.8 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 517.3, -559.8 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 552.9, -590.4 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 552.9, -590.4 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 580.4, -613.9 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 580.4, -613.9 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 601.1, -631.8 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 601.1, -631.8 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 616.5, -644.9 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 616.5, -644.9 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 627.4, -654.3 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 627.4, -654.3 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 634.5, -660.4 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 634.5, -660.4 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 638.4, -663.7 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 638.4, -663.7 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 639.7, -664.8 , 0 );

setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 1.77, 1.77 );

setRotateKey( spep_0 + 324 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -66 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -66 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -68.3 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -68.3 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -69 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -69 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -69.6 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -69.6 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -70.2 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -70.2 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -71.4 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -71.4 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -64.9 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -64.9 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -65 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -65 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -65.1 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -65.1 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -65.3 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -65.3 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -65.6 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -65.6 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -65.7 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -65.7 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -65.8 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, -65.8 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -66 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -66 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -66.1 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, -66.1 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -66.3 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, -66.3 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, -66.4 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -66.4 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 495 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 496 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_0 + 499 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, -80.4 );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, -80.4 );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, -91.3 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, -91.3 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 33.9 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, 33.9 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, 39 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 39 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, 39.1 );

-- ** 音 ** --
--オーラ背景
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 272, 0, 138, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 58 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 272, 0, 140, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );
SE003 = playSeVer2( spep_0 + 0, 1397, "",spep_0 + 282, 0, 154, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 81 );
SE004 = playSeVer2( spep_0 + 0, 1278, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 0, SE004, 51 );

--ズームアウト
SE006 = playSeVer2( spep_0 + 112, 63, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE006, 79 );
SE007 = playSeVer2( spep_0 + 112, 1183, "",spep_0 + 268, 0, 60, -1);
SE008 = playSeVer2( spep_0 + 134, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE008, 59 );
setTimeStretch( SE008, 1.65, 30, 4 );

--飛び込んでくる
SE009 = playSeVer2( spep_0 + 282, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 282, 9, "", 0, 0, 0, -1);
setTimeStretch( SE010, 1.24, 30, 4 );
SE011 = playSeVer2( spep_0 + 282, 1277, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 310;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
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
--画面遷移
SE012 = playSeVer2( spep_0 + 326, 1232, "", 0, 0, 0, -1);

--キック
SE013 = playSeVer2( spep_0 + 356, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 368, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE014, 72 );
SE016 = playSeVer2( spep_0 + 370, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 370, 1153, "", 0, 0, 0, -1);

--環境音
SE015 = playSeVer2( spep_0 + 372, 1227, "",spep_0 + 600, 0, 22, -1);

--パンチ
SE018 = playSeVer2( spep_0 + 392, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE018, 85 );
SE019 = playSeVer2( spep_0 + 396, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 396, 1000, "", 0, 0, 0, -1);

--パンチ2
SE021 = playSeVer2( spep_0 + 426, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 430, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE022, 83 );
SE023 = playSeVer2( spep_0 + 432, 1009, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 432, 1110, "", 0, 0, 0, -1);

--パンチ3
SE025 = playSeVer2( spep_0 + 458, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 462, 1359, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 464, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 464, 1010, "", 0, 0, 0, -1);

--キック2
SE029 = playSeVer2( spep_0 + 490, 1003, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 494, 1359, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 498, 1110, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 498, 1010, "", 0, 0, 0, -1);

--殴り飛ばす
SE033 = playSeVer2( spep_0 + 528, 1189, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 534, 1187, "",spep_0 + 590, 0, 10, -1);
SE035 = playSeVer2( spep_0 + 534, 1120, "",spep_0 + 592, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 534, SE035, 81 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 572

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 分身連続攻撃～フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 224;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--振りかぶる
SE037 = playSeVer2( spep_2 + 0, 1271, "",spep_2 + 70, 10, 20, -1);
setStartTimeMs( SE037,  433 );
setPitch( spep_1 + 92, SE037, -300 );
setTimeStretch( SE037, 0.8, 30, 4 );
SE038 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 46, 0, 14, -1);
SE039 = playSeVer2( spep_2 + 0, 1176, "",spep_2 + 68, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 0, SE039, 48 );

--鎌振る
SE040 = playSeVer2( spep_2 + 50, 1142, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 50, 1424, "",spep_2 + 152, 0, 26, -1);
SE042 = playSeVer2( spep_2 + 50, 1026, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 50, 1027, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 58, 1022, "",spep_2 + 146, 0, 26, -1);

--爆発前予兆
SE045 = playSeVer2( spep_2 + 88, 1179, "",spep_2 + 148, 0, 22, -1);

--爆発
SE046 = playSeVer2( spep_2 + 122, 1067, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 122, 1159, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 120 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 224

end
