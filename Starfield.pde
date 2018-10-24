NormalParticle bob = new NormalParticle();//your code here
void setup()
{
	size(640,480);//your code here
}
void draw()
{
	bob.move();
	bob.show();//y000our code here
}
class NormalParticle
{
	double normalX, normalY, normalSpeed, normalAngle;
	int normalColor;
	NormalParticle(){
		normalAngle = (Math.random()*2)*(Math.PI);
		normalSpeed = Math.random()*10 + 0.1;
		normalX = 320;
		normalY = 240;
	}
	void move(){
		normalX = normalX + Math.cos(normalAngle);
		normalY = normalY + Math.sin(normalAngle);
	}
	void show(){
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		ellipse((float)normalX,(float)normalY,2.0,2.0);
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

