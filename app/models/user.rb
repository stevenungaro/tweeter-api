class User < ApplicationRecord
  has_many :follower_relationships, class_name: "Relationship", foreign_key: "leader_id"
  has_many :followers, through: :follower_relationships, source: :follower
  has_many :leader_relationships, class_name: "Relationship", foreign_key: "follower_id"
  has_many :leaders, through: :leader_relationships, source: :leader
end
