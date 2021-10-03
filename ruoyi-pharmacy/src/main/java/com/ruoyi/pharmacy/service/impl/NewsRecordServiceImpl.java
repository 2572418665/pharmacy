package com.ruoyi.pharmacy.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pharmacy.mapper.NewsRecordMapper;
import com.ruoyi.pharmacy.domain.NewsRecord;
import com.ruoyi.pharmacy.service.INewsRecordService;

/**
 * 消息记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
@Service
public class NewsRecordServiceImpl implements INewsRecordService 
{
    @Autowired
    private NewsRecordMapper newsRecordMapper;

    /**
     * 查询消息记录
     * 
     * @param id 消息记录ID
     * @return 消息记录
     */
    @Override
    public NewsRecord selectNewsRecordById(Long id)
    {
        return newsRecordMapper.selectNewsRecordById(id);
    }

    /**
     * 查询消息记录列表
     * 
     * @param newsRecord 消息记录
     * @return 消息记录
     */
    @Override
    public List<NewsRecord> selectNewsRecordList(NewsRecord newsRecord)
    {
        return newsRecordMapper.selectNewsRecordList(newsRecord);
    }

    /**
     * 新增消息记录
     * 
     * @param newsRecord 消息记录
     * @return 结果
     */
    @Override
    public int insertNewsRecord(NewsRecord newsRecord)
    {
        return newsRecordMapper.insertNewsRecord(newsRecord);
    }

    /**
     * 修改消息记录
     * 
     * @param newsRecord 消息记录
     * @return 结果
     */
    @Override
    public int updateNewsRecord(NewsRecord newsRecord)
    {
        return newsRecordMapper.updateNewsRecord(newsRecord);
    }

    /**
     * 批量删除消息记录
     * 
     * @param ids 需要删除的消息记录ID
     * @return 结果
     */
    @Override
    public int deleteNewsRecordByIds(Long[] ids)
    {
        return newsRecordMapper.deleteNewsRecordByIds(ids);
    }

    /**
     * 删除消息记录信息
     * 
     * @param id 消息记录ID
     * @return 结果
     */
    @Override
    public int deleteNewsRecordById(Long id)
    {
        return newsRecordMapper.deleteNewsRecordById(id);
    }
}
