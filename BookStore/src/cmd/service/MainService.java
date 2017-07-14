package cmd.service;

import java.util.List;
import java.util.Map;

public interface MainService {
	
	// 문의 리스트
	public List<Object> qaList(Map<String, Object> pMap) throws Exception;
	// 공지 리스트
	public List<Object> noticeList(Map<String, Object> pMap) throws Exception;

}