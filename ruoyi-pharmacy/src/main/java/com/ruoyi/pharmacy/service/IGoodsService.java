package com.ruoyi.pharmacy.service;

import java.util.List;
import com.ruoyi.pharmacy.domain.Goods;

/**
 * 商品Service接口
 * 
 * @author ruoyi
 * @date 2021-10-02
 */
public interface IGoodsService 
{
    /**
     * 查询商品
     * 
     * @param id 商品ID
     * @return 商品
     */
    public Goods selectGoodsById(Long id);

    /**
     * 查询商品列表
     * 
     * @param goods 商品
     * @return 商品集合
     */
    public List<Goods> selectGoodsList(Goods goods);

    /**
     * 新增商品
     * 
     * @param goods 商品
     * @return 结果
     */
    public int insertGoods(Goods goods);

    /**
     * 修改商品
     * 
     * @param goods 商品
     * @return 结果
     */
    public int updateGoods(Goods goods);

    /**
     * 批量删除商品
     * 
     * @param ids 需要删除的商品ID
     * @return 结果
     */
    public int deleteGoodsByIds(Long[] ids);

    /**
     * 删除商品信息
     * 
     * @param id 商品ID
     * @return 结果
     */
    public int deleteGoodsById(Long id);
}
