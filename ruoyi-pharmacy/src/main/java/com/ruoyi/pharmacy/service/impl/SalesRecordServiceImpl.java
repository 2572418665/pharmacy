package com.ruoyi.pharmacy.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pharmacy.mapper.SalesRecordMapper;
import com.ruoyi.pharmacy.domain.SalesRecord;
import com.ruoyi.pharmacy.service.ISalesRecordService;

/**
 * 销售记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-09-30
 */
@Service
public class SalesRecordServiceImpl implements ISalesRecordService 
{
    @Autowired
    private SalesRecordMapper salesRecordMapper;

    /**
     * 查询销售记录
     * 
     * @param id 销售记录ID
     * @return 销售记录
     */
    @Override
    public SalesRecord selectSalesRecordById(Long id)
    {
        return salesRecordMapper.selectSalesRecordById(id);
    }

    /**
     * 查询销售记录列表
     * 
     * @param salesRecord 销售记录
     * @return 销售记录
     */
    @Override
    public List<SalesRecord> selectSalesRecordList(SalesRecord salesRecord)
    {
        return salesRecordMapper.selectSalesRecordList(salesRecord);
    }

    /**
     * 新增销售记录
     * 
     * @param salesRecord 销售记录
     * @return 结果
     */
    @Override
    public int insertSalesRecord(SalesRecord salesRecord)
    {
        return salesRecordMapper.insertSalesRecord(salesRecord);
    }

    /**
     * 修改销售记录
     * 
     * @param salesRecord 销售记录
     * @return 结果
     */
    @Override
    public int updateSalesRecord(SalesRecord salesRecord)
    {
        return salesRecordMapper.updateSalesRecord(salesRecord);
    }

    /**
     * 批量删除销售记录
     * 
     * @param ids 需要删除的销售记录ID
     * @return 结果
     */
    @Override
    public int deleteSalesRecordByIds(Long[] ids)
    {
        return salesRecordMapper.deleteSalesRecordByIds(ids);
    }

    /**
     * 删除销售记录信息
     * 
     * @param id 销售记录ID
     * @return 结果
     */
    @Override
    public int deleteSalesRecordById(Long id)
    {
        return salesRecordMapper.deleteSalesRecordById(id);
    }
}
