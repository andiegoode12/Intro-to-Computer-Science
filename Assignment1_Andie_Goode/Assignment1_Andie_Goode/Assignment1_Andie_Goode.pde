String getName() {
return "Andie Goode"; }
String getTitle() {
return "The Old Mill"; }
void setup() {
  size(1280,720);
  background(185,232,252);
}
void draw() {
//Landscape
stroke(149,149,149);
fill(149,149,149);
ellipse(80,270,680,300);//left mountain

stroke(149,149,149);
fill(149,149,149);
quad(350,185,900,185,900,500,350,500);//middle mountain

stroke(149,149,149);
fill(149,149,149);
ellipse(1180,325,700,500);//right mountain

stroke(225,208,102);
fill(230,255,93);
rect(0,280,1280,500);//grass

stroke(230,255,93);
fill(230,255,93);
ellipse(60,290,400,200);//left hill

stroke(230,255,93);
fill(230,255,93);
ellipse(1200,320,600,200);//right hill

strokeWeight(3);
stroke(88,129,18);
fill(207,249,252);
triangle(-50,380,1200,720,470,720); //stream

strokeWeight(11);
stroke(58,56,34);
line(422,250,419,140);//trunk3

strokeWeight(11);
stroke(58,56,34);
line(822,230,812,80);//trunk4

  //Mill
strokeWeight(1);
stroke(128,90,1);
fill(128,90,1);
quad(420,230,660,270,660,590,420,530);//front wall

stroke(65,39,8);
fill(65,39,8);
quad(660,270,770,150,860,200,770,320);//triangle wall

stroke(65,39,8);
fill(65,39,8);
quad(660,270,860,200,860,530,660,590);//side wall

strokeWeight(3);
stroke(0);
line(770,150,863,203);

strokeWeight(1);
stroke(101,67,1);
fill(128,90,1);
quad(660,430,770,500,770,620,660,590);//small front wall

stroke(54,38,7);
fill(41,29,6);
quad(660,430,860,360,970,430,770,500);//small roof

stroke(65,39,8);
fill(65,39,8);
quad(770,500,970,430,970,550,770,620);//small side wall

stroke(54,38,7);
fill(41,29,6);
quad(533,100,773,150,657,273,417,230);//roof

stroke(26,18,2);
fill(26,18,2);
ellipse(450,390,250,300); //waterwheel big

stroke(178,133,30);
fill(178,133,30);
ellipse(440,390,207,290); //waterwheel small

stroke(128,90,1);
fill(128,90,1);
ellipse(435,390,150,220); //waterwheel small

stroke(225,208,102);
fill(225,208,102);
arc(420,390,119,215,PI/2,3*PI/2);

strokeWeight(4);
stroke(41,23,1);
line(430,400,420,280);

strokeWeight(4);
stroke(41,23,1);
line(430,400,504,350);

strokeWeight(4);
stroke(41,23,1);
line(430,400,430,497);

strokeWeight(4);
stroke(41,23,1);
line(410,400,360,410);

stroke(60,31,10);
fill(60,31,10);
ellipse(430,403,50,70); //inner waterwheel 

strokeWeight(15);
stroke(92,51,20);
line(420,410,250,440); //wheel stick

strokeWeight(1);
stroke(26,15,2);
fill(26,15,2);
rect(240,420,25,100);//wheel post

stroke(122,78,27);
fill(122,78,27);
rect(180,490,100,75);//wheel support

stroke(144,90,27);
fill(144,90,27);
rect(150,530,130,60);//wheel support

stroke(26,15,2);
fill(26,15,2);
quad(270,530,360,510,360,570,270,590);

stroke(26,15,2);
fill(26,15,2);
quad(360,510,430,530,430,590,360,570);
//Landscape
strokeWeight(15);
stroke(56,57,50);
line (920,564,900,320);//trunk 1
line(922,555,950,400);//trunk1.1
line (70,320,90,3);//trunk 2


strokeWeight(1);

stroke(153,204,51);
fill(138,154,0);
ellipse(970,290,120,150);//leaves1

stroke(153,204,51);
fill(176,186,36);
ellipse(910,350,200,150);//leaves1.1

stroke(153,204,51);
fill(142,186,11);
ellipse(850,320,155,120);//leaves1.2

stroke(153,153,0);
fill(155,176,15);
ellipse(960,390,140,120);//leaves1.3

stroke(153,153,0);
fill(155,176,15);
ellipse(40,110,150,75);//leaves2

stroke(153,153,0);
fill(166,171,22);
ellipse(70,30,180,110);//leaves2.1

stroke(153,204,51);
fill(142,186,11);
ellipse(120,70,165,120);//leaves2.2

stroke(153,153,0);
fill(166,171,22);
ellipse(430,115,70,110);//leaves3

stroke(153,204,51);
fill(142,186,11);
ellipse(410,145,80,130);//leaves3.1

stroke(153,153,0);
fill(155,176,15);
ellipse(814,80,75,120);//leaves4

stroke(207,249,252);
fill(207,249,252);
triangle(540,300,565,600,610,600);

}