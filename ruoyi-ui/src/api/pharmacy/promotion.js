import request from '@/utils/request'

// 查询促销方案列表
export function listPromotion(query) {
  return request({
    url: '/pharmacy/promotion/list',
    method: 'get',
    params: query
  })
}

// 查询促销方案详细
export function getPromotion(id) {
  return request({
    url: '/pharmacy/promotion/' + id,
    method: 'get'
  })
}

// 新增促销方案
export function addPromotion(data) {
  return request({
    url: '/pharmacy/promotion',
    method: 'post',
    data: data
  })
}

// 修改促销方案
export function updatePromotion(data) {
  return request({
    url: '/pharmacy/promotion',
    method: 'put',
    data: data
  })
}

// 删除促销方案
export function delPromotion(id) {
  return request({
    url: '/pharmacy/promotion/' + id,
    method: 'delete'
  })
}

// 导出促销方案
export function exportPromotion(query) {
  return request({
    url: '/pharmacy/promotion/export',
    method: 'get',
    params: query
  })
}