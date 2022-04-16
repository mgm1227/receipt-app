class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '小口現金' },
    { id: 3, name: '交通費' },
    { id: 4, name: '領収書' },
    { id: 5, name: '支払手数料' }
  ]
  include ActiveHash::Associations
  has_many :receipts
end
