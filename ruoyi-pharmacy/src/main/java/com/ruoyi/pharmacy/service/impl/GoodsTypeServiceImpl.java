package com.ruoyi.pharmacy.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pharmacy.mapper.GoodsTypeMapper;
import com.ruoyi.pharmacy.domain.GoodsType;
import com.ruoyi.pharmacy.service.IGoodsTypeService;

/**
 * 商品类别Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-10-02
 */
@Service
public class GoodsTypeServiceImpl implements IGoodsTypeService 
{
    @Autowired
    private GoodsTypeMapper goodsTypeMapper;

    /**
     * 查询商品类别
     * 
     * @param id 商品类别ID
     * @return 商品类别
     */
    @Override
    public GoodsType selectGoodsTypeById(Long id)
    {
        return goodsTypeMapper.selectGoodsTypeById(id);
    }

    /**
     * 查询商品类别列表
     * 
     * @param goodsType 商品类别
     * @return 商品类别
     */
    @Override
    public List<GoodsType> selectGoodsTypeList(GoodsType goodsType)
    {
        return goodsTypeMapper.selectGoodsTypeList(goodsType);
    }

    /**
     * 新增商品类别
     * 
     * @param goodsType 商品类别
     * @return 结果
     */
    @Override
    public int insertGoodsType(GoodsType goodsType)
    {
        return goodsTypeMapper.insertGoodsType(goodsType);
    }

    /**
     * 修改商品类别
     * 
     * @param goodsType 商品类别
     * @return 结果
     */
    @Override
    public int updateGoodsType(GoodsType goodsType)
    {
        return goodsTypeMapper.updateGoodsType(goodsType);
    }

    /**
     * 批量删除商品类别
     * 
     * @param ids 需要删除的商品类别ID
     * @return 结果
     */
    @Override
    public int deleteGoodsTypeByIds(Long[] ids)
    {
        return goodsTypeMapper.deleteGoodsTypeByIds(ids);
    }

    /**
     * 删除商品类别信息
     * 
     * @param id 商品类别ID
     * @return 结果
     */
    @Override
    public int deleteGoodsTypeById(Long id)
    {
        return goodsTypeMapper.deleteGoodsTypeById(id);
    }
}
