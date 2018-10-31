NormalParticle[] bob;
JumboParticle[] fred;
OddballParticle gay;
OppoOdd ungay;//your code here
void setup()
{
	size(640,480);
	bob = new NormalParticle[150];
	for(int i=0; i<bob.length; i++){
		bob[i] = new NormalParticle();
	}
	fred = new JumboParticle[3];
	for(int i = 0; i < fred.length; i++){
		fred[i] = new JumboParticle();
	}
	gay = new OddballParticle();
	ungay = new OppoOdd();	//your code here
	rectMode(CENTER);
}
void draw()
{
	background(20);
	for(int i=0; i<bob.length; i++){
    bob[i].move();
	bob[i].show();
}
	for(int i=0; i<fred.length; i++){
	fred[i].move();
	fred[i].show();
}
	gay.move();
	gay.show();
	ungay.move();
	ungay.show();
}
class NormalParticle implements Particle
{
	double normalX, normalY, normalSpeed, normalAngle;
	int normalColor;
	int opacity = 200;
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
class OddballParticle implements Particle
{
	float oddX, oddY;
	int opacity = 160;
	OddballParticle(){
		oddX = oddY = 0;
	}
	public void move(){
		translate(width/2, height/2);
		rotate(radians(frameCount));
	}
	public void show(){
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),opacity--);
		rect(oddX, oddY, 60, 60);
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	int opacity = 100;
	double jumboSpeed, jumboAngle, jumboX, jumboY;
	JumboParticle(){
		jumboAngle = (Math.random()*2)*(Math.PI);
		jumboSpeed = Math.random()*3;
		jumboX = 320;
		jumboY = 240;
	}
	public void move(){
		jumboX = jumboX + Math.cos(jumboAngle)* (jumboSpeed);
		jumboY = jumboY + Math.sin(jumboAngle)* (jumboSpeed);
	}	
	public void show(){
		fill(23, 98, 161, opacity--);
	    ellipse((float)jumboX,(float)jumboY,380.0,380.0);
		noStroke();
	}
}
class OppoOdd implements Particle
{
	float oppoX, oppoY;
	int opacity = 180;
	OppoOdd(){
		oppoX = oppoY = 0;
	}
	public void move(){
		translate(width/2, height/2);
		rotate(radians(-frameCount));
	}
	public void show(){
	fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),opacity--);
	rect(oppoX, oppoY, 100, 100);
	}
}
