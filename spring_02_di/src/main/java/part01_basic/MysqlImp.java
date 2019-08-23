package part01_basic;

public class MysqlImp implements Service{
	
	public MysqlImp() {	
		System.out.println("Mysql constructor");
	}
	
	@Override
	public void prn() {
		System.out.println("mysql prn");
		
	}
}// end class
