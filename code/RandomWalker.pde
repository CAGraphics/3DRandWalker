class RandomWalker
{

  private ArrayList<PVector> path;

  private PVector position;
  private float radius;

  private float deltaHue;
  private float hue;

  /* Constructor definition */
  public RandomWalker(PVector position, float radius)
  {
    this.path = new ArrayList<PVector>();

    this.position = position;
    this.radius = radius;

    this.deltaHue = PI / 666;
    this.hue = 0;
  }

  /* Function definition */
  public void animate()
  {
    var utility = new Utility();
    var delta = utility.getRandomDelta();

    this.position.add(delta);
    this.path.add(this.position.copy());

    this.hue += this.deltaHue;
  }

  public void render()
  {
    if (this.path != null)
    {
      for (var step : this.path)
      {
        pushMatrix();
        translate(step.x, step.y, step.z);

        var noiseValue = noise(this.hue);
        var noiseHue = map(noiseValue, 0, 1, 0, 360);

        stroke(noiseHue, 255, 180);
        strokeWeight(2 * this.radius);
        point(0, 0, 0);
        popMatrix();
      }
    }
  }
}
