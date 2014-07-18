PVector[] pos;

void setup() {
  size(500,500);
  background(0);
  pos = new PVector[11];
  
  for( int i =0; i < 11; i++) {
    float r = i % 2 == 0 ? 50 : 100 ;
    float a = i * TWO_PI / 10;
    pos[i] = new PVector( cos( a ) * r, sin( a ) * r );
  }
 
}

void draw() {
  noStroke();
  fill(0, 10 );
  rect(0,0,width, height );
  translate( width/2, height/2 );
  int idx = int( frameCount / 20 ) % 10;
  int idx2 = int( (frameCount + 100) / 20 ) % 10;
  int ofs = frameCount % 20;
  
  float x = pos[idx].x + float(ofs) * ( pos[idx+1].x - pos[idx].x) / 20;
  float y = pos[idx].y + float(ofs) * ( pos[idx+1].y - pos[idx].y) / 20;
  fill(255,255,0);
  ellipse( x, y, 10, 10 );
  
  float x2 = pos[idx2].x + float(ofs) * ( pos[idx2+1].x - pos[idx2].x) / 20;
  float y2 = pos[idx2].y + float(ofs) * ( pos[idx2+1].y - pos[idx2].y) / 20;
  fill(255,255,0);
  ellipse( x2, y2, 10, 10 );
}
