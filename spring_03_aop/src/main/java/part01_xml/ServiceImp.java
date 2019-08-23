package part01_xml;

/*핵심로직 클래스*/
public class ServiceImp implements Service{
	
	public ServiceImp() {}

	@Override
	public void prn1() {
		System.out.println("prn");
	}

	@Override
	public void prn1(int x) {
		System.out.println("x: " + x);
	}

	@Override
	public void prn1(int a, int b) {
		System.out.printf("prn : a = %d b = %d\n", a, b );
	}

	@Override
	public void prn2() {
		System.out.println("prn2");
	}

	@Override
	public String prn3() {
		System.out.println("prn3");
		return "홍길동";
	}
	
	@Override
	public void prn4() {
		System.out.println("prn4");
		String data = "abcd";
		int num = Integer.parseInt(data); /*잇셉션이 발생하면 공통로직에서 처리한다?*/
	}

	@Override
	public void prn5() {
		System.out.println("prn5");
		
	}
	
	
}// end class
