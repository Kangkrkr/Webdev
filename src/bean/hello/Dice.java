package bean.hello;

public class Dice {

	public static int getNumber(){
		return (int)(Math.random() * 6) + 1;
	}
	
	public static void main(String[] args) {
		System.out.println(Dice.getNumber());
	}
	
}
