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
import com.ruoyi.pharmacy.domain.Prescription;
import com.ruoyi.pharmacy.service.IPrescriptionService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 处方Controller
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
@RestController
@RequestMapping("/pharmacy/prescription")
public class PrescriptionController extends BaseController
{
    @Autowired
    private IPrescriptionService prescriptionService;

    /**
     * 查询处方列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:prescription:list')")
    @GetMapping("/list")
    public TableDataInfo list(Prescription prescription)
    {
        startPage();
        List<Prescription> list = prescriptionService.selectPrescriptionList(prescription);
        return getDataTable(list);
    }

    /**
     * 导出处方列表
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:prescription:export')")
    @Log(title = "处方", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(Prescription prescription)
    {
        List<Prescription> list = prescriptionService.selectPrescriptionList(prescription);
        ExcelUtil<Prescription> util = new ExcelUtil<Prescription>(Prescription.class);
        return util.exportExcel(list, "处方数据");
    }

    /**
     * 获取处方详细信息
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:prescription:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(prescriptionService.selectPrescriptionById(id));
    }

    /**
     * 新增处方
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:prescription:add')")
    @Log(title = "处方", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Prescription prescription)
    {
        return toAjax(prescriptionService.insertPrescription(prescription));
    }

    /**
     * 修改处方
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:prescription:edit')")
    @Log(title = "处方", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Prescription prescription)
    {
        return toAjax(prescriptionService.updatePrescription(prescription));
    }

    /**
     * 删除处方
     */
    @PreAuthorize("@ss.hasPermi('pharmacy:prescription:remove')")
    @Log(title = "处方", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(prescriptionService.deletePrescriptionByIds(ids));
    }
}
