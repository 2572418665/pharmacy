package com.ruoyi.pharmacy.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 促销方案修改记录对象 sales_promotion_record
 * 
 * @author ruoyi
 * @date 2021-09-30
 */
public class SalesPromotionRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 促销方案编码 */
    @Excel(name = "促销方案编码")
    private Long spCode;

    /** 促销方案内容 */
    @Excel(name = "促销方案内容")
    private String content;

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
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("spCode", getSpCode())
            .append("content", getContent())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
