import axios from '@ohos/axios'

//创建axios的实例
const instance = axios.create({
  //基路径，要看API帮助文档的特征来确定基路径
  baseURL: 'http://localhost:9527/',
  timeout: 5000, //请求超时的时间
})

//响应拦截器，通过响应拦截器进一步对返回的数据做处理
instance.interceptors.response.use((response) => {
  //只返回接口有数据的结果
  if (200 === response.status) {
    return response.data; //接口返回的数据
  }
  return Promise.reject(response); //表示请求有错，交给catch来处理结构
}, err => {
  return Promise.reject(err)
})

export default instance