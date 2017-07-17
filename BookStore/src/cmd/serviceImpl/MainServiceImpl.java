package cmd.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cmd.service.MainService;
import cmd.vo.NoticeVO;
import cmd.vo.ProductVO;
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

	@Override
	public List<Object> productList(Map<String, Object> pMap) throws Exception {
		List<Object> resultList;
		resultList = this.commonDao.getListData("main.selectProductList", pMap);
		return resultList;
	}

	@Override
	public ProductVO productInfo(Map<String, Object> pMap) throws Exception {
		ProductVO resultInfo;
		resultInfo = (ProductVO) this.commonDao.getReadData("main.selectProductInfo", pMap);
		return resultInfo;
	}

	@Override
	public List<Object> myZzimList(Map<String, Object> pMap) throws Exception {
		List<Object> result;
		result = this.commonDao.getListData("main.selectZzimList", pMap);
		return result;
	}

	@Override
	public void zzimSave(Map<String, Object> pMap) throws Exception {
		this.commonDao.insertData("main.zzimSave", pMap);
	}

	@Override
	public void zzimDelete(Map<String, Object> pMap) throws Exception {
		this.commonDao.deleteData("main.zzimDelete", pMap);
	}

	@Override
	public void parchase(Map<String, Object> pMap) throws Exception {
		// 상품 테이블 구매 수량 업데이트
		this.commonDao.updateData("main.productUpdate", pMap);
		// 구매 목록 테이블 업데이트
		this.commonDao.insertData("main.purchaseInsert", pMap);
	}

	@Override
	public List<Object> parchaseList(Map<String, Object> pMap) throws Exception {
		List<Object> result;
		result = this.commonDao.getListData("main.purchaseSelect", pMap);
		return result;
	}

	@Override
	public void purchaseDelete(Map<String, Object> pMap) throws Exception {
		// 기존 상품 구매 수량 복원
		ProductVO productVo;
		productVo = (ProductVO) this.commonDao.getReadData("main.selectProductInfo", pMap);
		int p_buy_amount = Integer.parseInt(productVo.getP_buy_amount());
		p_buy_amount = p_buy_amount - Integer.parseInt(pMap.get("quantity").toString());
		pMap.put("p_buy_amount", p_buy_amount);
		// 상품 테이블 구매 수량 업데이트
		this.commonDao.updateData("main.productUpdate", pMap);
		// 구매 목록에서 삭제
		this.commonDao.deleteData("main.purchaseDelete", pMap);
	}

}//end class

