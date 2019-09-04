package part02_search_xml;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
/*
<employee-list>
<employee>
<first_name>홍</first_name>
<email>*</email>
<hire_date>*</hire_date>
<salary>*</salary>
</employee>
<employee>
값이 있으면 계속 추가
</employee>
</employee-list>
*/

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name="employee-list")
public class EmpList {

	@XmlElement(name="employee")
	private List<EmpDTO> employess;
	
	public EmpList(List<EmpDTO> employess) {
		this.employess = employess;
	}

	public EmpList() {}

	public List<EmpDTO> getEmployess() {
		return employess;
	}

	public void setEmployess(List<EmpDTO> employess) {
		this.employess = employess;
	}
	
	
}
