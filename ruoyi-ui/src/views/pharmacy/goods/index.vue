<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="商品ID" prop="goodsId">
        <el-input
          v-model="queryParams.goodsId"
          placeholder="请输入商品ID"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品类别编号" prop="typeId">
        <el-input
          v-model="queryParams.typeId"
          placeholder="请输入商品类别编号"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入名称"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="数量" prop="num">
        <el-input
          v-model="queryParams.num"
          placeholder="请输入数量"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="定价" prop="price">
        <el-input
          v-model="queryParams.price"
          placeholder="请输入定价"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="进价" prop="cost">
        <el-input
          v-model="queryParams.cost"
          placeholder="请输入进价"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="图片路径" prop="imgPath">
        <el-input
          v-model="queryParams.imgPath"
          placeholder="请输入图片路径"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="治疗类型" prop="treatmentType">
        <el-select v-model="queryParams.treatmentType" placeholder="请选择治疗类型" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="贮存" prop="keeping">
        <el-input
          v-model="queryParams.keeping"
          placeholder="请输入贮存"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="生产企业" prop="enterprise">
        <el-input
          v-model="queryParams.enterprise"
          placeholder="请输入生产企业"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="用法" prop="usage">
        <el-input
          v-model="queryParams.usage"
          placeholder="请输入用法"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="用量" prop="dosage">
        <el-input
          v-model="queryParams.dosage"
          placeholder="请输入用量"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="生产批号" prop="batchNum">
        <el-input
          v-model="queryParams.batchNum"
          placeholder="请输入生产批号"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="剂型" prop="drugForm">
        <el-input
          v-model="queryParams.drugForm"
          placeholder="请输入剂型"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="规格" prop="drugSpec">
        <el-input
          v-model="queryParams.drugSpec"
          placeholder="请输入规格"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="包装规格" prop="packingSpec">
        <el-input
          v-model="queryParams.packingSpec"
          placeholder="请输入包装规格"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="生产日期" prop="manufactureTime">
        <el-date-picker clearable size="small"
          v-model="queryParams.manufactureTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="选择生产日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="保质期" prop="saveTime">
        <el-input
          v-model="queryParams.saveTime"
          placeholder="请输入保质期"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="建议零售价" prop="suggestedPrice">
        <el-input
          v-model="queryParams.suggestedPrice"
          placeholder="请输入建议零售价"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="是否处方药" prop="isOtc">
        <el-input
          v-model="queryParams.isOtc"
          placeholder="请输入是否处方药"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['pharmacy:goods:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['pharmacy:goods:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['pharmacy:goods:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
		  :loading="exportLoading"
          @click="handleExport"
          v-hasPermi="['pharmacy:goods:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="goodsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column
        label="序号"
        type="index"
        width="50"
        align="center"
        :index="table_index"
      >
      </el-table-column>
      <el-table-column label="主键" align="center" prop="id" />
      <el-table-column label="商品ID" align="center" prop="goodsId" />
      <el-table-column label="商品类别编号" align="center" prop="typeId" />
      <el-table-column label="名称" align="center" prop="name" />
      <el-table-column label="数量" align="center" prop="num" />
      <el-table-column label="定价" align="center" prop="price" />
      <el-table-column label="进价" align="center" prop="cost" />
      <el-table-column label="图片路径" align="center" prop="imgPath" />
      <el-table-column label="治疗类型" align="center" prop="treatmentType" />
      <el-table-column label="主要成分" align="center" prop="components" />
      <el-table-column label="贮存" align="center" prop="keeping" />
      <el-table-column label="生产企业" align="center" prop="enterprise" />
      <el-table-column label="功效" align="center" prop="effect" />
      <el-table-column label="注意事项" align="center" prop="drugUsage" />
      <el-table-column label="用法" align="center" prop="usage" />
      <el-table-column label="用量" align="center" prop="dosage" />
      <el-table-column label="不良反应" align="center" prop="adrs" />
      <el-table-column label="生产批号" align="center" prop="batchNum" />
      <el-table-column label="剂型" align="center" prop="drugForm" />
      <el-table-column label="规格" align="center" prop="drugSpec" />
      <el-table-column label="包装规格" align="center" prop="packingSpec" />
      <el-table-column label="生产日期" align="center" prop="manufactureTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.manufactureTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="保质期" align="center" prop="saveTime" />
      <el-table-column label="建议零售价" align="center" prop="suggestedPrice" />
      <el-table-column label="是否处方药" align="center" prop="isOtc" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['pharmacy:goods:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['pharmacy:goods:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改商品对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="商品ID" prop="goodsId">
          <el-input v-model="form.goodsId" placeholder="请输入商品ID" />
        </el-form-item>
        <el-form-item label="商品类别编号" prop="typeId">
          <el-input v-model="form.typeId" placeholder="请输入商品类别编号" />
        </el-form-item>
        <el-form-item label="名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入名称" />
        </el-form-item>
        <el-form-item label="数量" prop="num">
          <el-input v-model="form.num" placeholder="请输入数量" />
        </el-form-item>
        <el-form-item label="定价" prop="price">
          <el-input v-model="form.price" placeholder="请输入定价" />
        </el-form-item>
        <el-form-item label="进价" prop="cost">
          <el-input v-model="form.cost" placeholder="请输入进价" />
        </el-form-item>
        <el-form-item label="图片路径" prop="imgPath">
          <el-input v-model="form.imgPath" placeholder="请输入图片路径" />
        </el-form-item>
        <el-form-item label="治疗类型" prop="treatmentType">
          <el-select v-model="form.treatmentType" placeholder="请选择治疗类型">
            <el-option label="请选择字典生成" value="" />
          </el-select>
        </el-form-item>
        <el-form-item label="主要成分" prop="components">
          <el-input v-model="form.components" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="贮存" prop="keeping">
          <el-input v-model="form.keeping" placeholder="请输入贮存" />
        </el-form-item>
        <el-form-item label="生产企业" prop="enterprise">
          <el-input v-model="form.enterprise" placeholder="请输入生产企业" />
        </el-form-item>
        <el-form-item label="功效" prop="effect">
          <el-input v-model="form.effect" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="注意事项" prop="drugUsage">
          <el-input v-model="form.drugUsage" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="用法" prop="usage">
          <el-input v-model="form.usage" placeholder="请输入用法" />
        </el-form-item>
        <el-form-item label="用量" prop="dosage">
          <el-input v-model="form.dosage" placeholder="请输入用量" />
        </el-form-item>
        <el-form-item label="不良反应" prop="adrs">
          <el-input v-model="form.adrs" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="生产批号" prop="batchNum">
          <el-input v-model="form.batchNum" placeholder="请输入生产批号" />
        </el-form-item>
        <el-form-item label="剂型" prop="drugForm">
          <el-input v-model="form.drugForm" placeholder="请输入剂型" />
        </el-form-item>
        <el-form-item label="规格" prop="drugSpec">
          <el-input v-model="form.drugSpec" placeholder="请输入规格" />
        </el-form-item>
        <el-form-item label="包装规格" prop="packingSpec">
          <el-input v-model="form.packingSpec" placeholder="请输入包装规格" />
        </el-form-item>
        <el-form-item label="生产日期" prop="manufactureTime">
          <el-date-picker clearable size="small"
            v-model="form.manufactureTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="选择生产日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="保质期" prop="saveTime">
          <el-input v-model="form.saveTime" placeholder="请输入保质期" />
        </el-form-item>
        <el-form-item label="建议零售价" prop="suggestedPrice">
          <el-input v-model="form.suggestedPrice" placeholder="请输入建议零售价" />
        </el-form-item>
        <el-form-item label="是否处方药" prop="isOtc">
          <el-input v-model="form.isOtc" placeholder="请输入是否处方药" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listGoods, getGoods, delGoods, addGoods, updateGoods, exportGoods } from "@/api/pharmacy/goods";

export default {
  name: "Goods",
  components: {
  },
  data() {
    return {
      // 遮罩层
      loading: true,
      // 导出遮罩层
      exportLoading: false,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 商品表格数据
      goodsList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        goodsId: null,
        typeId: null,
        name: null,
        num: null,
        price: null,
        cost: null,
        imgPath: null,
        treatmentType: null,
        components: null,
        keeping: null,
        enterprise: null,
        effect: null,
        drugUsage: null,
        usage: null,
        dosage: null,
        adrs: null,
        batchNum: null,
        drugForm: null,
        drugSpec: null,
        packingSpec: null,
        manufactureTime: null,
        saveTime: null,
        suggestedPrice: null,
        isOtc: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    //翻页序号累加
    table_index(index) {
      return (this.queryParams.pageNum - 1) * this.queryParams.pageSize + index + 1
    },
    /** 查询商品列表 */
    getList() {
      this.loading = true;
      listGoods(this.queryParams).then(response => {
        this.goodsList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        goodsId: null,
        typeId: null,
        name: null,
        num: null,
        price: null,
        cost: null,
        imgPath: null,
        treatmentType: null,
        components: null,
        keeping: null,
        enterprise: null,
        effect: null,
        drugUsage: null,
        usage: null,
        dosage: null,
        adrs: null,
        batchNum: null,
        drugForm: null,
        drugSpec: null,
        packingSpec: null,
        manufactureTime: null,
        saveTime: null,
        suggestedPrice: null,
        isOtc: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加商品";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getGoods(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改商品";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateGoods(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addGoods(this.form).then(response => {
              this.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$confirm('是否确认删除商品编号为"' + ids + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delGoods(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有商品数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(() => {
          this.exportLoading = true;
          return exportGoods(queryParams);
        }).then(response => {
          this.download(response.msg);
          this.exportLoading = false;
        }).catch(() => {});
    }
  }
};
</script>
