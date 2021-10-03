package com.ruoyi.pharmacy.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 促销商品对象 sales_promotion_goods
 * 
 * @author ruoyi
 * @date 2021-09-30
 */
public class SalesPromotionGoods extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 促销方案编码 */
    @Excel(name = "促销方案编码")
    private Long spCode;

    /** 商品ID */
    @Excel(name = "商品ID")
    private String goodsId;

    /** 折扣 */
    @Excel(name = "折扣")
    private Long discount;

    /** 假删除标记 */
    private String delFlag;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setSpCode(Long spCode) 
    {
        this.spCode = spCode;
    }

    public Long getSpCode() 
    {
        return spCode;
    }
    public void setGoodsId(String goodsId) 
    {
        this.goodsId = goodsId;
    }

    public String getGoodsId() 
    {
        return goodsId;
    }
    public void setDiscount(Long discount) 
    {
        this.discount = discount;
    }

    public Long getDiscount() 
    {
        return discount;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("spCode", getSpCode())
            .append("goodsId", getGoodsId())
            .append("discount", getDiscount())
            .append("delFlag", getDelFlag())
            .toString();
    }
}
