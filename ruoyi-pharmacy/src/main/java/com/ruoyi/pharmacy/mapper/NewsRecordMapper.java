package com.ruoyi.pharmacy.mapper;

import java.util.List;
import com.ruoyi.pharmacy.domain.NewsRecord;

/**
 * 消息记录Mapper接口
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
public interface NewsRecordMapper 
{
    /**
     * 查询消息记录
     * 
     * @param id 消息记录ID
     * @return 消息记录
     */
    public NewsRecord selectNewsRecordById(Long id);

    /**
     * 查询消息记录列表
     * 
     * @param newsRecord 消息记录
     * @return 消息记录集合
     */
    public List<NewsRecord> selectNewsRecordList(NewsRecord newsRecord);

    /**
     * 新增消息记录
     * 
     * @param newsRecord 消息记录
     * @return 结果
     */
    public int insertNewsRecord(NewsRecord newsRecord);

    /**
     * 修改消息记录
     * 
     * @param newsRecord 消息记录
     * @return 结果
     */
    public int updateNewsRecord(NewsRecord newsRecord);

    /**
     * 删除消息记录
     * 
     * @param id 消息记录ID
     * @return 结果
     */
    public int deleteNewsRecordById(Long id);

    /**
     * 批量删除消息记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteNewsRecordByIds(Long[] ids);
}
