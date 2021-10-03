package com.ruoyi.pharmacy.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pharmacy.mapper.NoticeRecordMapper;
import com.ruoyi.pharmacy.domain.NoticeRecord;
import com.ruoyi.pharmacy.service.INoticeRecordService;

/**
 * 公告记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
@Service
public class NoticeRecordServiceImpl implements INoticeRecordService 
{
    @Autowired
    private NoticeRecordMapper noticeRecordMapper;

    /**
     * 查询公告记录
     * 
     * @param id 公告记录ID
     * @return 公告记录
     */
    @Override
    public NoticeRecord selectNoticeRecordById(Long id)
    {
        return noticeRecordMapper.selectNoticeRecordById(id);
    }

    /**
     * 查询公告记录列表
     * 
     * @param noticeRecord 公告记录
     * @return 公告记录
     */
    @Override
    public List<NoticeRecord> selectNoticeRecordList(NoticeRecord noticeRecord)
    {
        return noticeRecordMapper.selectNoticeRecordList(noticeRecord);
    }

    /**
     * 新增公告记录
     * 
     * @param noticeRecord 公告记录
     * @return 结果
     */
    @Override
    public int insertNoticeRecord(NoticeRecord noticeRecord)
    {
        return noticeRecordMapper.insertNoticeRecord(noticeRecord);
    }

    /**
     * 修改公告记录
     * 
     * @param noticeRecord 公告记录
     * @return 结果
     */
    @Override
    public int updateNoticeRecord(NoticeRecord noticeRecord)
    {
        return noticeRecordMapper.updateNoticeRecord(noticeRecord);
    }

    /**
     * 批量删除公告记录
     * 
     * @param ids 需要删除的公告记录ID
     * @return 结果
     */
    @Override
    public int deleteNoticeRecordByIds(Long[] ids)
    {
        return noticeRecordMapper.deleteNoticeRecordByIds(ids);
    }

    /**
     * 删除公告记录信息
     * 
     * @param id 公告记录ID
     * @return 结果
     */
    @Override
    public int deleteNoticeRecordById(Long id)
    {
        return noticeRecordMapper.deleteNoticeRecordById(id);
    }
}
