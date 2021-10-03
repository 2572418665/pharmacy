package com.ruoyi.pharmacy.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pharmacy.mapper.SalesPromotionGoodsMapper;
import com.ruoyi.pharmacy.domain.SalesPromotionGoods;
import com.ruoyi.pharmacy.service.ISalesPromotionGoodsService;

/**
 * 促销商品Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-09-30
 */
@Service
public class SalesPromotionGoodsServiceImpl implements ISalesPromotionGoodsService 
{
    @Autowired
    private SalesPromotionGoodsMapper salesPromotionGoodsMapper;

    /**
     * 查询促销商品
     * 
     * @param id 促销商品ID
     * @return 促销商品
     */
    @Override
    public SalesPromotionGoods selectSalesPromotionGoodsById(Long id)
    {
        return salesPromotionGoodsMapper.selectSalesPromotionGoodsById(id);
    }

    /**
     * 查询促销商品列表
     * 
     * @param salesPromotionGoods 促销商品
     * @return 促销商品
     */
    @Override
    public List<SalesPromotionGoods> selectSalesPromotionGoodsList(SalesPromotionGoods salesPromotionGoods)
    {
        return salesPromotionGoodsMapper.selectSalesPromotionGoodsList(salesPromotionGoods);
    }

    /**
     * 新增促销商品
     * 
     * @param salesPromotionGoods 促销商品
     * @return 结果
     */
    @Override
    public int insertSalesPromotionGoods(SalesPromotionGoods salesPromotionGoods)
    {
        return salesPromotionGoodsMapper.insertSalesPromotionGoods(salesPromotionGoods);
    }

    /**
     * 修改促销商品
     * 
     * @param salesPromotionGoods 促销商品
     * @return 结果
     */
    @Override
    public int updateSalesPromotionGoods(SalesPromotionGoods salesPromotionGoods)
    {
        return salesPromotionGoodsMapper.updateSalesPromotionGoods(salesPromotionGoods);
    }

    /**
     * 批量删除促销商品
     * 
     * @param ids 需要删除的促销商品ID
     * @return 结果
     */
    @Override
    public int deleteSalesPromotionGoodsByIds(Long[] ids)
    {
        return salesPromotionGoodsMapper.deleteSalesPromotionGoodsByIds(ids);
    }

    /**
     * 删除促销商品信息
     * 
     * @param id 促销商品ID
     * @return 结果
     */
    @Override
    public int deleteSalesPromotionGoodsById(Long id)
    {
        return salesPromotionGoodsMapper.deleteSalesPromotionGoodsById(id);
    }
}
