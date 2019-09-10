package com.mycompany.sms.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycompany.sms.dto.EssayDTO;
import com.mycompany.sms.dto.PageDTO;
@Repository
public class EssayDaoImp implements EssayDAO{

	private SqlSessionTemplate sqlSession;
	
	public EssayDaoImp() {}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public int count() {
		return sqlSession.selectOne("essay.count");
	}

	@Override
	public List<EssayDTO> essayListMethod(PageDTO pv) {
		return sqlSession.selectList("essay.e_list", pv);
	}
	
	@Override
	public void essayInsetMethod(EssayDTO dto) {
		System.out.println("여기3");
		sqlSession.insert("essay.e_ins", dto);
	}
	
	@Override
	public  EssayDTO essayViewMethod(int essay_num) {
		return sqlSession.selectOne("essay.e_view", essay_num);
	}

	public String essayUpViImgMethod(int essay_num) {
		return sqlSession.selectOne("essay.e_img", essay_num);
	}
	
	@Override
	public EssayDTO essayUpViewMethod(int essay_num) {
		return sqlSession.selectOne("essay.e_view", essay_num);
	}
	
	@Override
	public EssayDTO essayUpdateMethod(EssayDTO dto) {
		return sqlSession.selectOne("essay.e_updat", dto);
	}

	@Override
	public void essayDeleteMethod(int essay_num) {
		sqlSession.selectOne("essay.e_del", essay_num);
		
	}

}
