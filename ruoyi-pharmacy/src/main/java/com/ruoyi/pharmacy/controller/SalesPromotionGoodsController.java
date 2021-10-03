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
import com.ruoyi.pharmacy.domain.SalesPromotionGoods;
import com.ruoyi.pharmacy.service.ISalesPromotionGoodsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 促销商品Controller
 *
 * @author ruoyi
 * @date 2021-09-30
 */
@RestController
@RequestMapping("/pharmacy/salesPromotionGoods")
public class SalesPromotionGoodsController extends BaseController
{
    @Autowired
    private ISalesPromotionGoodsService salesPromotionGoodsService;

    /**
     * 查询促销商品列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:goods:list')")
    @GetMapping("/list")
    public TableDataInfo list(SalesPromotionGoods salesPromotionGoods)
    {
        startPage();
        List<SalesPromotionGoods> list = salesPromotionGoodsService.selectSalesPromotionGoodsList(salesPromotionGoods);
        return getDataTable(list);
    }

    /**
     * 导出促销商品列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:goods:export')")
    @Log(title = "促销商品", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(SalesPromotionGoods salesPromotionGoods)
    {
        List<SalesPromotionGoods> list = salesPromotionGoodsService.selectSalesPromotionGoodsList(salesPromotionGoods);
        ExcelUtil<SalesPromotionGoods> util = new ExcelUtil<SalesPromotionGoods>(SalesPromotionGoods.class);
        return util.exportExcel(list, "促销商品数据");
    }

    /**
     * 获取促销商品详细信息
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:goods:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(salesPromotionGoodsService.selectSalesPromotionGoodsById(id));
    }

    /**
     * 新增促销商品
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:goods:add')")
    @Log(title = "促销商品", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SalesPromotionGoods salesPromotionGoods)
    {
        return toAjax(salesPromotionGoodsService.insertSalesPromotionGoods(salesPromotionGoods));
    }

    /**
     * 修改促销商品
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:goods:edit')")
    @Log(title = "促销商品", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SalesPromotionGoods salesPromotionGoods)
    {
        return toAjax(salesPromotionGoodsService.updateSalesPromotionGoods(salesPromotionGoods));
    }

    /**
     * 删除促销商品
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:goods:remove')")
    @Log(title = "促销商品", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(salesPromotionGoodsService.deleteSalesPromotionGoodsByIds(ids));
    }
}
