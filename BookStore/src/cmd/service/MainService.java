package cmd.service;

import java.util.List;
import java.util.Map;

import cmd.vo.NoticeVO;
import cmd.vo.ProductVO;
import cmd.vo.QaVO;

public interface MainService {
	
	// 공지 리스트
	public List<Object> noticeList(Map<String, Object> pMap) throws Exception;
	// 공지 상세
	public NoticeVO noticeInfoGET(Map<String, Object> pMap) throws Exception;
	// 문의 리스트
	public List<Object> qaList(Map<String, Object> pMap) throws Exception;
	// 문의 상세
	public QaVO qaInfoGET(Map<String, Object> pMap) throws Exception;
	// 문의 등록
	public void qaInfoPost(Map<String, Object> pMap) throws Exception;
	// 문의 수정
	public void qaInfoPUT(Map<String, Object> pMap) throws Exception;
	// 문의 삭제
	public void qaDelete(Map<String, Object> pMap) throws Exception;
	// 상품 리스트
	public List<Object> productList(Map<String, Object> pMap) throws Exception;
	// 상품 상세 정보
	public ProductVO productInfo(Map<String, Object> pMap) throws Exception;
	// 회원 장바구니 리스트
	public List<Object> myZzimList(Map<String, Object> pMap) throws Exception;
	// 회원 장바구니 등록
	public void zzimSave(Map<String, Object> pMap) throws Exception;
	// 회원 장바구니 삭제
	public void zzimDelete(Map<String, Object> pMap) throws Exception;
	// 회원 구매 등록
	public void parchase(Map<String, Object> pMap) throws Exception;
	// 회원 구매 리스트
	public List<Object> parchaseList(Map<String, Object> pMap) throws Exception;
	// 회원 구매 정보 삭제
	public void purchaseDelete(Map<String, Object> pMap) throws Exception;

}