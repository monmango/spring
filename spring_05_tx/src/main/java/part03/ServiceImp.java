package part03;

import org.springframework.transaction.annotation.Transactional;

public class ServiceImp implements Service {

	private MemDAO dao;

	public ServiceImp() {}

	public void setDao(MemDAO dao) {
		this.dao = dao;
	}
	
	@Override @Transactional(rollbackFor=java.lang.Exception.class)
	public void insertProcess() {

		dao.insertMethod(new MemDTO(57, "용필이", 50, "기흥"));
		dao.insertMethod(new MemDTO(57, "유소위", 20, "전주"));

	}// end insertProcess()

}// end class
