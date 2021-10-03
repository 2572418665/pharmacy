<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="处方ID" prop="prescriptionId">
        <el-input
          v-model="queryParams.prescriptionId"
          placeholder="请输入处方ID"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="药品名称" prop="drugName">
        <el-input
          v-model="queryParams.drugName"
          placeholder="请输入药品名称"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="药品规格" prop="drugSpec">
        <el-input
          v-model="queryParams.drugSpec"
          placeholder="请输入药品规格"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="药品剂型" prop="drugForm">
        <el-input
          v-model="queryParams.drugForm"
          placeholder="请输入药品剂型"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="药品剂量" prop="drugDose">
        <el-input
          v-model="queryParams.drugDose"
          placeholder="请输入药品剂量"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="药品使用频次" prop="drugInfo">
        <el-input
          v-model="queryParams.drugInfo"
          placeholder="请输入药品使用频次"
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
          v-hasPermi="['pharmacy:drugs:add']"
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
          v-hasPermi="['pharmacy:drugs:edit']"
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
          v-hasPermi="['pharmacy:drugs:remove']"
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
          v-hasPermi="['pharmacy:drugs:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="drugsList" @selection-change="handleSelectionChange">
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
      <el-table-column label="处方ID" align="center" prop="prescriptionId" />
      <el-table-column label="药品名称" align="center" prop="drugName" />
      <el-table-column label="药品规格" align="center" prop="drugSpec" />
      <el-table-column label="药品剂型" align="center" prop="drugForm" />
      <el-table-column label="药品剂量" align="center" prop="drugDose" />
      <el-table-column label="药品使用说明" align="center" prop="drugUsage" />
      <el-table-column label="药品使用频次" align="center" prop="drugInfo" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['pharmacy:drugs:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['pharmacy:drugs:remove']"
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

    <!-- 添加或修改处方药品对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="处方ID" prop="prescriptionId">
          <el-input v-model="form.prescriptionId" placeholder="请输入处方ID" />
        </el-form-item>
        <el-form-item label="药品名称" prop="drugName">
          <el-input v-model="form.drugName" placeholder="请输入药品名称" />
        </el-form-item>
        <el-form-item label="药品规格" prop="drugSpec">
          <el-input v-model="form.drugSpec" placeholder="请输入药品规格" />
        </el-form-item>
        <el-form-item label="药品剂型" prop="drugForm">
          <el-input v-model="form.drugForm" placeholder="请输入药品剂型" />
        </el-form-item>
        <el-form-item label="药品剂量" prop="drugDose">
          <el-input v-model="form.drugDose" placeholder="请输入药品剂量" />
        </el-form-item>
        <el-form-item label="药品使用说明" prop="drugUsage">
          <el-input v-model="form.drugUsage" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="药品使用频次" prop="drugInfo">
          <el-input v-model="form.drugInfo" placeholder="请输入药品使用频次" />
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
import { listDrugs, getDrugs, delDrugs, addDrugs, updateDrugs, exportDrugs } from "@/api/pharmacy/drugs";

export default {
  name: "Drugs",
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
      // 处方药品表格数据
      drugsList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        prescriptionId: null,
        drugName: null,
        drugSpec: null,
        drugForm: null,
        drugDose: null,
        drugUsage: null,
        drugInfo: null
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
    /** 查询处方药品列表 */
    getList() {
      this.loading = true;
      listDrugs(this.queryParams).then(response => {
        this.drugsList = response.rows;
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
        prescriptionId: null,
        drugName: null,
        drugSpec: null,
        drugForm: null,
        drugDose: null,
        drugUsage: null,
        drugInfo: null
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
      this.title = "添加处方药品";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getDrugs(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改处方药品";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateDrugs(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addDrugs(this.form).then(response => {
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
      this.$confirm('是否确认删除处方药品编号为"' + ids + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delDrugs(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有处方药品数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(() => {
          this.exportLoading = true;
          return exportDrugs(queryParams);
        }).then(response => {
          this.download(response.msg);
          this.exportLoading = false;
        }).catch(() => {});
    }
  }
};
</script>
