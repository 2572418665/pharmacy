package com.ruoyi.pharmacy.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 商品对象 goods
 * 
 * @author ruoyi
 * @date 2021-10-02
 */
public class Goods extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 商品ID */
    @Excel(name = "商品ID")
    private String goodsId;

    /** 商品类别编号 */
    @Excel(name = "商品类别编号")
    private Long typeId;

    /** 名称 */
    @Excel(name = "名称")
    private String name;

    /** 数量 */
    @Excel(name = "数量")
    private Long num;

    /** 定价 */
    @Excel(name = "定价")
    private Long price;

    /** 进价 */
    @Excel(name = "进价")
    private Long cost;

    /** 图片路径 */
    @Excel(name = "图片路径")
    private String imgPath;

    /** 治疗类型 */
    @Excel(name = "治疗类型")
    private String treatmentType;

    /** 主要成分 */
    @Excel(name = "主要成分")
    private String components;

    /** 贮存 */
    @Excel(name = "贮存")
    private String keeping;

    /** 生产企业 */
    @Excel(name = "生产企业")
    private String enterprise;

    /** 功效 */
    @Excel(name = "功效")
    private String effect;

    /** 注意事项 */
    @Excel(name = "注意事项")
    private String drugUsage;

    /** 用法 */
    @Excel(name = "用法")
    private String usage;

    /** 用量 */
    @Excel(name = "用量")
    private String dosage;

    /** 不良反应 */
    @Excel(name = "不良反应")
    private String adrs;

    /** 生产批号 */
    @Excel(name = "生产批号")
    private String batchNum;

    /** 剂型 */
    @Excel(name = "剂型")
    private String drugForm;

    /** 规格 */
    @Excel(name = "规格")
    private String drugSpec;

    /** 包装规格 */
    @Excel(name = "包装规格")
    private String packingSpec;

    /** 生产日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "生产日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date manufactureTime;

    /** 保质期 */
    @Excel(name = "保质期")
    private String saveTime;

    /** 建议零售价 */
    @Excel(name = "建议零售价")
    private Long suggestedPrice;

    /** 是否处方药 */
    @Excel(name = "是否处方药")
    private String isOtc;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setGoodsId(String goodsId) 
    {
        this.goodsId = goodsId;
    }

    public String getGoodsId() 
    {
        return goodsId;
    }
    public void setTypeId(Long typeId) 
    {
        this.typeId = typeId;
    }

    public Long getTypeId() 
    {
        return typeId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setNum(Long num) 
    {
        this.num = num;
    }

    public Long getNum() 
    {
        return num;
    }
    public void setPrice(Long price) 
    {
        this.price = price;
    }

    public Long getPrice() 
    {
        return price;
    }
    public void setCost(Long cost) 
    {
        this.cost = cost;
    }

    public Long getCost() 
    {
        return cost;
    }
    public void setImgPath(String imgPath) 
    {
        this.imgPath = imgPath;
    }

    public String getImgPath() 
    {
        return imgPath;
    }
    public void setTreatmentType(String treatmentType) 
    {
        this.treatmentType = treatmentType;
    }

    public String getTreatmentType() 
    {
        return treatmentType;
    }
    public void setComponents(String components) 
    {
        this.components = components;
    }

    public String getComponents() 
    {
        return components;
    }
    public void setKeeping(String keeping) 
    {
        this.keeping = keeping;
    }

    public String getKeeping() 
    {
        return keeping;
    }
    public void setEnterprise(String enterprise) 
    {
        this.enterprise = enterprise;
    }

    public String getEnterprise() 
    {
        return enterprise;
    }
    public void setEffect(String effect) 
    {
        this.effect = effect;
    }

    public String getEffect() 
    {
        return effect;
    }
    public void setDrugUsage(String drugUsage) 
    {
        this.drugUsage = drugUsage;
    }

    public String getDrugUsage() 
    {
        return drugUsage;
    }
    public void setUsage(String usage) 
    {
        this.usage = usage;
    }

    public String getUsage() 
    {
        return usage;
    }
    public void setDosage(String dosage) 
    {
        this.dosage = dosage;
    }

    public String getDosage() 
    {
        return dosage;
    }
    public void setAdrs(String adrs) 
    {
        this.adrs = adrs;
    }

    public String getAdrs() 
    {
        return adrs;
    }
    public void setBatchNum(String batchNum) 
    {
        this.batchNum = batchNum;
    }

    public String getBatchNum() 
    {
        return batchNum;
    }
    public void setDrugForm(String drugForm) 
    {
        this.drugForm = drugForm;
    }

    public String getDrugForm() 
    {
        return drugForm;
    }
    public void setDrugSpec(String drugSpec) 
    {
        this.drugSpec = drugSpec;
    }

    public String getDrugSpec() 
    {
        return drugSpec;
    }
    public void setPackingSpec(String packingSpec) 
    {
        this.packingSpec = packingSpec;
    }

    public String getPackingSpec() 
    {
        return packingSpec;
    }
    public void setManufactureTime(Date manufactureTime) 
    {
        this.manufactureTime = manufactureTime;
    }

    public Date getManufactureTime() 
    {
        return manufactureTime;
    }
    public void setSaveTime(String saveTime) 
    {
        this.saveTime = saveTime;
    }

    public String getSaveTime() 
    {
        return saveTime;
    }
    public void setSuggestedPrice(Long suggestedPrice) 
    {
        this.suggestedPrice = suggestedPrice;
    }

    public Long getSuggestedPrice() 
    {
        return suggestedPrice;
    }
    public void setIsOtc(String isOtc) 
    {
        this.isOtc = isOtc;
    }

    public String getIsOtc() 
    {
        return isOtc;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("goodsId", getGoodsId())
            .append("typeId", getTypeId())
            .append("name", getName())
            .append("num", getNum())
            .append("price", getPrice())
            .append("cost", getCost())
            .append("imgPath", getImgPath())
            .append("treatmentType", getTreatmentType())
            .append("components", getComponents())
            .append("keeping", getKeeping())
            .append("enterprise", getEnterprise())
            .append("effect", getEffect())
            .append("drugUsage", getDrugUsage())
            .append("usage", getUsage())
            .append("dosage", getDosage())
            .append("adrs", getAdrs())
            .append("batchNum", getBatchNum())
            .append("drugForm", getDrugForm())
            .append("drugSpec", getDrugSpec())
            .append("packingSpec", getPackingSpec())
            .append("manufactureTime", getManufactureTime())
            .append("saveTime", getSaveTime())
            .append("suggestedPrice", getSuggestedPrice())
            .append("isOtc", getIsOtc())
            .toString();
    }
}
