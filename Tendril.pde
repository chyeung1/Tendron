public class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myX = x;
    myY = y;
    myAngle = theta;
  }
  public void show()
  {
    //your code here
    stroke(myNumSegments, myNumSegments * 2, 155);
    float startX = myX;
    float startY = myY;
    for(int i = 0; i < myNumSegments; i++){
     myAngle += Math.random() * 0.4 - 0.2;
     float endX = (float)(startX + Math.cos(myAngle) * SEG_LENGTH);
     float endY = (float)(startY + Math.sin(myAngle) * SEG_LENGTH);
     line(startX, startY, endX, endY); 
     startX = endX;
     startY = endY;
    }
       if(myNumSegments >= 3){
      Cluster c = new Cluster(myNumSegments - 30, (int)startX, (int)startY);
    }
  }
}
