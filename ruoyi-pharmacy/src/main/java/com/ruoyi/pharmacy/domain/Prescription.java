package com.ruoyi.pharmacy.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 处方对象 prescription
 * 
 * @author ruoyi
 * @date 2021-09-29
 */
public class Prescription extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 医疗机构名称 */
    @Excel(name = "医疗机构名称")
    private String hospitalName;

    /** 处方开具日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "处方开具日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date prescriptionDate;

    /** 处方有效期限 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "处方有效期限", width = 30, dateFormat = "yyyy-MM-dd")
    private Date prescriptionOutdate;

    /** 开处方医生姓名 */
    @Excel(name = "开处方医生姓名")
    private String drName;

    /** 就诊科室 */
    @Excel(name = "就诊科室")
    private String drDept;

    /** 医生签名 */
    @Excel(name = "医生签名")
    private String drSign;

    /** 患者姓名 */
    @Excel(name = "患者姓名")
    private String patientName;

    /** 患者年龄 */
    @Excel(name = "患者年龄")
    private Long patientAge;

    /** 患者性别 */
    @Excel(name = "患者性别")
    private String patientSex;

    /** 患者体重 */
    @Excel(name = "患者体重")
    private Long patientWeight;

    /** 患者过敏情况 */
    @Excel(name = "患者过敏情况")
    private String patientAllergy;

    /** 临床诊断 */
    @Excel(name = "临床诊断")
    private String clinicalDiag;

    /** 处方审核医生 */
    @Excel(name = "处方审核医生")
    private String prescriptionReview;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setHospitalName(String hospitalName) 
    {
        this.hospitalName = hospitalName;
    }

    public String getHospitalName() 
    {
        return hospitalName;
    }
    public void setPrescriptionDate(Date prescriptionDate) 
    {
        this.prescriptionDate = prescriptionDate;
    }

    public Date getPrescriptionDate() 
    {
        return prescriptionDate;
    }
    public void setPrescriptionOutdate(Date prescriptionOutdate) 
    {
        this.prescriptionOutdate = prescriptionOutdate;
    }

    public Date getPrescriptionOutdate() 
    {
        return prescriptionOutdate;
    }
    public void setDrName(String drName) 
    {
        this.drName = drName;
    }

    public String getDrName() 
    {
        return drName;
    }
    public void setDrDept(String drDept) 
    {
        this.drDept = drDept;
    }

    public String getDrDept() 
    {
        return drDept;
    }
    public void setDrSign(String drSign) 
    {
        this.drSign = drSign;
    }

    public String getDrSign() 
    {
        return drSign;
    }
    public void setPatientName(String patientName) 
    {
        this.patientName = patientName;
    }

    public String getPatientName() 
    {
        return patientName;
    }
    public void setPatientAge(Long patientAge) 
    {
        this.patientAge = patientAge;
    }

    public Long getPatientAge() 
    {
        return patientAge;
    }
    public void setPatientSex(String patientSex) 
    {
        this.patientSex = patientSex;
    }

    public String getPatientSex() 
    {
        return patientSex;
    }
    public void setPatientWeight(Long patientWeight) 
    {
        this.patientWeight = patientWeight;
    }

    public Long getPatientWeight() 
    {
        return patientWeight;
    }
    public void setPatientAllergy(String patientAllergy) 
    {
        this.patientAllergy = patientAllergy;
    }

    public String getPatientAllergy() 
    {
        return patientAllergy;
    }
    public void setClinicalDiag(String clinicalDiag) 
    {
        this.clinicalDiag = clinicalDiag;
    }

    public String getClinicalDiag() 
    {
        return clinicalDiag;
    }
    public void setPrescriptionReview(String prescriptionReview) 
    {
        this.prescriptionReview = prescriptionReview;
    }

    public String getPrescriptionReview() 
    {
        return prescriptionReview;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("hospitalName", getHospitalName())
            .append("prescriptionDate", getPrescriptionDate())
            .append("prescriptionOutdate", getPrescriptionOutdate())
            .append("drName", getDrName())
            .append("drDept", getDrDept())
            .append("drSign", getDrSign())
            .append("patientName", getPatientName())
            .append("patientAge", getPatientAge())
            .append("patientSex", getPatientSex())
            .append("patientWeight", getPatientWeight())
            .append("patientAllergy", getPatientAllergy())
            .append("clinicalDiag", getClinicalDiag())
            .append("prescriptionReview", getPrescriptionReview())
            .toString();
    }
}
