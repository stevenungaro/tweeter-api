# User.create!([
#   { name: “Van” },
#   { name: “Ann” },
#   { name: “Steven” },
# ])

Relationship.create(leader_id: 1, follower_id: 2)
Relationship.create(leader_id: 1, follower_id: 3)
Relationship.create(leader_id: 2, follower_id: 1)
Relationship.create(leader_id: 2, follower_id: 3)
Relationship.create(leader_id: 3, follower_id: 1)
Relationship.create(leader_id: 3, follower_id: 2)
