package part02_mybatis;


/*
 * Template 클래스
 * 1. 개발자가 중복된 코드를 입력해야 하는 작업을 줄일 수 있도록 돕고 있다.
 * 2. JDBC뿐만 아니라 myBatis, JMS와 같은 다양한 기술에 대해 템플릿을 제공한다.
 * 3. 예로 Jdbc인 경우 JdbcTemplate클래스를 제공하고 있으며, JdbcTemplate클래스를
 *    사용함으로써 try~cath~finally 및커넥션 관리를 위한 중복된 코드를 줄이거나
 *    없앨 수 있다.
 *    
 *                             Java JDBC              Spring JDBC
 *    select  				   executeQuery( )         query( )
 *    insert, update, delete   executeUpdate( )        update( )
 */


import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;


public class MemDaoImp implements MemDAO{
	
	private SqlSessionTemplate sqlSession;
	
	public MemDaoImp() {}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<MemDTO> list() {
		return sqlSession.selectList("mem.all");
	}

	@Override
	public void insertMethod(MemDTO dto) {
		sqlSession.insert("mem.ins", dto);
	}

	@Override
	public MemDTO updateMethod(int num) {
		return sqlSession.selectOne("mem.one", num);
	}
	
	@Override
	public void updateMethod(MemDTO dto) {
		sqlSession.update("mem.upt", dto);
	}


	@Override
	public void deleteMethod(int num) {
		sqlSession.delete("mem.del", num);
	}

	@Override
	public MemDTO one(int num) {
		return null;
	}

	@Override
	public int countMethod() {
		return 0;
	}

	
	
}// end class
