import { commodityModel } from './commodityModel'
import { classModel } from './classModel'
import { ChoicenessModels } from './choicenessModels'
import { KaoyanTabsModels } from './kaoyanTabsModels'

export interface ReqCommodityModel {
  data: commodityModel[]
}

export interface ReqClassModel {
  data: classModel[]
}

export interface ReqChoicenessModel{
  data:ChoicenessModels[]
}

export interface  ReqKaoyanModel{
  data:KaoyanTabsModels[]
}