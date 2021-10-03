package com.ruoyi.pharmacy.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 消息记录对象 news_record
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
public class NewsRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 消息ID */
    @Excel(name = "消息ID")
    private Long newsId;

    /** 推送者ID */
    @Excel(name = "推送者ID")
    private String pushId;

    /** 推送时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "推送时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date pushTime;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setNewsId(Long newsId) 
    {
        this.newsId = newsId;
    }

    public Long getNewsId() 
    {
        return newsId;
    }
    public void setPushId(String pushId) 
    {
        this.pushId = pushId;
    }

    public String getPushId() 
    {
        return pushId;
    }
    public void setPushTime(Date pushTime) 
    {
        this.pushTime = pushTime;
    }

    public Date getPushTime() 
    {
        return pushTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("newsId", getNewsId())
            .append("pushId", getPushId())
            .append("pushTime", getPushTime())
            .toString();
    }
}
