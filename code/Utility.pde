class Utility
{

  /* Constructor definition */
  public Utility()
  {
  }

  /* Function definition */
  public PVector getRandomDelta()
  {
    var dx = random(-1, 1);
    var dy = random(-1, 1);
    var dz = random(-1, 1);
    
    var delta = new PVector(dx, dy, dz);

    var step = pow(PI, 1.2);
    delta.mult(step);

    return delta;
  }

}
