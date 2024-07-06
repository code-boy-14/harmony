export interface WordsTestModel{
  img:Resource
  title:string
}

export const wordsTestModel:WordsTestModel[]=[
  {
    img:$rawfile('chinese.png'),
    title:'选中'
  },
  {
    img:$rawfile('write.png'),
    title:'拼写'
  },
  {
    img:$rawfile('english.png'),
    title:'选英'
  },
  {
    img:$rawfile('walkman.png'),
    title:'听写'
  },

]