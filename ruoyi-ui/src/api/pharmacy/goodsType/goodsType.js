import request from '@/utils/request'

// 查询商品类别列表
export function listGoodsType(query) {
  return request({
    url: 'pharmacy/goodsType/list',
    method: 'get',
    params: query
  })
}

// 查询商品类别详细
export function getGoodsType(id) {
  return request({
    url: '/pharmacy/goodsType/' + id,
    method: 'get'
  })
}

// 新增商品类别
export function addGoodsType(data) {
  return request({
    url: '/pharmacy/goodsType',
    method: 'post',
    data: data
  })
}

// 修改商品类别
export function updateGoodsType(data) {
  return request({
    url: '/pharmacy/goodsType',
    method: 'put',
    data: data
  })
}

// 删除商品类别
export function delGoodsType(id) {
  return request({
    url: '/pharmacy/goodsType/' + id,
    method: 'delete'
  })
}

// 导出商品类别
export function exportGoodsType(query) {
  return request({
    url: '/pharmacy/goodsType/export',
    method: 'get',
    params: query
  })
}
