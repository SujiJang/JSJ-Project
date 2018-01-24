package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import dto.Main_CategoryDTO;
import dto.MainproductsDTO;
import dto.MembersDTO;
import dto.PageDTO;
import dto.Sub_CategoryDTO;

public class ShoppingDaoImp implements ShoppingDAO {
	
	private SqlSessionTemplate sqlSession;
	
	public ShoppingDaoImp() {
		
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void register(MembersDTO dto) {
		sqlSession.insert("shopping.register", dto);
		
	}

	@Override
	public int selectid(MembersDTO dto) {
		return sqlSession.selectOne("shopping.selectid", dto);
	}

	@Override
	public int selectpass(MembersDTO dto) {
		return sqlSession.selectOne("shopping.selectpass", dto);
	}

	@Override
	public List<MainproductsDTO> listitems(int num, PageDTO pv, int sort) {
		Map<String, Object> mapmap = new HashMap<String, Object>();
		mapmap.put("num", num);
		mapmap.put("startRow", pv.getStartRow());
		mapmap.put("endRow", pv.getEndRow());
		mapmap.put("sort", sort);
		
		if(sort==2) {
			return sqlSession.selectList("shopping.listitems_2", mapmap);
		} else if(sort==3) {
			return sqlSession.selectList("shopping.listitems_3", mapmap);
		} else if(sort==4) {
			return sqlSession.selectList("shopping.listitems_4", mapmap);
		} else {
			return sqlSession.selectList("shopping.listitems_1", mapmap);
		}
		
	}

	@Override
	public int selectcount(int num) {
		return sqlSession.selectOne("shopping.count", num);
	}

	@Override
	public Main_CategoryDTO selectindex(int num) {
		
		return sqlSession.selectOne("shopping.showindex", num);
	}
	
	

	
}
