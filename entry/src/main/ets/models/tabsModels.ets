export interface TabsModels{
  title:string
  icon:Resource
  activeIcon:Resource
}

export const tabsModels:TabsModels[]=[
  {
    title:'单词',
    icon:$rawfile('words.png'),
    activeIcon:$rawfile('activeWords.png')
  },
  {
    title:'课程',
    icon:$rawfile('sources.png'),
    activeIcon:$rawfile('activeSources.png')
  },
  {
    title:'发现',
    icon:$rawfile('find.png'),
    activeIcon:$rawfile('activeFind.png')
  },
  {
    title:'我的',
    icon:$rawfile('personal.png'),
    activeIcon:$rawfile('activePersonal.png')
  },

]