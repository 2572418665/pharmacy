package com.ruoyi.pharmacy.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 处方药品对象 prescription_drugs
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
public class PrescriptionDrugs extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 处方ID */
    @Excel(name = "处方ID")
    private Long prescriptionId;

    /** 药品名称 */
    @Excel(name = "药品名称")
    private String drugName;

    /** 药品规格 */
    @Excel(name = "药品规格")
    private String drugSpec;

    /** 药品剂型 */
    @Excel(name = "药品剂型")
    private String drugForm;

    /** 药品剂量 */
    @Excel(name = "药品剂量")
    private String drugDose;

    /** 药品使用说明 */
    @Excel(name = "药品使用说明")
    private String drugUsage;

    /** 药品使用频次 */
    @Excel(name = "药品使用频次")
    private String drugInfo;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setPrescriptionId(Long prescriptionId) 
    {
        this.prescriptionId = prescriptionId;
    }

    public Long getPrescriptionId() 
    {
        return prescriptionId;
    }
    public void setDrugName(String drugName) 
    {
        this.drugName = drugName;
    }

    public String getDrugName() 
    {
        return drugName;
    }
    public void setDrugSpec(String drugSpec) 
    {
        this.drugSpec = drugSpec;
    }

    public String getDrugSpec() 
    {
        return drugSpec;
    }
    public void setDrugForm(String drugForm) 
    {
        this.drugForm = drugForm;
    }

    public String getDrugForm() 
    {
        return drugForm;
    }
    public void setDrugDose(String drugDose) 
    {
        this.drugDose = drugDose;
    }

    public String getDrugDose() 
    {
        return drugDose;
    }
    public void setDrugUsage(String drugUsage) 
    {
        this.drugUsage = drugUsage;
    }

    public String getDrugUsage() 
    {
        return drugUsage;
    }
    public void setDrugInfo(String drugInfo) 
    {
        this.drugInfo = drugInfo;
    }

    public String getDrugInfo() 
    {
        return drugInfo;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("prescriptionId", getPrescriptionId())
            .append("drugName", getDrugName())
            .append("drugSpec", getDrugSpec())
            .append("drugForm", getDrugForm())
            .append("drugDose", getDrugDose())
            .append("drugUsage", getDrugUsage())
            .append("drugInfo", getDrugInfo())
            .toString();
    }
}
