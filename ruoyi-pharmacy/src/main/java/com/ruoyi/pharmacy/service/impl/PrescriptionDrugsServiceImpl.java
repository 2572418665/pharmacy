package com.ruoyi.pharmacy.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pharmacy.mapper.PrescriptionDrugsMapper;
import com.ruoyi.pharmacy.domain.PrescriptionDrugs;
import com.ruoyi.pharmacy.service.IPrescriptionDrugsService;

/**
 * 处方药品Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
@Service
public class PrescriptionDrugsServiceImpl implements IPrescriptionDrugsService 
{
    @Autowired
    private PrescriptionDrugsMapper prescriptionDrugsMapper;

    /**
     * 查询处方药品
     * 
     * @param id 处方药品ID
     * @return 处方药品
     */
    @Override
    public PrescriptionDrugs selectPrescriptionDrugsById(Long id)
    {
        return prescriptionDrugsMapper.selectPrescriptionDrugsById(id);
    }

    /**
     * 查询处方药品列表
     * 
     * @param prescriptionDrugs 处方药品
     * @return 处方药品
     */
    @Override
    public List<PrescriptionDrugs> selectPrescriptionDrugsList(PrescriptionDrugs prescriptionDrugs)
    {
        return prescriptionDrugsMapper.selectPrescriptionDrugsList(prescriptionDrugs);
    }

    /**
     * 新增处方药品
     * 
     * @param prescriptionDrugs 处方药品
     * @return 结果
     */
    @Override
    public int insertPrescriptionDrugs(PrescriptionDrugs prescriptionDrugs)
    {
        return prescriptionDrugsMapper.insertPrescriptionDrugs(prescriptionDrugs);
    }

    /**
     * 修改处方药品
     * 
     * @param prescriptionDrugs 处方药品
     * @return 结果
     */
    @Override
    public int updatePrescriptionDrugs(PrescriptionDrugs prescriptionDrugs)
    {
        return prescriptionDrugsMapper.updatePrescriptionDrugs(prescriptionDrugs);
    }

    /**
     * 批量删除处方药品
     * 
     * @param ids 需要删除的处方药品ID
     * @return 结果
     */
    @Override
    public int deletePrescriptionDrugsByIds(Long[] ids)
    {
        return prescriptionDrugsMapper.deletePrescriptionDrugsByIds(ids);
    }

    /**
     * 删除处方药品信息
     * 
     * @param id 处方药品ID
     * @return 结果
     */
    @Override
    public int deletePrescriptionDrugsById(Long id)
    {
        return prescriptionDrugsMapper.deletePrescriptionDrugsById(id);
    }
}
