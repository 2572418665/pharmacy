package com.ruoyi.pharmacy.service;

import java.util.List;
import com.ruoyi.pharmacy.domain.SalesRecord;

/**
 * 销售记录Service接口
 * 
 * @author ruoyi
 * @date 2021-09-30
 */
public interface ISalesRecordService 
{
    /**
     * 查询销售记录
     * 
     * @param id 销售记录ID
     * @return 销售记录
     */
    public SalesRecord selectSalesRecordById(Long id);

    /**
     * 查询销售记录列表
     * 
     * @param salesRecord 销售记录
     * @return 销售记录集合
     */
    public List<SalesRecord> selectSalesRecordList(SalesRecord salesRecord);

    /**
     * 新增销售记录
     * 
     * @param salesRecord 销售记录
     * @return 结果
     */
    public int insertSalesRecord(SalesRecord salesRecord);

    /**
     * 修改销售记录
     * 
     * @param salesRecord 销售记录
     * @return 结果
     */
    public int updateSalesRecord(SalesRecord salesRecord);

    /**
     * 批量删除销售记录
     * 
     * @param ids 需要删除的销售记录ID
     * @return 结果
     */
    public int deleteSalesRecordByIds(Long[] ids);

    /**
     * 删除销售记录信息
     * 
     * @param id 销售记录ID
     * @return 结果
     */
    public int deleteSalesRecordById(Long id);
}
