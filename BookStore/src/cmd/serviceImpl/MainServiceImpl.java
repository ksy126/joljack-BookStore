package cmd.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cmd.service.MainService;
import helper.dao.CommonDAO;

@Service("mainService")
public class MainServiceImpl implements MainService
{	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

	@Override
	public List<Object> qaList(Map<String, Object> pMap) throws Exception {
		List<Object> result;
		result = this.commonDao.getListData("main.selectQaList", pMap);
		return result;
	}

	@Override
	public List<Object> noticeList(Map<String, Object> pMap) throws Exception {
		List<Object> result;
		result = this.commonDao.getListData("main.selectNoticeList", pMap);
		return result;
	}

}//end class

