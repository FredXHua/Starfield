NormalParticle[] bob;
JumboParticle fred;
OddballParticle gay;//your code here
void setup()
{
	size(640,480);
	bob = new NormalParticle[100];
	for(int i=0; i<bob.length; i++){
		bob[i] = new NormalParticle();
	}
	fred = new JumboParticle();	//your code here
}
void draw()
{
	background(20);
	for(int i=0; i<bob.length; i++){
    bob[i].move();
	bob[i].show();
}
	fred.show();
	fred.show();
	gay.move();
	gay.polygon(60,60,80,6);



}
class NormalParticle implements Particle
{
	double normalX, normalY, normalSpeed, normalAngle;
	int normalColor;
	int opacity = 180;
	NormalParticle(){
		normalAngle = (Math.random()*2)*(Math.PI);
		normalSpeed = Math.random()*3.5;
		normalX = 320;
		normalY = 240;
	}
	public void move(){
		normalX = normalX + Math.cos(normalAngle)* (normalSpeed);
		normalY = normalY + Math.sin(normalAngle)* (normalSpeed);
	}
	public void show(){
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),opacity--);
		ellipse((float)normalX,(float)normalY,20.0,20.0);
		noStroke();
	}

}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	OddballParticle()
	public void move(){
		pushMatrix();
    	translate(width*0.5, height*0.5);
  		rotate(frameCount / 200.0);
 		polygon(60, 60, 80, 6);  // hexagon
  		popMatrix();
	}
  	void polygon(float x, float y, float radius, int npoints) {
  		float angle = TWO_PI / npoints;
  		beginShape();
  		for (float a = 0; a < TWO_PI; a += angle) {
    		float sx = x + cos(a) * radius;
    		float sy = y + sin(a) * radius;
    		vertex(sx, sy);
  	}		
  		endShape(CLOSE);
}

}
class JumboParticle extends NormalParticle//uses inheritance
{
	int opacity = 100;
	double jumboSpeed, jumboAngle, jumboX, jumboY;
	JumboParticle(){
		jumboAngle = (Math.random()*2)*(Math.PI);
		jumboSpeed = Math.random()*1;
	}
	public void show(){
		fill(23, 98, 161, opacity--);
	    ellipse((float)normalX,(float)normalY,380.0,380.0);
		noStroke();
	}
	public void move(){
		jumboX = jumboX + Math.cos(jumboAngle)* (jumboSpeed);
		jumboY = jumboY + Math.sin(jumboAngle)* (jumboSpeed);
	}
}

