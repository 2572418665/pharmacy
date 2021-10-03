package com.ruoyi.pharmacy.service;

import java.util.List;
import com.ruoyi.pharmacy.domain.SalesPromotionGoods;

/**
 * 促销商品Service接口
 * 
 * @author ruoyi
 * @date 2021-09-30
 */
public interface ISalesPromotionGoodsService 
{
    /**
     * 查询促销商品
     * 
     * @param id 促销商品ID
     * @return 促销商品
     */
    public SalesPromotionGoods selectSalesPromotionGoodsById(Long id);

    /**
     * 查询促销商品列表
     * 
     * @param salesPromotionGoods 促销商品
     * @return 促销商品集合
     */
    public List<SalesPromotionGoods> selectSalesPromotionGoodsList(SalesPromotionGoods salesPromotionGoods);

    /**
     * 新增促销商品
     * 
     * @param salesPromotionGoods 促销商品
     * @return 结果
     */
    public int insertSalesPromotionGoods(SalesPromotionGoods salesPromotionGoods);

    /**
     * 修改促销商品
     * 
     * @param salesPromotionGoods 促销商品
     * @return 结果
     */
    public int updateSalesPromotionGoods(SalesPromotionGoods salesPromotionGoods);

    /**
     * 批量删除促销商品
     * 
     * @param ids 需要删除的促销商品ID
     * @return 结果
     */
    public int deleteSalesPromotionGoodsByIds(Long[] ids);

    /**
     * 删除促销商品信息
     * 
     * @param id 促销商品ID
     * @return 结果
     */
    public int deleteSalesPromotionGoodsById(Long id);
}
