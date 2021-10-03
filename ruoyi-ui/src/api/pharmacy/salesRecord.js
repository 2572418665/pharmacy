import request from '@/utils/request'

// 查询销售记录列表
export function listSalesRecord(query) {
  return request({
    url: '/pharmacy/salesRecord/list',
    method: 'get',
    params: query
  })
}

// 查询销售记录详细
export function getSalesRecord(id) {
  return request({
    url: '/pharmacy/salesRecord/' + id,
    method: 'get'
  })
}

// 新增销售记录
export function addSalesRecord(data) {
  return request({
    url: '/pharmacy/salesRecord',
    method: 'post',
    data: data
  })
}

// 修改销售记录
export function updateSalesRecord(data) {
  return request({
    url: '/pharmacy/salesRecord',
    method: 'put',
    data: data
  })
}

// 删除销售记录
export function delSalesRecord(id) {
  return request({
    url: '/pharmacy/salesRecord/' + id,
    method: 'delete'
  })
}

// 导出销售记录
export function exportSalesRecord(query) {
  return request({
    url: '/pharmacy/salesRecord/export',
    method: 'get',
    params: query
  })
}