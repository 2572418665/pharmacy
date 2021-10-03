package com.ruoyi.pharmacy.service;

import java.util.List;
import com.ruoyi.pharmacy.domain.ShoppingCart;

/**
 * 购物车Service接口
 * 
 * @author ruoyi
 * @date 2021-09-30
 */
public interface IShoppingCartService 
{
    /**
     * 查询购物车
     * 
     * @param id 购物车ID
     * @return 购物车
     */
    public ShoppingCart selectShoppingCartById(Long id);

    /**
     * 查询购物车列表
     * 
     * @param shoppingCart 购物车
     * @return 购物车集合
     */
    public List<ShoppingCart> selectShoppingCartList(ShoppingCart shoppingCart);

    /**
     * 新增购物车
     * 
     * @param shoppingCart 购物车
     * @return 结果
     */
    public int insertShoppingCart(ShoppingCart shoppingCart);

    /**
     * 修改购物车
     * 
     * @param shoppingCart 购物车
     * @return 结果
     */
    public int updateShoppingCart(ShoppingCart shoppingCart);

    /**
     * 批量删除购物车
     * 
     * @param ids 需要删除的购物车ID
     * @return 结果
     */
    public int deleteShoppingCartByIds(Long[] ids);

    /**
     * 删除购物车信息
     * 
     * @param id 购物车ID
     * @return 结果
     */
    public int deleteShoppingCartById(Long id);
}
