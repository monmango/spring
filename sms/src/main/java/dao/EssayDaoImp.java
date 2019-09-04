package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.EssayDTO;
import dto.PageDTO;

public class EssayDaoImp implements EssayDAO{

	private SqlSessionTemplate sqlSession;
	
	public EssayDaoImp() {}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void essayInsetMethod(EssayDTO dto) {
		System.out.println("여기3");
		sqlSession.insert("essay.e_ins", dto);
	}

	@Override
	public List<EssayDTO> essayListMethod(PageDTO pv) {
		return sqlSession.selectList("essay.e_list", pv);
	}

	@Override
	public  EssayDTO essayViewMethod(int essay_num) {
		return sqlSession.selectOne("essay.e_view", essay_num);
	}

	@Override
	public int count() {
		return sqlSession.selectOne("essay.count");
	}

	@Override
	public EssayDTO essayUpViewMethod(int essay_num) {
		return sqlSession.selectOne("essay.e_view", essay_num);
	}
	
	@Override
	public void essayUpdateMethod(EssayDTO dto) {
		sqlSession.selectOne("essay.e_updat", dto);
		
	}

	@Override
	public void essayDeleteMethod(int essay_num) {
		sqlSession.selectOne("essay.e_del", essay_num);
		
	}

}
