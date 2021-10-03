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
import com.ruoyi.pharmacy.domain.SalesPromotionRecord;
import com.ruoyi.pharmacy.service.ISalesPromotionRecordService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 促销方案修改记录Controller
 * 
 * @author ruoyi
 * @date 2021-09-30
 */
@RestController
@RequestMapping("/pharmacy/promotionRecord")
public class SalesPromotionRecordController extends BaseController
{
    @Autowired
    private ISalesPromotionRecordService salesPromotionRecordService;

    /**
     * 查询促销方案修改记录列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:promotionRecord:list')")
    @GetMapping("/list")
    public TableDataInfo list(SalesPromotionRecord salesPromotionRecord)
    {
        startPage();
        List<SalesPromotionRecord> list = salesPromotionRecordService.selectSalesPromotionRecordList(salesPromotionRecord);
        return getDataTable(list);
    }

    /**
     * 导出促销方案修改记录列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:promotionRecord:export')")
    @Log(title = "促销方案修改记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(SalesPromotionRecord salesPromotionRecord)
    {
        List<SalesPromotionRecord> list = salesPromotionRecordService.selectSalesPromotionRecordList(salesPromotionRecord);
        ExcelUtil<SalesPromotionRecord> util = new ExcelUtil<SalesPromotionRecord>(SalesPromotionRecord.class);
        return util.exportExcel(list, "促销方案修改记录数据");
    }

    /**
     * 获取促销方案修改记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:promotionRecord:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(salesPromotionRecordService.selectSalesPromotionRecordById(id));
    }

    /**
     * 新增促销方案修改记录
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:promotionRecord:add')")
    @Log(title = "促销方案修改记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SalesPromotionRecord salesPromotionRecord)
    {
        return toAjax(salesPromotionRecordService.insertSalesPromotionRecord(salesPromotionRecord));
    }

    /**
     * 修改促销方案修改记录
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:promotionRecord:edit')")
    @Log(title = "促销方案修改记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SalesPromotionRecord salesPromotionRecord)
    {
        return toAjax(salesPromotionRecordService.updateSalesPromotionRecord(salesPromotionRecord));
    }

    /**
     * 删除促销方案修改记录
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:promotionRecord:remove')")
    @Log(title = "促销方案修改记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(salesPromotionRecordService.deleteSalesPromotionRecordByIds(ids));
    }
}
