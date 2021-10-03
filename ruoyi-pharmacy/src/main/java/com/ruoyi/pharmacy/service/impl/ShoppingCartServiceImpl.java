package com.ruoyi.pharmacy.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pharmacy.mapper.ShoppingCartMapper;
import com.ruoyi.pharmacy.domain.ShoppingCart;
import com.ruoyi.pharmacy.service.IShoppingCartService;

/**
 * 购物车Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-09-30
 */
@Service
public class ShoppingCartServiceImpl implements IShoppingCartService 
{
    @Autowired
    private ShoppingCartMapper shoppingCartMapper;

    /**
     * 查询购物车
     * 
     * @param id 购物车ID
     * @return 购物车
     */
    @Override
    public ShoppingCart selectShoppingCartById(Long id)
    {
        return shoppingCartMapper.selectShoppingCartById(id);
    }

    /**
     * 查询购物车列表
     * 
     * @param shoppingCart 购物车
     * @return 购物车
     */
    @Override
    public List<ShoppingCart> selectShoppingCartList(ShoppingCart shoppingCart)
    {
        return shoppingCartMapper.selectShoppingCartList(shoppingCart);
    }

    /**
     * 新增购物车
     * 
     * @param shoppingCart 购物车
     * @return 结果
     */
    @Override
    public int insertShoppingCart(ShoppingCart shoppingCart)
    {
        return shoppingCartMapper.insertShoppingCart(shoppingCart);
    }

    /**
     * 修改购物车
     * 
     * @param shoppingCart 购物车
     * @return 结果
     */
    @Override
    public int updateShoppingCart(ShoppingCart shoppingCart)
    {
        return shoppingCartMapper.updateShoppingCart(shoppingCart);
    }

    /**
     * 批量删除购物车
     * 
     * @param ids 需要删除的购物车ID
     * @return 结果
     */
    @Override
    public int deleteShoppingCartByIds(Long[] ids)
    {
        return shoppingCartMapper.deleteShoppingCartByIds(ids);
    }

    /**
     * 删除购物车信息
     * 
     * @param id 购物车ID
     * @return 结果
     */
    @Override
    public int deleteShoppingCartById(Long id)
    {
        return shoppingCartMapper.deleteShoppingCartById(id);
    }
}
