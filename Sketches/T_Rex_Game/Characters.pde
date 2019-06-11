
void Image_init(){
  
  //Image Data Extraction
  // 0 Reload
  imgs.add(img.get(1, 1, 38, 34));
  // 1 T-Rex stand
  imgs.add(img.get(40, 3, 45, 49));
  // 2 cloud
  imgs.add(img.get(85, 2, 48, 15));
  // 3 Bird down
  imgs.add(img.get(133, 7, 48, 42));
  // 4 Bird up
  imgs.add(img.get(179, 1, 48, 42));
  // 5 1-Cactus
  imgs.add(img.get(228, 1, 17, 37));
  // 6 2-Cactus
  imgs.add(img.get(245, 1, 34, 37));
  // 7 3-Cactus
  imgs.add(img.get(279, 1, 51, 37));
  // 8 1-Big Cactus
  imgs.add(img.get(332, 1, 25, 52));
  // 9 2-Big Cactus
  imgs.add(img.get(357, 1, 50, 52));
  // 10 4-Big Cactus
  imgs.add(img.get(407, 1, 75, 52));
  // 11 - 17 Moon's
  imgs.add(img.get(484, 1, 20, 42));
  imgs.add(img.get(504, 1, 20, 42));
  imgs.add(img.get(524, 1, 20, 42));
  imgs.add(img.get(544, 1, 40, 42));
  imgs.add(img.get(584, 1, 20, 42));
  imgs.add(img.get(604, 1, 20, 42));
  imgs.add(img.get(624, 1, 20, 42));
  // 18 sparkle
  imgs.add(img.get(644, 2, 10, 28));
  
  // 19 0-Number
  imgs.add(img.get(655, 2, 10, 12));
  // 20 1-Number
  imgs.add(img.get(665, 2, 10, 12));
  // 21 2-Number
  imgs.add(img.get(675, 2, 10, 12));
  // 22 3-Number
  imgs.add(img.get(685, 2, 10, 12));
  // 23 4-Number
  imgs.add(img.get(695, 2, 10, 12));
  // 24 5-Number
  imgs.add(img.get(705, 2, 10, 12));
  // 25 6-Number
  imgs.add(img.get(715, 2, 10, 12));
  // 26 7-Number
  imgs.add(img.get(725, 2, 10, 12));
  // 27 8-Number
  imgs.add(img.get(735, 2, 10, 12));
  // 28 9-Number
  imgs.add(img.get(745, 2, 10, 12));
  // 29 HI-Character
  imgs.add(img.get(755, 2, 20, 12));
  // 30 Game-Over
  imgs.add(img.get(655, 15, 192, 12));
  // 31 Trex1
  imgs.add(img.get(848, 1, 44, 49));
  // 32 Trex2
  imgs.add(img.get(892, 1, 44, 49));
  // 33 Trex3
  imgs.add(img.get(936, 1, 44, 49));
  // 34 Trex4
  imgs.add(img.get(980, 1, 44, 49));
  // 35 Trex5
  imgs.add(img.get(1024, 1, 44, 49));
  // 36 Trex6
  imgs.add(img.get(1068, 1, 44, 49));
  // 37 Duck-1
  imgs.add(img.get(1112, 20, 59, 28));
  // 38 Duck-2
  imgs.add(img.get(1171, 20, 59, 28));
  // 39 Ground
  imgs.add(img.get(0, 54, 1202, 68));
  
  
  // Animation Array for Trex
  animation.add(imgs.get(33));
  animation.add(imgs.get(34));
  
  //Animation Array for Moon
  moon.add(imgs.get(11));
  moon.add(imgs.get(12));
  moon.add(imgs.get(13));
  moon.add(imgs.get(14));
  moon.add(imgs.get(15));
  moon.add(imgs.get(16));
  moon.add(imgs.get(17));
  
  //Numbers
  numbers.add(imgs.get(19));
  numbers.add(imgs.get(20));
  numbers.add(imgs.get(21));
  numbers.add(imgs.get(22));
  numbers.add(imgs.get(23));
  numbers.add(imgs.get(24));
  numbers.add(imgs.get(25));
  numbers.add(imgs.get(26));
  numbers.add(imgs.get(27));
  numbers.add(imgs.get(28));
  
  //banimation
  banimation.add(imgs.get(3));
  banimation.add(imgs.get(4));
  
  //danimation
  danimation.add(imgs.get(37));
  danimation.add(imgs.get(38));

}
