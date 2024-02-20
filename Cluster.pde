public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        // your code here
        Tendril[] yo = new Tendril[NUM_STEMS];
        for(int i = 0; i < NUM_STEMS; i++){
          yo[i] = new Tendril(len, Math.random() * 2 * PI * i/7, x, y); 
          yo[i].show();
        }
    }
}
