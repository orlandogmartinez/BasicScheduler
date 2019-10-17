class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_events
  has_many :created_events, class_name: 'Event', foreign_key: 'user_id'
  has_many :events, through: :user_events
end
