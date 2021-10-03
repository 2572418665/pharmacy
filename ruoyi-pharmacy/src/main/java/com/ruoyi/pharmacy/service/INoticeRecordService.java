package com.ruoyi.pharmacy.service;

import java.util.List;
import com.ruoyi.pharmacy.domain.NoticeRecord;

/**
 * 公告记录Service接口
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
public interface INoticeRecordService 
{
    /**
     * 查询公告记录
     * 
     * @param id 公告记录ID
     * @return 公告记录
     */
    public NoticeRecord selectNoticeRecordById(Long id);

    /**
     * 查询公告记录列表
     * 
     * @param noticeRecord 公告记录
     * @return 公告记录集合
     */
    public List<NoticeRecord> selectNoticeRecordList(NoticeRecord noticeRecord);

    /**
     * 新增公告记录
     * 
     * @param noticeRecord 公告记录
     * @return 结果
     */
    public int insertNoticeRecord(NoticeRecord noticeRecord);

    /**
     * 修改公告记录
     * 
     * @param noticeRecord 公告记录
     * @return 结果
     */
    public int updateNoticeRecord(NoticeRecord noticeRecord);

    /**
     * 批量删除公告记录
     * 
     * @param ids 需要删除的公告记录ID
     * @return 结果
     */
    public int deleteNoticeRecordByIds(Long[] ids);

    /**
     * 删除公告记录信息
     * 
     * @param id 公告记录ID
     * @return 结果
     */
    public int deleteNoticeRecordById(Long id);
}
