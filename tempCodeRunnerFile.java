import java.util.Scanner;
class AreaOfTriangle{
      long area;
      AOT(long b,long h){
        area=(b*h)/2;
       }
}
class AreaOfRectangle{
    long arear;
    AOR(long l, long w){
     arear=(l*w);
    }
}
 
class AreaOfSquare{
     long areas;
     AOS(long d){
      areas=(d*d);
    }
}

class AreaOfCircle{
     double areac;
     AOC(double r){
     areac=3.14*r*r;
   }
}

class Area{
     public static void main(String args[]){
     Scanner s=new Scanner(System.in);
     System.out.println("Enter the width of Triangle:");
     long b=s.nextLong();
     System.out.println("Enter the height of Triangle:");
     long h=s.nextLong();
     AOT A1=new AOT(b,h);
     System.out.println("Area of traingle is:"+A1.area);

     System.out.println("Enter the length of Rectangle:");
     long l=s.nextLong();
     System.out.println("Enter the breadth of Rectangle:");
     long w=s.nextLong();
     AOR A2=new AOR(l,w);
     System.out.println("Area of Rectangle is:"+A2.arear);

     System.out.println("Enter the side of Square:");
     long d=s.nextLong();
     AOS A3=new AOS(d);
     System.out.println("Area of Square is:"+A3.areas);

     System.out.println("Enter the radius of Circle:");
     double r=s.nextDouble();
     AOC A4=new AOC(r);
     System.out.println("Area of Circle is:"+A4.areac);  
}
}
//Using Method Overloading
import java.util.*;
class OverloadDemo
{
    void areat(float x, float y)
    {
        System.out.println("The area of the Triangle is "+(x*y)/2+" sq units");
    }
    void area(float x)
    {
        System.out.println("The area of the Square is "+Math.pow(x, 2)+" sq units");
    }
    void area(float x, float y)
    {
        System.out.println("the area of the rectangle is "+x*y+" sq units");
    }
    void area(double x)
    {
        double z = 3.14 * x * x;
        System.out.println("the area of the circle is "+z+" sq units");
    }
}
class Overload 
{
     public static void main(String args[]) 
	{
	   OverloadDemo ob = new OverloadDemo();
       ob.areat(2,5);
	   ob.area(5);
	   ob.area(11,12);
	   ob.area(2.5);
        }
}

