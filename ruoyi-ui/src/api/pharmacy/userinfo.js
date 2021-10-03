import request from '@/utils/request'

// 查询用户信息列表
export function listUserinfo(query) {
  return request({
    url: '/pharmacy/userinfo/list',
    method: 'get',
    params: query
  })
}

// 查询用户信息详细
export function getUserinfo(id) {
  return request({
    url: '/pharmacy/userinfo/' + id,
    method: 'get'
  })
}

// 新增用户信息
export function addUserinfo(data) {
  return request({
    url: '/pharmacy/userinfo',
    method: 'post',
    data: data
  })
}

// 修改用户信息
export function updateUserinfo(data) {
  return request({
    url: '/pharmacy/userinfo',
    method: 'put',
    data: data
  })
}

// 删除用户信息
export function delUserinfo(id) {
  return request({
    url: '/pharmacy/userinfo/' + id,
    method: 'delete'
  })
}

// 导出用户信息
export function exportUserinfo(query) {
  return request({
    url: '/pharmacy/userinfo/export',
    method: 'get',
    params: query
  })
}