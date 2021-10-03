package com.ruoyi.pharmacy.service;

import java.util.List;
import com.ruoyi.pharmacy.domain.SalesPromotion;

/**
 * 促销方案Service接口
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
public interface ISalesPromotionService 
{
    /**
     * 查询促销方案
     * 
     * @param id 促销方案ID
     * @return 促销方案
     */
    public SalesPromotion selectSalesPromotionById(Long id);

    /**
     * 查询促销方案列表
     * 
     * @param salesPromotion 促销方案
     * @return 促销方案集合
     */
    public List<SalesPromotion> selectSalesPromotionList(SalesPromotion salesPromotion);

    /**
     * 新增促销方案
     * 
     * @param salesPromotion 促销方案
     * @return 结果
     */
    public int insertSalesPromotion(SalesPromotion salesPromotion);

    /**
     * 修改促销方案
     * 
     * @param salesPromotion 促销方案
     * @return 结果
     */
    public int updateSalesPromotion(SalesPromotion salesPromotion);

    /**
     * 批量删除促销方案
     * 
     * @param ids 需要删除的促销方案ID
     * @return 结果
     */
    public int deleteSalesPromotionByIds(Long[] ids);

    /**
     * 删除促销方案信息
     * 
     * @param id 促销方案ID
     * @return 结果
     */
    public int deleteSalesPromotionById(Long id);
}
