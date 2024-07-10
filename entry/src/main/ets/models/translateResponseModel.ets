import { TranslateDataModel } from './translateDataModel'

export interface TranslateResponseModel{
  code:number
  msg:string
  data:TranslateDataModel
}