package com.ruoyi.pharmacy.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 订单对象 order
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
public class Order extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 用户账号 */
    @Excel(name = "用户账号")
    private String userId;

    /** 付款账号 */
    @Excel(name = "付款账号")
    private String paymentAccount;

    /** 付款时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "付款时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date paymentTime;

    /** 应付金额 */
    @Excel(name = "应付金额")
    private Long payable;

    /** 实付金额 */
    @Excel(name = "实付金额")
    private Long amount;

    /** 收货方式 */
    @Excel(name = "收货方式")
    private String receivingMethod;

    /** 收货地址 */
    @Excel(name = "收货地址")
    private String receivingAddress;

    /** 联系电话 */
    @Excel(name = "联系电话")
    private String tel;

    /** 自提码 */
    @Excel(name = "自提码")
    private String code;

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
    public void setUserId(String userId) 
    {
        this.userId = userId;
    }

    public String getUserId() 
    {
        return userId;
    }
    public void setPaymentAccount(String paymentAccount) 
    {
        this.paymentAccount = paymentAccount;
    }

    public String getPaymentAccount() 
    {
        return paymentAccount;
    }
    public void setPaymentTime(Date paymentTime) 
    {
        this.paymentTime = paymentTime;
    }

    public Date getPaymentTime() 
    {
        return paymentTime;
    }
    public void setPayable(Long payable) 
    {
        this.payable = payable;
    }

    public Long getPayable() 
    {
        return payable;
    }
    public void setAmount(Long amount) 
    {
        this.amount = amount;
    }

    public Long getAmount() 
    {
        return amount;
    }
    public void setReceivingMethod(String receivingMethod) 
    {
        this.receivingMethod = receivingMethod;
    }

    public String getReceivingMethod() 
    {
        return receivingMethod;
    }
    public void setReceivingAddress(String receivingAddress) 
    {
        this.receivingAddress = receivingAddress;
    }

    public String getReceivingAddress() 
    {
        return receivingAddress;
    }
    public void setTel(String tel) 
    {
        this.tel = tel;
    }

    public String getTel() 
    {
        return tel;
    }
    public void setCode(String code) 
    {
        this.code = code;
    }

    public String getCode() 
    {
        return code;
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
            .append("userId", getUserId())
            .append("paymentAccount", getPaymentAccount())
            .append("paymentTime", getPaymentTime())
            .append("payable", getPayable())
            .append("amount", getAmount())
            .append("receivingMethod", getReceivingMethod())
            .append("receivingAddress", getReceivingAddress())
            .append("tel", getTel())
            .append("code", getCode())
            .append("state", getState())
            .toString();
    }
}
