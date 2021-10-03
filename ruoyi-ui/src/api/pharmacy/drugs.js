import request from '@/utils/request'

// 查询处方药品列表
export function listDrugs(query) {
  return request({
    url: '/pharmacy/drugs/list',
    method: 'get',
    params: query
  })
}

// 查询处方药品详细
export function getDrugs(id) {
  return request({
    url: '/pharmacy/drugs/' + id,
    method: 'get'
  })
}

// 新增处方药品
export function addDrugs(data) {
  return request({
    url: '/pharmacy/drugs',
    method: 'post',
    data: data
  })
}

// 修改处方药品
export function updateDrugs(data) {
  return request({
    url: '/pharmacy/drugs',
    method: 'put',
    data: data
  })
}

// 删除处方药品
export function delDrugs(id) {
  return request({
    url: '/pharmacy/drugs/' + id,
    method: 'delete'
  })
}

// 导出处方药品
export function exportDrugs(query) {
  return request({
    url: '/pharmacy/drugs/export',
    method: 'get',
    params: query
  })
}