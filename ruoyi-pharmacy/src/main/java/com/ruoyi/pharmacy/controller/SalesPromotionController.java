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
import com.ruoyi.pharmacy.domain.SalesPromotion;
import com.ruoyi.pharmacy.service.ISalesPromotionService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 促销方案Controller
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
@RestController
@RequestMapping("/pharmacy/promotion")
public class SalesPromotionController extends BaseController
{
    @Autowired
    private ISalesPromotionService salesPromotionService;

    /**
     * 查询促销方案列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:promotion:list')")
    @GetMapping("/list")
    public TableDataInfo list(SalesPromotion salesPromotion)
    {
        startPage();
        List<SalesPromotion> list = salesPromotionService.selectSalesPromotionList(salesPromotion);
        return getDataTable(list);
    }

    /**
     * 导出促销方案列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:promotion:export')")
    @Log(title = "促销方案", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(SalesPromotion salesPromotion)
    {
        List<SalesPromotion> list = salesPromotionService.selectSalesPromotionList(salesPromotion);
        ExcelUtil<SalesPromotion> util = new ExcelUtil<SalesPromotion>(SalesPromotion.class);
        return util.exportExcel(list, "促销方案数据");
    }

    /**
     * 获取促销方案详细信息
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:promotion:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(salesPromotionService.selectSalesPromotionById(id));
    }

    /**
     * 新增促销方案
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:promotion:add')")
    @Log(title = "促销方案", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SalesPromotion salesPromotion)
    {
        return toAjax(salesPromotionService.insertSalesPromotion(salesPromotion));
    }

    /**
     * 修改促销方案
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:promotion:edit')")
    @Log(title = "促销方案", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SalesPromotion salesPromotion)
    {
        return toAjax(salesPromotionService.updateSalesPromotion(salesPromotion));
    }

    /**
     * 删除促销方案
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:promotion:remove')")
    @Log(title = "促销方案", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(salesPromotionService.deleteSalesPromotionByIds(ids));
    }
}
