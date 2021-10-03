package com.ruoyi.pharmacy.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pharmacy.mapper.PrescriptionMapper;
import com.ruoyi.pharmacy.domain.Prescription;
import com.ruoyi.pharmacy.service.IPrescriptionService;

/**
 * 处方Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
@Service
public class PrescriptionServiceImpl implements IPrescriptionService 
{
    @Autowired
    private PrescriptionMapper prescriptionMapper;

    /**
     * 查询处方
     * 
     * @param id 处方ID
     * @return 处方
     */
    @Override
    public Prescription selectPrescriptionById(Long id)
    {
        return prescriptionMapper.selectPrescriptionById(id);
    }

    /**
     * 查询处方列表
     * 
     * @param prescription 处方
     * @return 处方
     */
    @Override
    public List<Prescription> selectPrescriptionList(Prescription prescription)
    {
        return prescriptionMapper.selectPrescriptionList(prescription);
    }

    /**
     * 新增处方
     * 
     * @param prescription 处方
     * @return 结果
     */
    @Override
    public int insertPrescription(Prescription prescription)
    {
        return prescriptionMapper.insertPrescription(prescription);
    }

    /**
     * 修改处方
     * 
     * @param prescription 处方
     * @return 结果
     */
    @Override
    public int updatePrescription(Prescription prescription)
    {
        return prescriptionMapper.updatePrescription(prescription);
    }

    /**
     * 批量删除处方
     * 
     * @param ids 需要删除的处方ID
     * @return 结果
     */
    @Override
    public int deletePrescriptionByIds(Long[] ids)
    {
        return prescriptionMapper.deletePrescriptionByIds(ids);
    }

    /**
     * 删除处方信息
     * 
     * @param id 处方ID
     * @return 结果
     */
    @Override
    public int deletePrescriptionById(Long id)
    {
        return prescriptionMapper.deletePrescriptionById(id);
    }
}
