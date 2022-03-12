ball [] bl = new ball[1500];

float d;

float light;
float sin_light;

boolean toggle = false;

//import processing.sound.*;
//SoundFile file;
//Sound s;

//float volume = 0.3;

// 실시간 마우스 주변 파티클 반응, 마우스 클릭으로 파티클 반응
// 'r' 키로 재생성, 'd' 키로 드로잉, 'b' 키로 배경전환
// 업 키로 볼륨 올리기, 다운 키로 볼륨 내리기


void setup() {
  size(1280, 720, P3D);
  for (int i=0; i<bl.length; i++) {
    bl[i] = new ball();
  }
  //file = new SoundFile(this, "pulse.mp3");
  //file.loop();
  //s = new Sound(this);
  background(0);
}

void draw() {

  if (toggle) {                        // 배경 전환
    fill(30, 30);
    rect(0, 0, width, height);
  }else{
    background(0);
  }

  light = light + 0.1;
  sin_light = 150 * (1.1 + sin(light)); // 0.0과 1.0 사이를 반복하여 반환

  //println(light, sin_light);

  //s.volume(volume);


  for (int i=0; i<bl.length; i++) {
    d = dist(mouseX, mouseY, bl[i].x, bl[i].y);
    //println(d);

    if ( d < 100 ) { 
      bl[i].update();
      bl[i].x += bl[i].speedx;
      bl[i].y += bl[i].speedy;
    }

    if (mousePressed==true && d < 50) {      // 인접한 파티클의 마우스 입력 반응
      for (int g = 0; g < 10; g++) {
        bl[i].x += bl[i].speedx;
        bl[i].y += bl[i].speedy;
      }

      bl[i].light = sin_light; // 파티클 빛
      //bl[i].light += 30;
      //if (bl[i].light >= 200) bl[i].light = 100;
    }

    if (keyPressed) {                       // 키보드 입력 반응 
      if (key == 'd') {
        for (int v=0; v<1; v++) {
          bl[i].drawing();

          for (int g = 0; g < 50; g++) {
            bl[i].x += 2 * bl[i].speedx;
            bl[i].y += 2 * bl[i].speedy;
          }
        }
      }
      if (key == 'r') {
        bl[i].restart();
      }
    }

    bl[i].display(); // 파티클 디스플레이
  }
}

void keyPressed() {                          // 키보드 입력 반응
  //if ( keyCode == UP ) {                     // 오디오 레벨 조절과 시각화
  //  if ( volume >= 1.0 ) volume -= 0.1;
  //  println(map(volume, 0.0, 1.0, 0, 100));
  //  volume += 0.1;
  //} else if ( keyCode == DOWN ) {
  //  if ( volume <= 0.1 ) volume += 0.1;
  //  println(map(volume, 0.0, 1.0, 0, 100));
  //  volume -= 0.1;
  //}

  if (key == 'b') {                         // 배경 전환  
    toggle = !toggle;
  }
}

class ball {
  float x = random(width);
  float y = random(height);

  float size = random(1, 5); 
  float light = 100;

  float speedx = random(-1, 1);
  float speedy = random(-1, 1);


  void update() {
    x = lerp(x, mouseX, 0.01);
    y = lerp(y, mouseY, 0.01);
    //println(x, y);
  }

  //void update2() {
  //  x = lerp(x, width, 0.01);
  //  y = lerp(y, height, 0.01);
  //}

  void display() { 
    noStroke();
    //fill(sin_light);
    fill(255, light);
    ellipse(x, y, size, size);
  }

  void drawing() {
    //translate(width/2, height/2);
    for (int i=0; i<50; i++) {
      x = lerp(x, width/2, 0.01 );
      y = lerp(y, height/2, 0.01);
      //light = lerp(0, 100, 0.01);
    }
  }

  void restart() {
    light = 100;
    x = random(width);
    y = random(height);
    size = random(1, 5);
  }
}
