package com.ruoyi.pharmacy.service;

import java.util.List;
import com.ruoyi.pharmacy.domain.SalesPromotionRecord;

/**
 * 促销方案修改记录Service接口
 * 
 * @author ruoyi
 * @date 2021-09-30
 */
public interface ISalesPromotionRecordService 
{
    /**
     * 查询促销方案修改记录
     * 
     * @param id 促销方案修改记录ID
     * @return 促销方案修改记录
     */
    public SalesPromotionRecord selectSalesPromotionRecordById(Long id);

    /**
     * 查询促销方案修改记录列表
     * 
     * @param salesPromotionRecord 促销方案修改记录
     * @return 促销方案修改记录集合
     */
    public List<SalesPromotionRecord> selectSalesPromotionRecordList(SalesPromotionRecord salesPromotionRecord);

    /**
     * 新增促销方案修改记录
     * 
     * @param salesPromotionRecord 促销方案修改记录
     * @return 结果
     */
    public int insertSalesPromotionRecord(SalesPromotionRecord salesPromotionRecord);

    /**
     * 修改促销方案修改记录
     * 
     * @param salesPromotionRecord 促销方案修改记录
     * @return 结果
     */
    public int updateSalesPromotionRecord(SalesPromotionRecord salesPromotionRecord);

    /**
     * 批量删除促销方案修改记录
     * 
     * @param ids 需要删除的促销方案修改记录ID
     * @return 结果
     */
    public int deleteSalesPromotionRecordByIds(Long[] ids);

    /**
     * 删除促销方案修改记录信息
     * 
     * @param id 促销方案修改记录ID
     * @return 结果
     */
    public int deleteSalesPromotionRecordById(Long id);
}
