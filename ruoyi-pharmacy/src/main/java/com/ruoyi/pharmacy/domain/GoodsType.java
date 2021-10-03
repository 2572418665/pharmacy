package com.ruoyi.pharmacy.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 商品类别对象 goods_type
 * 
 * @author ruoyi
 * @date 2021-10-02
 */
public class GoodsType extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 类别编号 */
    private Long id;

    /** 商品类别 */
    @Excel(name = "商品类别")
    private String type;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("type", getType())
            .toString();
    }
}
