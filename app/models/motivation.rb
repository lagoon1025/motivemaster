class Motivation < ActiveHash::Base

  self.data = [
               {id: 0, name: '--'}, {id: 1, name: '楽しい'}, {id: 2, name: '普通'}, 
               {id: 3, name: '悲しい'}
              ]
end