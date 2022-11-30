package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseStatus;

import vo.ProductVO;

@Repository("product_dao")
public class ProductDAO {
   
   SqlSession sqlSession;

   public ProductDAO(SqlSession sqlSession) {
      System.out.println("-----product 생성자 생성");
      this.sqlSession = sqlSession;
   }
   
   // 여행상품 조회
   public List<ProductVO> selectList() {
      List<ProductVO> list = sqlSession.selectList("p.product_list");
      
      return list;
   }
   
   public ProductVO selectOne(int pidx) {
	   ProductVO vo = sqlSession.selectOne("p.product_list2", pidx);
	   return vo;
   }
   
   
   public List<ProductVO> selectList3(String date) {
	      List<ProductVO> list3 = sqlSession.selectList("p.product_list3",date);
	      
	      return list3;
	   }
   
   
   // 여행상품 추가
   public int insert(ProductVO vo) {
      int res = sqlSession.insert("p.product_insert", vo);
      
      return res;
   }
   
	   
   }
