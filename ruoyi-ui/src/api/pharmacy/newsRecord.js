import request from '@/utils/request'

// 查询消息记录列表
export function listNewsRecord(query) {
  return request({
    url: '/pharmacy/newsRecord/list',
    method: 'get',
    params: query
  })
}

// 查询消息记录详细
export function getNewsRecord(id) {
  return request({
    url: '/pharmacy/newsRecord/' + id,
    method: 'get'
  })
}

// 新增消息记录
export function addNewsRecord(data) {
  return request({
    url: '/pharmacy/newsRecord',
    method: 'post',
    data: data
  })
}

// 修改消息记录
export function updateNewsRecord(data) {
  return request({
    url: '/pharmacy/newsRecord',
    method: 'put',
    data: data
  })
}

// 删除消息记录
export function delNewsRecord(id) {
  return request({
    url: '/pharmacy/newsRecord/' + id,
    method: 'delete'
  })
}

// 导出消息记录
export function exportNewsRecord(query) {
  return request({
    url: '/pharmacy/newsRecord/export',
    method: 'get',
    params: query
  })
}