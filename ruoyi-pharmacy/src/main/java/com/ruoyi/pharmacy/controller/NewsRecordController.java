package com.ruoyi.pharmacy.controller;

import java.util.List;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.pharmacy.domain.NewsRecord;
import com.ruoyi.pharmacy.service.INewsRecordService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 消息记录Controller
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
@RestController
@RequestMapping("/pharmacy/newsRecord")
public class NewsRecordController extends BaseController
{
    @Autowired
    private INewsRecordService newsRecordService;

    /**
     * 查询消息记录列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:newsRecord:list')")
    @GetMapping("/list")
    public TableDataInfo list(NewsRecord newsRecord)
    {
        startPage();
        List<NewsRecord> list = newsRecordService.selectNewsRecordList(newsRecord);
        return getDataTable(list);
    }

    /**
     * 导出消息记录列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:newsRecord:export')")
    @Log(title = "消息记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(NewsRecord newsRecord)
    {
        List<NewsRecord> list = newsRecordService.selectNewsRecordList(newsRecord);
        ExcelUtil<NewsRecord> util = new ExcelUtil<NewsRecord>(NewsRecord.class);
        return util.exportExcel(list, "消息记录数据");
    }

    /**
     * 获取消息记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:newsRecord:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(newsRecordService.selectNewsRecordById(id));
    }

    /**
     * 新增消息记录
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:newsRecord:add')")
    @Log(title = "消息记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody NewsRecord newsRecord)
    {
        return toAjax(newsRecordService.insertNewsRecord(newsRecord));
    }

    /**
     * 修改消息记录
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:newsRecord:edit')")
    @Log(title = "消息记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody NewsRecord newsRecord)
    {
        return toAjax(newsRecordService.updateNewsRecord(newsRecord));
    }

    /**
     * 删除消息记录
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:newsRecord:remove')")
    @Log(title = "消息记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(newsRecordService.deleteNewsRecordByIds(ids));
    }
}
