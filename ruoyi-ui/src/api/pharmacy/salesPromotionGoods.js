import request from '@/utils/request'

// 查询促销商品列表
export function listGoods(query) {
  return request({
    url: '/pharmacy/salesPromotionGoods/list',
    method: 'get',
    params: query
  })
}

// 查询促销商品详细
export function getGoods(id) {
  return request({
    url: '/pharmacy/salesPromotionGoods/' + id,
    method: 'get'
  })
}

// 新增促销商品
export function addGoods(data) {
  return request({
    url: '/pharmacy/goods',
    method: 'post',
    data: data
  })
}

// 修改促销商品
export function updateGoods(data) {
  return request({
    url: '/pharmacy/salesPromotionGoods',
    method: 'put',
    data: data
  })
}

// 删除促销商品
export function delGoods(id) {
  return request({
    url: '/pharmacy/salesPromotionGoods/' + id,
    method: 'delete'
  })
}

// 导出促销商品
export function exportGoods(query) {
  return request({
    url: '/pharmacy/salesPromotionGoods/export',
    method: 'get',
    params: query
  })
}
