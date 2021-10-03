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
import com.ruoyi.pharmacy.domain.PrescriptionDrugs;
import com.ruoyi.pharmacy.service.IPrescriptionDrugsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 处方药品Controller
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
@RestController
@RequestMapping("/pharmacy/drugs")
public class PrescriptionDrugsController extends BaseController
{
    @Autowired
    private IPrescriptionDrugsService prescriptionDrugsService;

    /**
     * 查询处方药品列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:drugs:list')")
    @GetMapping("/list")
    public TableDataInfo list(PrescriptionDrugs prescriptionDrugs)
    {
        startPage();
        List<PrescriptionDrugs> list = prescriptionDrugsService.selectPrescriptionDrugsList(prescriptionDrugs);
        return getDataTable(list);
    }

    /**
     * 导出处方药品列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:drugs:export')")
    @Log(title = "处方药品", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(PrescriptionDrugs prescriptionDrugs)
    {
        List<PrescriptionDrugs> list = prescriptionDrugsService.selectPrescriptionDrugsList(prescriptionDrugs);
        ExcelUtil<PrescriptionDrugs> util = new ExcelUtil<PrescriptionDrugs>(PrescriptionDrugs.class);
        return util.exportExcel(list, "处方药品数据");
    }

    /**
     * 获取处方药品详细信息
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:drugs:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(prescriptionDrugsService.selectPrescriptionDrugsById(id));
    }

    /**
     * 新增处方药品
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:drugs:add')")
    @Log(title = "处方药品", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PrescriptionDrugs prescriptionDrugs)
    {
        return toAjax(prescriptionDrugsService.insertPrescriptionDrugs(prescriptionDrugs));
    }

    /**
     * 修改处方药品
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:drugs:edit')")
    @Log(title = "处方药品", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PrescriptionDrugs prescriptionDrugs)
    {
        return toAjax(prescriptionDrugsService.updatePrescriptionDrugs(prescriptionDrugs));
    }

    /**
     * 删除处方药品
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:drugs:remove')")
    @Log(title = "处方药品", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(prescriptionDrugsService.deletePrescriptionDrugsByIds(ids));
    }
}
