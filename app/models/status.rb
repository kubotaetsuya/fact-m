class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ボーカル' },
    { id: 3, name: 'ベース' },
    { id: 4, name: 'ギター' },
    { id: 5, name: 'ドラム' },
    { id: 6, name: '管楽器' },
    { id: 7, name: '作詞作曲、アレンジャー' },
    { id: 8, name: 'ピアノ・キーボード' },
    { id: 9, name: 'パーカッション' },
    { id: 10, name: '弦楽器' },
    { id: 11, name: 'DJ' },
    { id: 12, name: 'ダンサー' },
    { id: 13, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :users

end
