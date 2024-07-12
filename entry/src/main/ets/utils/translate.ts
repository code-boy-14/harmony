import axios from '@ohos/axios'
import { JSON } from '@kit.ArkTS'
import { CommonShapeMethod } from '@ohos.arkui.shape'

const token="3975l6lr5pcbvidl6jl2"

//创建axios的实例
const instance = axios.create({
  //基路径，要看API帮助文档的特征来确定基路径
  baseURL: 'http://api.interpreter.caiyunai.com/v1/translator',
  timeout: 5000, //请求超时的时间
  headers:{"content-type": "application/json",
    "x-authorization": "token " + token},
  method:'post',
  // data:transPara
})

//响应拦截器，通过响应拦截器进一步对返回的数据做处理
instance.interceptors.response.use((response) => {
  //只返回接口有数据的结果
  if (200 === response.status) {
    console.log(JSON.stringify(response))
    return response.data; //接口返回的数据
  }
  return Promise.reject(response); //表示请求有错，交给catch来处理结构
}, err => {
  return Promise.reject(err)
})

export default instance