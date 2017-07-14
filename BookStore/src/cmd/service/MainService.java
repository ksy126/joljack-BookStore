package cmd.service;

import java.util.List;
import java.util.Map;

import cmd.vo.NoticeVO;
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

}