package com.ruoyi.pharmacy.mapper;

import java.util.List;
import com.ruoyi.pharmacy.domain.GoodsType;

/**
 * 商品类别Mapper接口
 * 
 * @author ruoyi
 * @date 2021-10-02
 */
public interface GoodsTypeMapper 
{
    /**
     * 查询商品类别
     * 
     * @param id 商品类别ID
     * @return 商品类别
     */
    public GoodsType selectGoodsTypeById(Long id);

    /**
     * 查询商品类别列表
     * 
     * @param goodsType 商品类别
     * @return 商品类别集合
     */
    public List<GoodsType> selectGoodsTypeList(GoodsType goodsType);

    /**
     * 新增商品类别
     * 
     * @param goodsType 商品类别
     * @return 结果
     */
    public int insertGoodsType(GoodsType goodsType);

    /**
     * 修改商品类别
     * 
     * @param goodsType 商品类别
     * @return 结果
     */
    public int updateGoodsType(GoodsType goodsType);

    /**
     * 删除商品类别
     * 
     * @param id 商品类别ID
     * @return 结果
     */
    public int deleteGoodsTypeById(Long id);

    /**
     * 批量删除商品类别
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteGoodsTypeByIds(Long[] ids);
}
