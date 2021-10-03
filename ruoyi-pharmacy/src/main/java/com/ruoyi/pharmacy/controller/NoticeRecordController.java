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
import com.ruoyi.pharmacy.domain.NoticeRecord;
import com.ruoyi.pharmacy.service.INoticeRecordService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 公告记录Controller
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
@RestController
@RequestMapping("/pharmacy/noticeRecord")
public class NoticeRecordController extends BaseController
{
    @Autowired
    private INoticeRecordService noticeRecordService;

    /**
     * 查询公告记录列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:noticeRecord:list')")
    @GetMapping("/list")
    public TableDataInfo list(NoticeRecord noticeRecord)
    {
        startPage();
        List<NoticeRecord> list = noticeRecordService.selectNoticeRecordList(noticeRecord);
        return getDataTable(list);
    }

    /**
     * 导出公告记录列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:noticeRecord:export')")
    @Log(title = "公告记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(NoticeRecord noticeRecord)
    {
        List<NoticeRecord> list = noticeRecordService.selectNoticeRecordList(noticeRecord);
        ExcelUtil<NoticeRecord> util = new ExcelUtil<NoticeRecord>(NoticeRecord.class);
        return util.exportExcel(list, "公告记录数据");
    }

    /**
     * 获取公告记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:noticeRecord:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(noticeRecordService.selectNoticeRecordById(id));
    }

    /**
     * 新增公告记录
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:noticeRecord:add')")
    @Log(title = "公告记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody NoticeRecord noticeRecord)
    {
        return toAjax(noticeRecordService.insertNoticeRecord(noticeRecord));
    }

    /**
     * 修改公告记录
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:noticeRecord:edit')")
    @Log(title = "公告记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody NoticeRecord noticeRecord)
    {
        return toAjax(noticeRecordService.updateNoticeRecord(noticeRecord));
    }

    /**
     * 删除公告记录
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:noticeRecord:remove')")
    @Log(title = "公告记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(noticeRecordService.deleteNoticeRecordByIds(ids));
    }
}
