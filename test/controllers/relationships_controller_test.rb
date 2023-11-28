require "test_helper"

class RelationshipsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/relationships.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Relationship.count, data.length
  end

  test "create" do
    assert_difference "Relationship.count", 1 do
      post "/relationships.json", params: { follower_id: 1, leader_id: 1 }
      assert_response 200
    end
  end

  test "show" do
    get "/relationships/#{Relationship.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "leader_id", "follower_id", "created_at", "updated_at"], data.keys
  end

  test "destroy" do
    assert_difference "Relationship.count", -1 do
      delete "/relationships/#{Relationship.first.id}.json"
      assert_response 200
    end
  end
end
