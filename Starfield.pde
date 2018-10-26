NormalParticle[] bob;//your code here
void setup()
{
	size(640,480);
	bob = new NormalParticle[100];
	for(int i=0; i<bob.length; i++){
		bob[i] = new NormalParticle();
	}

	//your code here
}
void draw()
{
	background(20);
	for(int i=0; i<bob.length; i++){
    bob[i].move();
	bob[i].show();
}
}
class NormalParticle
{
	double normalX, normalY, normalSpeed, normalAngle;
	int normalColor;
	int opacity = 180;
	NormalParticle(){
		normalAngle = (Math.random()*2)*(Math.PI);
		normalSpeed = Math.random()*5;
		normalX = 320;
		normalY = 240;
	}
	void move(){
		normalX = normalX + Math.cos(normalAngle)* (normalSpeed);
		normalY = normalY + Math.sin(normalAngle)* (normalSpeed);
	}
	void show(){
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),opacity--);
		ellipse((float)normalX,(float)normalY,20.0,20.0);
		noStroke();
	}

}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

