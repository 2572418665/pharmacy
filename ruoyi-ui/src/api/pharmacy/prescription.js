import request from '@/utils/request'

// 查询处方列表
export function listPrescription(query) {
  return request({
    url: '/pharmacy/prescription/list',
    method: 'get',
    params: query
  })
}

// 查询处方详细
export function getPrescription(id) {
  return request({
    url: '/pharmacy/prescription/' + id,
    method: 'get'
  })
}

// 新增处方
export function addPrescription(data) {
  return request({
    url: '/pharmacy/prescription',
    method: 'post',
    data: data
  })
}

// 修改处方
export function updatePrescription(data) {
  return request({
    url: '/pharmacy/prescription',
    method: 'put',
    data: data
  })
}

// 删除处方
export function delPrescription(id) {
  return request({
    url: '/pharmacy/prescription/' + id,
    method: 'delete'
  })
}

// 导出处方
export function exportPrescription(query) {
  return request({
    url: '/pharmacy/prescription/export',
    method: 'get',
    params: query
  })
}