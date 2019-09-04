package part02_search_xml;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;

public class EmpDaoImp implements EmpDAO{

	private SqlSessionTemplate sqlSession;
	
	public EmpDaoImp() {}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<EmpDTO> search(String data) {
		return sqlSession.selectList("empxml.list",data);
	}

}
