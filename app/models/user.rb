# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :foods
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
