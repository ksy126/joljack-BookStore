package cmd.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cmd.service.MainService;
import cmd.vo.NoticeVO;
import cmd.vo.QaVO;
import helper.dao.CommonDAO;

@Service("mainService")
public class MainServiceImpl implements MainService
{	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

	@Override
	public List<Object> noticeList(Map<String, Object> pMap) throws Exception {
		List<Object> result;
		result = this.commonDao.getListData("main.selectNoticeList", pMap);
		return result;
	}

	@Override
	public NoticeVO noticeInfoGET(Map<String, Object> pMap) throws Exception {
		NoticeVO noticeVo;
		noticeVo = (NoticeVO) this.commonDao.getReadData("main.selectNoticeNo", pMap);
		return noticeVo;
	}

	@Override
	public List<Object> qaList(Map<String, Object> pMap) throws Exception {
		List<Object> result;
		result = this.commonDao.getListData("main.selectQaList", pMap);
		return result;
	}

	@Override
	public QaVO qaInfoGET(Map<String, Object> pMap) throws Exception {
		QaVO qaVo;
		qaVo = (QaVO) this.commonDao.getReadData("main.selectQaNo", pMap);
		return qaVo;
	}

	@Override
	public void qaInfoPost(Map<String, Object> pMap) throws Exception {
		this.commonDao.insertData("main.insertQaInfo", pMap);
	}

	@Override
	public void qaInfoPUT(Map<String, Object> pMap) throws Exception {
		this.commonDao.updateData("main.updateQaInfo", pMap);
	}

	@Override
	public void qaDelete(Map<String, Object> pMap) throws Exception {
		this.commonDao.deleteData("main.qaDelete", pMap);
	}

}//end class

