package com.ruoyi.pharmacy.mapper;

import java.util.List;
import com.ruoyi.pharmacy.domain.News;

/**
 * 消息Mapper接口
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
public interface NewsMapper 
{
    /**
     * 查询消息
     * 
     * @param id 消息ID
     * @return 消息
     */
    public News selectNewsById(Long id);

    /**
     * 查询消息列表
     * 
     * @param news 消息
     * @return 消息集合
     */
    public List<News> selectNewsList(News news);

    /**
     * 新增消息
     * 
     * @param news 消息
     * @return 结果
     */
    public int insertNews(News news);

    /**
     * 修改消息
     * 
     * @param news 消息
     * @return 结果
     */
    public int updateNews(News news);

    /**
     * 删除消息
     * 
     * @param id 消息ID
     * @return 结果
     */
    public int deleteNewsById(Long id);

    /**
     * 批量删除消息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteNewsByIds(Long[] ids);
}
