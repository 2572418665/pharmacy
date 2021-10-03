package com.ruoyi.pharmacy.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pharmacy.mapper.SalesPromotionRecordMapper;
import com.ruoyi.pharmacy.domain.SalesPromotionRecord;
import com.ruoyi.pharmacy.service.ISalesPromotionRecordService;

/**
 * 促销方案修改记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-09-30
 */
@Service
public class SalesPromotionRecordServiceImpl implements ISalesPromotionRecordService 
{
    @Autowired
    private SalesPromotionRecordMapper salesPromotionRecordMapper;

    /**
     * 查询促销方案修改记录
     * 
     * @param id 促销方案修改记录ID
     * @return 促销方案修改记录
     */
    @Override
    public SalesPromotionRecord selectSalesPromotionRecordById(Long id)
    {
        return salesPromotionRecordMapper.selectSalesPromotionRecordById(id);
    }

    /**
     * 查询促销方案修改记录列表
     * 
     * @param salesPromotionRecord 促销方案修改记录
     * @return 促销方案修改记录
     */
    @Override
    public List<SalesPromotionRecord> selectSalesPromotionRecordList(SalesPromotionRecord salesPromotionRecord)
    {
        return salesPromotionRecordMapper.selectSalesPromotionRecordList(salesPromotionRecord);
    }

    /**
     * 新增促销方案修改记录
     * 
     * @param salesPromotionRecord 促销方案修改记录
     * @return 结果
     */
    @Override
    public int insertSalesPromotionRecord(SalesPromotionRecord salesPromotionRecord)
    {
        return salesPromotionRecordMapper.insertSalesPromotionRecord(salesPromotionRecord);
    }

    /**
     * 修改促销方案修改记录
     * 
     * @param salesPromotionRecord 促销方案修改记录
     * @return 结果
     */
    @Override
    public int updateSalesPromotionRecord(SalesPromotionRecord salesPromotionRecord)
    {
        salesPromotionRecord.setUpdateTime(DateUtils.getNowDate());
        return salesPromotionRecordMapper.updateSalesPromotionRecord(salesPromotionRecord);
    }

    /**
     * 批量删除促销方案修改记录
     * 
     * @param ids 需要删除的促销方案修改记录ID
     * @return 结果
     */
    @Override
    public int deleteSalesPromotionRecordByIds(Long[] ids)
    {
        return salesPromotionRecordMapper.deleteSalesPromotionRecordByIds(ids);
    }

    /**
     * 删除促销方案修改记录信息
     * 
     * @param id 促销方案修改记录ID
     * @return 结果
     */
    @Override
    public int deleteSalesPromotionRecordById(Long id)
    {
        return salesPromotionRecordMapper.deleteSalesPromotionRecordById(id);
    }
}
