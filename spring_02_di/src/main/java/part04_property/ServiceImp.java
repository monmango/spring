package part04_property;

import java.util.Random;

public class ServiceImp implements Service{
	private String name;
	private Random ran;
	
	 public ServiceImp() {
		
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setRan(Random ran) {
		this.ran = ran;
	}


	@Override
	public void prn1() {
		System.out.println("name: " + name);
	}

	@Override
	public void prn2() {
		System.out.println("ran: " + ran.nextInt());
	}
	
	 
}// end class
