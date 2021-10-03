import request from '@/utils/request'

// 查询消息列表
export function listNews(query) {
  return request({
    url: '/pharmacy/news/list',
    method: 'get',
    params: query
  })
}

// 查询消息详细
export function getNews(id) {
  return request({
    url: '/pharmacy/news/' + id,
    method: 'get'
  })
}

// 新增消息
export function addNews(data) {
  return request({
    url: '/pharmacy/news',
    method: 'post',
    data: data
  })
}

// 修改消息
export function updateNews(data) {
  return request({
    url: '/pharmacy/news',
    method: 'put',
    data: data
  })
}

// 删除消息
export function delNews(id) {
  return request({
    url: '/pharmacy/news/' + id,
    method: 'delete'
  })
}

// 导出消息
export function exportNews(query) {
  return request({
    url: '/pharmacy/news/export',
    method: 'get',
    params: query
  })
}