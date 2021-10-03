package com.ruoyi.pharmacy.mapper;

import java.util.List;
import com.ruoyi.pharmacy.domain.Prescription;

/**
 * 处方Mapper接口
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
public interface PrescriptionMapper 
{
    /**
     * 查询处方
     * 
     * @param id 处方ID
     * @return 处方
     */
    public Prescription selectPrescriptionById(Long id);

    /**
     * 查询处方列表
     * 
     * @param prescription 处方
     * @return 处方集合
     */
    public List<Prescription> selectPrescriptionList(Prescription prescription);

    /**
     * 新增处方
     * 
     * @param prescription 处方
     * @return 结果
     */
    public int insertPrescription(Prescription prescription);

    /**
     * 修改处方
     * 
     * @param prescription 处方
     * @return 结果
     */
    public int updatePrescription(Prescription prescription);

    /**
     * 删除处方
     * 
     * @param id 处方ID
     * @return 结果
     */
    public int deletePrescriptionById(Long id);

    /**
     * 批量删除处方
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePrescriptionByIds(Long[] ids);
}
