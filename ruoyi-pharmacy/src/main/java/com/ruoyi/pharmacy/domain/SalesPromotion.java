package com.ruoyi.pharmacy.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 促销方案对象 sales_promotion
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
public class SalesPromotion extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 促销方案编码 */
    @Excel(name = "促销方案编码")
    private Long spCode;

    /** 促销方案标题 */
    @Excel(name = "促销方案标题")
    private String spTitle;

    /** 折扣 */
    @Excel(name = "折扣")
    private Long discount;

    /** 生效时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "生效时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date effectiveTime;

    /** 失效时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "失效时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date invalidTime;

    /** 状态 */
    @Excel(name = "状态")
    private String state;

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
    public void setSpTitle(String spTitle) 
    {
        this.spTitle = spTitle;
    }

    public String getSpTitle() 
    {
        return spTitle;
    }
    public void setDiscount(Long discount) 
    {
        this.discount = discount;
    }

    public Long getDiscount() 
    {
        return discount;
    }
    public void setEffectiveTime(Date effectiveTime) 
    {
        this.effectiveTime = effectiveTime;
    }

    public Date getEffectiveTime() 
    {
        return effectiveTime;
    }
    public void setInvalidTime(Date invalidTime) 
    {
        this.invalidTime = invalidTime;
    }

    public Date getInvalidTime() 
    {
        return invalidTime;
    }
    public void setState(String state) 
    {
        this.state = state;
    }

    public String getState() 
    {
        return state;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("spCode", getSpCode())
            .append("spTitle", getSpTitle())
            .append("discount", getDiscount())
            .append("effectiveTime", getEffectiveTime())
            .append("invalidTime", getInvalidTime())
            .append("state", getState())
            .toString();
    }
}
