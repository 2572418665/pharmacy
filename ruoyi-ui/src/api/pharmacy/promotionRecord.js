import request from '@/utils/request'

// 查询促销方案修改记录列表
export function listPromotionRecord(query) {
  return request({
    url: '/pharmacy/promotionRecord/list',
    method: 'get',
    params: query
  })
}

// 查询促销方案修改记录详细
export function getPromotionRecord(id) {
  return request({
    url: '/pharmacy/promotionRecord/' + id,
    method: 'get'
  })
}

// 新增促销方案修改记录
export function addPromotionRecord(data) {
  return request({
    url: '/pharmacy/promotionRecord',
    method: 'post',
    data: data
  })
}

// 修改促销方案修改记录
export function updatePromotionRecord(data) {
  return request({
    url: '/pharmacy/promotionRecord',
    method: 'put',
    data: data
  })
}

// 删除促销方案修改记录
export function delPromotionRecord(id) {
  return request({
    url: '/pharmacy/promotionRecord/' + id,
    method: 'delete'
  })
}

// 导出促销方案修改记录
export function exportPromotionRecord(query) {
  return request({
    url: '/pharmacy/promotionRecord/export',
    method: 'get',
    params: query
  })
}