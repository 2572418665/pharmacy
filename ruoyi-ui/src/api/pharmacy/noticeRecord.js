import request from '@/utils/request'

// 查询公告记录列表
export function listNoticeRecord(query) {
  return request({
    url: '/pharmacy/noticeRecord/list',
    method: 'get',
    params: query
  })
}

// 查询公告记录详细
export function getNoticeRecord(id) {
  return request({
    url: '/pharmacy/noticeRecord/' + id,
    method: 'get'
  })
}

// 新增公告记录
export function addNoticeRecord(data) {
  return request({
    url: '/pharmacy/noticeRecord',
    method: 'post',
    data: data
  })
}

// 修改公告记录
export function updateNoticeRecord(data) {
  return request({
    url: '/pharmacy/noticeRecord',
    method: 'put',
    data: data
  })
}

// 删除公告记录
export function delNoticeRecord(id) {
  return request({
    url: '/pharmacy/noticeRecord/' + id,
    method: 'delete'
  })
}

// 导出公告记录
export function exportNoticeRecord(query) {
  return request({
    url: '/pharmacy/noticeRecord/export',
    method: 'get',
    params: query
  })
}