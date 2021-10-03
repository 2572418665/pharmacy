package com.ruoyi.pharmacy.mapper;

import java.util.List;
import com.ruoyi.pharmacy.domain.PrescriptionDrugs;

/**
 * 处方药品Mapper接口
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
public interface PrescriptionDrugsMapper 
{
    /**
     * 查询处方药品
     * 
     * @param id 处方药品ID
     * @return 处方药品
     */
    public PrescriptionDrugs selectPrescriptionDrugsById(Long id);

    /**
     * 查询处方药品列表
     * 
     * @param prescriptionDrugs 处方药品
     * @return 处方药品集合
     */
    public List<PrescriptionDrugs> selectPrescriptionDrugsList(PrescriptionDrugs prescriptionDrugs);

    /**
     * 新增处方药品
     * 
     * @param prescriptionDrugs 处方药品
     * @return 结果
     */
    public int insertPrescriptionDrugs(PrescriptionDrugs prescriptionDrugs);

    /**
     * 修改处方药品
     * 
     * @param prescriptionDrugs 处方药品
     * @return 结果
     */
    public int updatePrescriptionDrugs(PrescriptionDrugs prescriptionDrugs);

    /**
     * 删除处方药品
     * 
     * @param id 处方药品ID
     * @return 结果
     */
    public int deletePrescriptionDrugsById(Long id);

    /**
     * 批量删除处方药品
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePrescriptionDrugsByIds(Long[] ids);
}
