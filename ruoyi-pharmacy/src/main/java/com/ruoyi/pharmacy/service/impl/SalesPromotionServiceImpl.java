package com.ruoyi.pharmacy.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pharmacy.mapper.SalesPromotionMapper;
import com.ruoyi.pharmacy.domain.SalesPromotion;
import com.ruoyi.pharmacy.service.ISalesPromotionService;

/**
 * 促销方案Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
@Service
public class SalesPromotionServiceImpl implements ISalesPromotionService 
{
    @Autowired
    private SalesPromotionMapper salesPromotionMapper;

    /**
     * 查询促销方案
     * 
     * @param id 促销方案ID
     * @return 促销方案
     */
    @Override
    public SalesPromotion selectSalesPromotionById(Long id)
    {
        return salesPromotionMapper.selectSalesPromotionById(id);
    }

    /**
     * 查询促销方案列表
     * 
     * @param salesPromotion 促销方案
     * @return 促销方案
     */
    @Override
    public List<SalesPromotion> selectSalesPromotionList(SalesPromotion salesPromotion)
    {
        return salesPromotionMapper.selectSalesPromotionList(salesPromotion);
    }

    /**
     * 新增促销方案
     * 
     * @param salesPromotion 促销方案
     * @return 结果
     */
    @Override
    public int insertSalesPromotion(SalesPromotion salesPromotion)
    {
        return salesPromotionMapper.insertSalesPromotion(salesPromotion);
    }

    /**
     * 修改促销方案
     * 
     * @param salesPromotion 促销方案
     * @return 结果
     */
    @Override
    public int updateSalesPromotion(SalesPromotion salesPromotion)
    {
        return salesPromotionMapper.updateSalesPromotion(salesPromotion);
    }

    /**
     * 批量删除促销方案
     * 
     * @param ids 需要删除的促销方案ID
     * @return 结果
     */
    @Override
    public int deleteSalesPromotionByIds(Long[] ids)
    {
        return salesPromotionMapper.deleteSalesPromotionByIds(ids);
    }

    /**
     * 删除促销方案信息
     * 
     * @param id 促销方案ID
     * @return 结果
     */
    @Override
    public int deleteSalesPromotionById(Long id)
    {
        return salesPromotionMapper.deleteSalesPromotionById(id);
    }
}
