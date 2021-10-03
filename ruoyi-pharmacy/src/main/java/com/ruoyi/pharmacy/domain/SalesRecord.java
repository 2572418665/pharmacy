package com.ruoyi.pharmacy.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 销售记录对象 sales_record
 * 
 * @author ruoyi
 * @date 2021-09-30
 */
public class SalesRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 订单ID */
    @Excel(name = "订单ID")
    private Long orderId;

    /** 商品ID */
    @Excel(name = "商品ID")
    private String goodsId;

    /** 数量 */
    @Excel(name = "数量")
    private Long num;

    /** 进价 */
    @Excel(name = "进价")
    private Long cost;

    /** 原价 */
    @Excel(name = "原价")
    private Long originalPrice;

    /** 折扣 */
    @Excel(name = "折扣")
    private Long discount;

    /** 售价 */
    @Excel(name = "售价")
    private Long price;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setOrderId(Long orderId) 
    {
        this.orderId = orderId;
    }

    public Long getOrderId() 
    {
        return orderId;
    }
    public void setGoodsId(String goodsId) 
    {
        this.goodsId = goodsId;
    }

    public String getGoodsId() 
    {
        return goodsId;
    }
    public void setNum(Long num) 
    {
        this.num = num;
    }

    public Long getNum() 
    {
        return num;
    }
    public void setCost(Long cost) 
    {
        this.cost = cost;
    }

    public Long getCost() 
    {
        return cost;
    }
    public void setOriginalPrice(Long originalPrice) 
    {
        this.originalPrice = originalPrice;
    }

    public Long getOriginalPrice() 
    {
        return originalPrice;
    }
    public void setDiscount(Long discount) 
    {
        this.discount = discount;
    }

    public Long getDiscount() 
    {
        return discount;
    }
    public void setPrice(Long price) 
    {
        this.price = price;
    }

    public Long getPrice() 
    {
        return price;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("orderId", getOrderId())
            .append("goodsId", getGoodsId())
            .append("num", getNum())
            .append("cost", getCost())
            .append("originalPrice", getOriginalPrice())
            .append("discount", getDiscount())
            .append("price", getPrice())
            .toString();
    }
}
