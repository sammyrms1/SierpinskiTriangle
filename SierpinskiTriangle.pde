public void setup()
{
size(800, 800);
background(0);
noStroke();
}
public void draw()
{
	sierpinski(0, height, 800);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
 if(len <= 40){
 	triangle(x, y, x+len, y, x+len/2, y-len);	
 }
 else{
 	sierpinski(x, y, len/2);
	sierpinski(x+len/2, y, len/2);
	sierpinski(x+len/4, y-len/2, len/2);
 }
}
