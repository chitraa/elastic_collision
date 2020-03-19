
class Ball {
  float x_pos, y_pos;
  float diameter;
  float x_velocity;
  float y_velocity;
  Ball(float x, float y, float dia, float x_vel, float y_vel){
    x_pos = x;
    y_pos = y;
    diameter = dia;
    x_velocity = x_vel;
    y_velocity = y_vel;
  }
  void display(){
      ellipse(x_pos, y_pos, diameter, diameter);
  }
  void move(){
    x_pos += x_velocity;
    y_pos += y_velocity;
  }
}
Ball ball = new Ball(0, 0, 50, 1, 1);

void setup(){
  size(640, 360);
}
void draw(){
  background(0);
  ball.move();
  ball.display();
}
