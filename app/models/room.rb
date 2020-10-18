class Room < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :motivation

  has_many :room_users
  has_many :users, through: :room_users, dependent: :destroy
  has_many :messages, dependent: :destroy  

  
  # validates :name, presence: true
  # validates :motivation_id, presence: true
  # validates :days, presence: true

end
