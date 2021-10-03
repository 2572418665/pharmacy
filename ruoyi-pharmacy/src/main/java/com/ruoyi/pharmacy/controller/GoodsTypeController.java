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
import com.ruoyi.pharmacy.domain.GoodsType;
import com.ruoyi.pharmacy.service.IGoodsTypeService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商品类别Controller
 * 
 * @author ruoyi
 * @date 2021-10-02
 */
@RestController
@RequestMapping("/pharmacy/goodsType")
public class GoodsTypeController extends BaseController
{
    @Autowired
    private IGoodsTypeService goodsTypeService;

    /**
     * 查询商品类别列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:goodsType:list')")
    @GetMapping("/list")
    public TableDataInfo list(GoodsType goodsType)
    {
        startPage();
        List<GoodsType> list = goodsTypeService.selectGoodsTypeList(goodsType);
        return getDataTable(list);
    }

    /**
     * 导出商品类别列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:goodsType:export')")
    @Log(title = "商品类别", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(GoodsType goodsType)
    {
        List<GoodsType> list = goodsTypeService.selectGoodsTypeList(goodsType);
        ExcelUtil<GoodsType> util = new ExcelUtil<GoodsType>(GoodsType.class);
        return util.exportExcel(list, "商品类别数据");
    }

    /**
     * 获取商品类别详细信息
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:goodsType:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(goodsTypeService.selectGoodsTypeById(id));
    }

    /**
     * 新增商品类别
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:goodsType:add')")
    @Log(title = "商品类别", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody GoodsType goodsType)
    {
        return toAjax(goodsTypeService.insertGoodsType(goodsType));
    }

    /**
     * 修改商品类别
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:goodsType:edit')")
    @Log(title = "商品类别", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody GoodsType goodsType)
    {
        return toAjax(goodsTypeService.updateGoodsType(goodsType));
    }

    /**
     * 删除商品类别
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:goodsType:remove')")
    @Log(title = "商品类别", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(goodsTypeService.deleteGoodsTypeByIds(ids));
    }
}
