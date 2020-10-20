class Motivation < ActiveHash::Base

  self.data = [
    {id: 0, name: '普通', point: 0}, 
    {id: 1, name: '楽しい', point: 1},
    {id: 2, name: 'とても楽しい', point: 2},
    {id: 3, name: '悲しい', point: -1},
    {id: 4, name: 'とても悲しい', point: -2},
   ]
end