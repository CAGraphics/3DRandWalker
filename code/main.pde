import peasy.*;

PeasyCam camera;
RandomWalker walker;

void setup()
{
  surface.setTitle("3D RandWalker");

  camera = new PeasyCam(this, 480);
  createRandomWalker();
  
  fullScreen(P3D);
  colorMode(HSB, 360, 255, 255);
}

void createRandomWalker()
{
  var position = new PVector();
  var radius = 4;

  walker = new RandomWalker(position, radius);
}

void draw()
{
  background(0);
  
  walker.animate();
  walker.render();
}
