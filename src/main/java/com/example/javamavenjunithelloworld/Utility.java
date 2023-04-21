
public class AreaofTriangle {

  	static void sneha(int num){
	 if(num%2==0){
  	   System.out.println("Number" +num+ " is even");
          }
	else{
          System.out.println("Number "+num+" is odd");
	}	
}
	
	static void  ajay(){

        System.out.println("THIS IS AJAY");
	}
	
 	// sample code of priniting numbers from 1 to 10	
	static void preksha(){
            int i;
            System.out.println("Numbers from 1 to 10");
            for(i=1;i<=10;i++){
                System.out.println(i);
            }
        }

    public static void main(String[] args) {

        double b = 5.8;
	double h = 8.6;
	double area;
	int num=100;

	area = (b*h)/2;

        //System.out.print("Area of Triangle is: ",area);

	ajay();
	sneha(num);
	preksha();
        
    }
}
